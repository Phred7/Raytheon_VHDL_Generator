###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import codecs
import os
import shutil
import subprocess
import sys
from copy import deepcopy

from instrumentation_strategy import InstrumentationStrategy
from int_overflow_attack import IntOverflowAttack
from static_utilities import StaticUtilities


class Instrumentation:
    """
    Strategy Pattern Context.
    TODO: private methods should be indicated with a dunder (double underscore)
    """

    def __init__(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self.ccs_project_path: str = ""
        self.ccs_project_name: str = ""
        self.ccs_project_source_file_name: str = ""
        self.c_lang_bool: bool = False
        self._phantom_is_hidden: bool = True
        self._instrumentation_strategy = instrumentation_strategy
        if instrumentation_strategy is None:
            StaticUtilities.logger.warning(
                f"{Instrumentation.__name__} object initialized without ConcreteInstrumentationStrategy")

    @property
    def instrumentation_strategy(self) -> InstrumentationStrategy:
        """
        Property representing the type of Concrete Strategy that this object contains a reference to.
        :return: The type of Concrete Strategy that this object contains a reference to.
        """
        return self._instrumentation_strategy

    @instrumentation_strategy.setter
    def instrumentation_strategy(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        """
        Allows the concrete strategy object to be replaced at runtime.
        param instrumentation_strategy: New concrete strategy object to replace with the current.
        :return: None.
        """
        self._instrumentation_strategy = instrumentation_strategy
        return

    def instrument(self) -> None:
        """
        Method that calls the algorithm or process defined by the concrete strategy.
        :return: None.
        """
        if self.ccs_fields_empty():    # TODO: this method should be removed after creating a CCS project class.
            return
        # TODO: should instrumentation copy phantom project to ccs project... then somehow point everything to a 'temp_file' with the instrumented version of the code in the same directory... the code could be built referencing that temp file rather than the phantom project.
        StaticUtilities.logger.debug("**** Instrumentation Build Started ****")
        try:
            # un hide the phantom workspace - skipping this step may cause permission issues
            self._phantom_is_hidden = StaticUtilities.multiprocess_hide_directory(
                directory=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\", hide=False,
                leave_root_hidden=True)
            StaticUtilities.logger.debug("Phantom workspace unhidden")
            # generate phantom workspace and project/s
            self.generate_phantom_workspace_and_projects()
            # copy source from CCS project into phantom project
            self.update_phantom_source()
            # instrument file
            instrumentation_result: bool = self._instrumentation_strategy.instrument(
                file=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\{'phantom_c' if self.c_lang_bool else 'phantom'}\phantom{'_c.c' if self.c_lang_bool else '.asm'}")
            if instrumentation_result:
                StaticUtilities.logger.debug(f"Instrumentation on {self.ccs_project_source_file_name} succeeded")
                # build phantom project
                self.build_phantom_project()
                # copy binary and dependencies to actual ccs project
                self.copy_phantom_binary_and_dependencies_to_ccs_project()
            else:
                StaticUtilities.logger.debug(f"Instrumentation on {self.ccs_project_source_file_name} failed")

        finally:
            self._phantom_is_hidden = StaticUtilities.multiprocess_hide_directory(
                directory=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\", hide=True)
            StaticUtilities.logger.debug("Phantom workspace hidden")
        StaticUtilities.logger.debug("**** Instrumentation Build Finished ****")
        return

    def update_phantom_source(self) -> None:
        """
        Replaces the source file in the phantom project of the right language with the source file from a ccs project.
        """
        StaticUtilities.str_should_contain_substring(self.ccs_project_source_file_name, ".asm" if not self.c_lang_bool else ".c")
        if self.c_lang_bool:
            shutil.copyfile(f"{self.ccs_project_path}/{self.ccs_project_source_file_name}",
                            f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\phantom_c\\phantom_c.c")
        else:
            shutil.copyfile(f"{self.ccs_project_path}/{self.ccs_project_source_file_name}",
                            f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\phantom\\phantom.asm")
        StaticUtilities.logger.debug(f"Phantom source updated with source from {self.ccs_project_name}")
        return

    def copy_phantom_binary_and_dependencies_to_ccs_project(self, log: bool = False):
        """
        Copies binary and dependencies from a phantom project of the correct langauge to a destination ccs project.
        :param log: determines whether this method should write logs.
        """
        with StaticUtilities.change_dir(
                f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if self.c_lang_bool else 'phantom'}\\Debug\\"):
            for file_name in os.listdir():
                if "_tmp" in file_name:
                    continue
                if f"phantom" in file_name:
                    new_name: str = ""
                    if "phantom_c" in file_name:
                        new_name = file_name.replace("phantom_c", self.ccs_project_name)
                    else:
                        new_name = file_name.replace("phantom", self.ccs_project_name)
                    self.copy_file_from_phantom_to_ccs_project(f"{os.getcwd()}\\{file_name}",
                                                               f"{self.ccs_project_path}VHDLGenerator\\{new_name}")
                    if log:
                        StaticUtilities.logger.debug(
                            f"Copied phantom {file_name} to {self.ccs_project_name} as {new_name}")
                else:
                    self.copy_file_from_phantom_to_ccs_project(f"{os.getcwd()}\\{file_name}",
                                                               f"{self.ccs_project_path}VHDLGenerator\\{file_name}")
                    if log:
                        StaticUtilities.logger.debug(f"Copied phantom {file_name} to {self.ccs_project_name}")
        StaticUtilities.logger.debug(f"Phantom {'C' if self.c_lang_bool else 'ASM'} build copied to {self.ccs_project_name}")
        return

    @staticmethod
    def copy_file_from_phantom_to_ccs_project(source: str, destination: str, *, logging: bool = False) -> None:
        """
        Copies each file from the source file into the destination file. Any instance of the source path, source file name or a combination will be replaced with the respective contents in the destination file.
        Note: .out files will not be 
        :param source: Source file and path to copy.
        :param destination: Destination to copy the source file into with the file name and path.
        :param logging: Bool representing whether to log events. True logs and false does not log. False by default.
        :return: None.
        """
        source_extension: str = source.split('\\')[-1].split('.')[-1] if "." in source.split('\\')[-1] else ""
        source_name: str = source.split('\\')[-1].split('.')[0]
        source_with_extension: str = source_name + (f".{source_extension}" if source_extension != "" else "")
        source_path: str = source.replace(f"\\{source_with_extension}", "")
        destination_extension: str = destination.split('\\')[-1].split('.')[-1] if "." in destination.split('\\')[-1] else ""
        destination_name: str = destination.split('\\')[-1].split('.')[0]
        destination_with_extension: str = destination_name + (
            f".{destination_extension}" if destination_extension != "" else "")
        destination_path: str = destination.replace(f"\\{destination_with_extension}", "")
        temp_name_extension: str = "_tmp"

        shutil.copyfile(source, f"{source_name}{temp_name_extension}.{source_extension}")

        temp_file_replacement_text: str = ""

        # TODO: figure out a way to condense the following... code should NOT be repeated.
        if source_extension == "out":
            pass
        elif source_extension == "obj":
            with codecs.open(f"{source_name}{temp_name_extension}.{source_extension}", "r", "ansi") as temp_copy_file:
                for line in temp_copy_file.readlines():
                    new_line = deepcopy(line)
                    new_line = new_line.replace(f"{source}", f"{destination}")
                    new_line = new_line.replace(f"{source_path}", f"{destination_path}")
                    new_line = new_line.replace(f"{source_with_extension}",
                                                f"{destination_with_extension}")
                    new_line = new_line.replace(f"{source_name}", f"{destination_name}")
                    temp_file_replacement_text += new_line
            with codecs.open(f"{source_name}{temp_name_extension}.{source_extension}", "w", "ansi") as temp_copy_file:
                temp_copy_file.write(temp_file_replacement_text)
        else:
            with open(f"{source_name}{temp_name_extension}.{source_extension}", "r") as temp_copy_file:
                for line in temp_copy_file:
                    new_line: str = line
                    new_line = new_line.replace(f"{source}", f"{destination}")
                    new_line = new_line.replace(f"{source_path}", f"{destination_path}")
                    new_line = new_line.replace(f"{source_with_extension}", f"{destination_with_extension}")
                    new_line = new_line.replace(f"{source_name}", f"{destination_name}")
                    temp_file_replacement_text += new_line
            with open(f"{source_name}{temp_name_extension}.{source_extension}", "w") as temp_copy_file:
                temp_copy_file.write(temp_file_replacement_text)

        shutil.copyfile(f"{source_name}{temp_name_extension}.{source_extension}", destination)
        os.remove(f"{source_name}{temp_name_extension}.{source_extension}")
        if logging:
            if StaticUtilities.file_exist(file_directory=destination_path, file=destination_with_extension):
                StaticUtilities.logger.debug(
                    f"Successfully copied {source_with_extension} to {destination_with_extension}")
            else:
                StaticUtilities.logger.debug(
                    f"Failed to copy {source_with_extension} to {destination_with_extension}")
        return

    @staticmethod
    def generate_phantom_workspace_and_projects() -> None:
        """
        Generates the phantom workspace if it does not already exist.
        """
        if not StaticUtilities.file_exists(
                file_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/RemoteSystemsTempFiles/",
                file=".project"):
            StaticUtilities.logger.debug(f"Phantom workspace missing")
            StaticUtilities.extract_zip(path_to_zip=f"{StaticUtilities.project_root_directory()}/phantom_workspace.zip",
                                        extraction_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/")
            StaticUtilities.logger.debug(f"Phantom workspace generated")
        return

    def build_phantom_project(self) -> None:
        """
        Builds the phantom project of the language specified by this c_lang_bool.
        """
        # commands: eclipsec -noSplash -data "C:\myWorkspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects newProject -ccs.configuration Debug
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_generated_ASM -ccs.configuration Debug
        # eclipse executable dir: C:\ti\ccs1040\ccs\eclipse
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\phantom_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects phantom_c -ccs.configuration Debug -ccs.autoImport
        # -ccs.autoImport
        workspace_dir: str = rf"{StaticUtilities.project_root_directory()}\ccs_workspace\phantom_workspace"
        quote: str = "\""
        with StaticUtilities.change_dir(r"C:\ti\ccs1040\ccs\eclipse"):
            subprocess.run(
                rf"eclipsec -noSplash -data {quote}{workspace_dir}{quote} -application com.ti.ccstudio.apps.projectBuild -ccs.projects {'phantom_c' if self.c_lang_bool else 'phantom'} -ccs.configuration Debug -ccs.autoImport -ccs.buildType full",
                stdout=subprocess.DEVNULL,
                stderr=subprocess.STDOUT)
        StaticUtilities.logger.debug(f"Phantom {'C' if self.c_lang_bool else 'ASM'} project done building")
        return

    def ccs_fields_empty(self, *, logger_error: bool = True, system_error: bool = True) -> bool:
        """
        Checks if the three fields required to replace a file in a ccs project are set to a non-empty value.
        :param logger_error: Throws an error via the logger if any of the fields are set to the empty string.
        :param system_error: Throws a system error if any of the fields are set to the empty string.
        :return: False if self.ccs_project_path and self.ccs_project_name and self.ccs_project_source_file_name are all not the empty string, otherwise True.
        """
        if self.ccs_project_path == "" or self.ccs_project_name == "" or self.ccs_project_source_file_name == "":
            if logger_error:
                empty_strings: str = ""
                empty_strings += "'" + f"{self.ccs_project_path=}".split('.')[1].split('=')[
                    0] + "' " if self.ccs_project_path == '' else ''
                empty_strings += "'" + f"{self.ccs_project_name=}".split('.')[1].split('=')[
                    0] + "' " if self.ccs_project_name == '' else ''
                empty_strings += "'" + f"{self.ccs_project_source_file_name=}".split('.')[1].split('=')[
                    0] + "'" if self.ccs_project_source_file_name == '' else ''
                StaticUtilities.logger.error(
                    f"The following were set to the empty string when attempting to replace the source file in a ccs project with a generated source file: {empty_strings} in this instance of {self.__class__.__name__}. Call {self.__class__.__name__}.set_ccs_project_details() to rectify or set replace_source_in_ccs_project to false when calling {self.__class__.__name__}.{self.update_phantom_source.__name__}().")
            if system_error:
                return sys.exit(1)
            return True
        return False

    def set_ccs_project_details(self, ccs_project_path: str, ccs_project_name: str,
                                ccs_project_source_file_name: str = "main.asm") -> None:
        """
        Sets fields required for replacing generated assembly with source of an existing project.
        :param ccs_project_path: str path to an existing ASM CCS project.
        :param ccs_project_name: str name of an existing ASM CCS project corresponding to the provided path.
        :param ccs_project_source_file_name: str name of an existing ASM source file within the CCS project specified by the provided path.
        :return: None.
        """
        self.ccs_project_path = ccs_project_path
        self.ccs_project_name = ccs_project_name
        self.ccs_project_source_file_name = ccs_project_source_file_name
        self.c_lang_bool = True if ".c" in self.ccs_project_source_file_name else False
        return


if __name__ == "__main__":
    i = Instrumentation(instrumentation_strategy=IntOverflowAttack())

    asm_ccs_project_main_source_file_name: str = "test_ASM.asm"
    c_ccs_project_main_source_file_name: str = "c_blank.c"
    c_lang_bool: bool = True
    if c_lang_bool:
        i.set_ccs_project_details(
            ccs_project_path=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\c_blank\\",
            ccs_project_name="c_blank", ccs_project_source_file_name="c_blank.c")
    else:
        i.set_ccs_project_details(
            ccs_project_path=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\test_ASM\\",
            ccs_project_name="test_ASM", ccs_project_source_file_name="test_ASM.asm")

    i.instrument()
