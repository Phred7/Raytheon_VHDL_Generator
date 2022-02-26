###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import codecs
import glob
import multiprocessing
import os
import shutil
import subprocess
import sys
from copy import deepcopy
import time
from typing import List

from instrumentation_strategy import InstrumentationStrategy
from int_overflow_attack import IntOverflowAttack
from static_utilities import StaticUtilities
from multiprocessing import Process, Queue


class Instrumentation:
    """
    Strategy Pattern Context.
    """

    def __init__(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self.ccs_project_path: str = ""
        self.ccs_project_name: str = ""
        self.ccs_project_source_file_name: str = ""
        self._c_lang_bool: bool = True if ".c" in self.ccs_project_source_file_name else False
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
        :param instrumentation_strategy: New concrete strategy object to replace with the current.
        :return: None.
        """
        self._instrumentation_strategy = instrumentation_strategy

    def instrument(self) -> None:
        """
        Method that calls the algorithm or process defined by the concrete strategy.
        :return: None.
        """
        # TODO: add try/except/finally to ensure that phantom_workspace is hidden on crashed instrument()
        asm_ccs_project_main_source_file_name: str = "test_ASM.asm"
        c_ccs_project_main_source_file_name: str = "c_blank.c"

        c_lang_bool: bool = True  # TODO: make this a field in this class.

        if c_lang_bool:
            self.set_ccs_project_details(
                ccs_project_path=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\c_blank\\",
                ccs_project_name="c_blank", ccs_project_source_file_name="c_blank.c")
        else:
            self.set_ccs_project_details(
                ccs_project_path=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\test_ASM\\",
                ccs_project_name="test_ASM", ccs_project_source_file_name="test_ASM.asm")

        self._ccs_fields_empty()

        try:
            self._phantom_is_hidden = StaticUtilities.un_hide_directory_recursively(
                directory=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\", log=False,
                leave_root_hidden=True)

            # generate phantom workspace and project/s
            self._generate_phantom_workspace_and_projects()

            # copy source from CCS project into phantom project
            # self._update_phantom_source(c_lang=c_lang_bool)

            # instrument file
            instrumentation_result: bool = self._instrumentation_strategy.instrument(
                file=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\{'phantom_c' if c_lang_bool else 'phantom'}\phantom{'_c.c' if c_lang_bool else '.asm'}")

            instrumentation_result = True
            if instrumentation_result:
                StaticUtilities.logger.debug(f"Instrumentation on {self.ccs_project_source_file_name} succeeded")
                # build phantom project
                self._build_phantom_project(c_lang_bool=c_lang_bool)

                # copy binary and dependencies to actual ccs project
                single_time_start = time.time()
                self._copy_phantom_binary_and_dependencies_to_ccs_project(c_lang_bool=c_lang_bool)
                single_time_end = time.time()
                StaticUtilities.logger.debug(
                    f"Standard file copy elapsed time: {single_time_end - single_time_start}")
            else:
                StaticUtilities.logger.debug(f"Instrumentation on {self.ccs_project_source_file_name} failed")

        finally:
            self._phantom_is_hidden = StaticUtilities.hide_directory_recursively(
                directory=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\", log=False)
        return

    def _update_phantom_source(self, *, c_lang: bool = False) -> None:
        StaticUtilities.str_should_contain_substring(self.ccs_project_source_file_name, ".asm" if not c_lang else ".c")
        if c_lang:
            shutil.copyfile(f"{self.ccs_project_path}/{self.ccs_project_source_file_name}",
                            f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_c/phantom.c")
        else:
            shutil.copyfile(f"{self.ccs_project_path}/{self.ccs_project_source_file_name}",
                            f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom/phantom.asm")
        StaticUtilities.logger.debug(f"Phantom source updated with source from {self.ccs_project_name}")

    def _copy_phantom_binary_and_dependencies_to_ccs_project(self, c_lang_bool: bool = False, log: bool = False):
        # TODO: multiprocess the copying of each file
        with StaticUtilities.change_dir(
                f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if c_lang_bool else 'phantom'}\\Debug\\"):
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
        return

    # def _multiprocess_copy_phantom_binary_and_dependencies_to_ccs_project(self, c_lang_bool: bool = False) -> None:
    #     with StaticUtilities.change_dir(
    #             f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if c_lang_bool else 'phantom'}\\Debug\\"):
    #         processes: List[Process] = []
    #         for file_name in os.listdir():
    #             if "_tmp" in file_name:
    #                 continue
    #             if f"phantom" in file_name:
    #                 new_name: str = ""
    #                 if "phantom_c" in file_name:
    #                     new_name = file_name.replace("phantom_c", self.ccs_project_name)
    #                 else:
    #                     new_name = file_name.replace("phantom", self.ccs_project_name)
    #                 processes.append((multiprocessing.Process(target=self.copy_file_from_phantom_to_ccs_project, args=(f"{os.getcwd()}\\{file_name}", f"{self.ccs_project_path}VHDLGenerator\\{new_name}",), name=f"phantom copy process: {new_name}")))
    #             else:
    #                 processes.append((multiprocessing.Process(target=self.copy_file_from_phantom_to_ccs_project, args=(f"{os.getcwd()}\\{file_name}", f"{self.ccs_project_path}VHDLGenerator\\{file_name}",), name=f"phantom copy process: {file_name}")))
    #         for process in processes:
    #             process.start()
    #         for process in processes:
    #             process.join()
    #     return

    def copy_file_from_phantom_to_ccs_project(self, source: str, destination: str, *, logging: bool = False) -> None:
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
            if StaticUtilities.file_should_exist(file_directory=destination_path, file=destination_with_extension, raise_error=False):
                StaticUtilities.logger.debug(
                    f"Successfully copied {source_with_extension} to {destination_with_extension}")
            else:
                StaticUtilities.logger.debug(
                    f"Failed to copy {source_with_extension} to {destination_with_extension}")
        return

    @staticmethod
    def _generate_phantom_workspace_and_projects() -> None:
        if not StaticUtilities.file_should_exist(
                file_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/RemoteSystemsTempFiles/",
                file=".project", raise_error=False):
            StaticUtilities.extract_zip(path_to_zip=f"{StaticUtilities.project_root_directory()}/phantom_workspace.zip",
                                        extraction_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/")
            StaticUtilities.logger.debug(f"Phantom workspace generated")

    @staticmethod
    def _build_phantom_project(c_lang_bool: bool) -> None:
        # commands: eclipsec -noSplash -data "C:\myWorkspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects newProject -ccs.configuration Debug
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_generated_ASM -ccs.configuration Debug
        # eclipse executable dir: C:\ti\ccs1040\ccs\eclipse
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\phantom_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects phantom_c -ccs.configuration Debug -ccs.autoImport
        # -ccs.autoImport
        workspace_dir: str = rf"{StaticUtilities.project_root_directory()}\ccs_workspace\phantom_workspace"
        quote: str = "\""
        with StaticUtilities.change_dir(r"C:\ti\ccs1040\ccs\eclipse"):
            subprocess.run(
                rf"eclipsec -noSplash -data {quote}{workspace_dir}{quote} -application com.ti.ccstudio.apps.projectBuild -ccs.projects {'phantom_c' if c_lang_bool else 'phantom'} -ccs.configuration Debug -ccs.autoImport -ccs.buildType full",
                stdout=subprocess.DEVNULL,
                stderr=subprocess.STDOUT)
        StaticUtilities.logger.debug(f"Phantom {'C' if c_lang_bool else 'ASM'} project done building")

    def _ccs_fields_empty(self, *, logger_error: bool = True, system_error: bool = True) -> bool:
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
                    f"The following were set to the empty string when attempting to replace the source file in a ccs project with a generated source file: {empty_strings} in this instance of {self.__class__.__name__}. Call {self.__class__.__name__}.set_ccs_project_details() to rectify or set replace_source_in_ccs_project to false when calling {self.__class__.__name__}.{self._update_phantom_source.__name__}().")
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


if __name__ == "__main__":
    i = Instrumentation(instrumentation_strategy=IntOverflowAttack())
    i.instrument()
