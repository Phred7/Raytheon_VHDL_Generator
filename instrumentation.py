"""
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
import codecs
import os
import pathlib
import shutil
import subprocess
import sys
from copy import deepcopy

from ccs_project import CCSProject, ProjectType, file_extension
from instrumentation_strategy import InstrumentationStrategy
from instrument_int_overflow_attack import IntOverflowAttack
from static_utilities import StaticUtilities


class Instrumentation:
    """
    Strategy Pattern Context.
    """

    def __init__(self, project: CCSProject, instrumentation_strategy: InstrumentationStrategy) -> None:
        self.project = project
        self.phantom_project: CCSProject = CCSProject(
            path=pathlib.Path(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if self.project.c_project() else 'phantom'}"),
            project_name=f"{'phantom_c' if self.project.c_project() else 'phantom'}",
            source_file=f"{'phantom_c.c' if self.project.c_project() else 'phantom.asm'}")
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
        # TODO: should instrumentation copy phantom project to ccs project... then somehow point everything to a 'temp_file' with the instrumented version of the code in the same directory... the code could be built referencing that temp file rather than the phantom project.
        StaticUtilities.logger.debug("**** Instrumentation Build Started ****")
        phantom_workspace_path: pathlib.Path = StaticUtilities.project_root_directory() / 'ccs_workspace' / 'phantom_workspace'
        try:
            # TODO: make the phantom workspace use a random name only known to instrumentation every time. Nuke the dir after instrumenting... regardless of success.
            # TODO: rather than building the phantom project why not build the phantom project to verify that no errors exist and then copy just the src back to the original and build again there.

            # un hide the phantom workspace - skipping this step may cause permission issues
            self._phantom_is_hidden = StaticUtilities.multiprocess_hide_directory(
                directory=pathlib.Path(phantom_workspace_path), hide=False)
            StaticUtilities.logger.debug("Phantom workspace unhidden")
            # generate phantom workspace and project/s
            self.__generate_phantom_workspace_and_projects__()
            # copy source from CCS project into phantom project
            self.__update_phantom_source__()

            # instrument file
            instrumentation_result: bool = self._instrumentation_strategy.instrument(
                f"{self.phantom_project.path}\\{self.phantom_project.source_file}")

            if instrumentation_result:
                StaticUtilities.logger.debug(f"Instrumentation on {self.project.source_file} succeeded")
                # build phantom project
                self.__build_phantom_project__()
                # copy binary and dependencies to actual ccs project
                # self.__copy_phantom_binary_and_dependencies_to_ccs_project__()
                # copy src code from phantom and backup original
                shutil.copyfile(f"{self.project.path}\\{self.project.source_file}",
                                f"{self.project.path}\\{self.project.source_file}.bak")
                shutil.copyfile(f"{self.phantom_project.path}\\{self.phantom_project.source_file}",
                                f"{self.project.path}\\{self.project.source_file}")
            else:
                StaticUtilities.logger.debug(f"Instrumentation on {self.project.source_file} failed")

        finally:
            self._phantom_is_hidden = StaticUtilities.multiprocess_hide_directory(
                directory=phantom_workspace_path, hide=True)
            StaticUtilities.logger.debug("Phantom workspace hidden")
        if instrumentation_result:
            self.build_ccs_project(self.project)
        StaticUtilities.logger.debug("**** Instrumentation Build Finished ****")
        # TODO: modify to reflect changes detailed in "Implementation of Instrumentation" in Capstone portfolio
        return

    def __update_phantom_source__(self) -> None:
        """
        Replaces the source file in the phantom project of the right language with the source file from a ccs project.
        """
        StaticUtilities.str_should_contain_substring(self.project.source_file,
                                                     file_extension[self.project.project_type])
        if self.project.c_project():
            shutil.copyfile(f"{self.project.path}/{self.project.source_file}",
                            f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\phantom_c\\phantom_c.c")
        else:
            shutil.copyfile(f"{self.project.path}/{self.project.source_file}",
                            f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\phantom\\phantom.asm")
        StaticUtilities.logger.debug(f"Phantom source updated with source from {self.project.project_name}")
        return

    def __copy_phantom_binary_and_dependencies_to_ccs_project__(self, log: bool = False):
        """
        Copies binary and dependencies from a phantom project of the correct langauge to a destination ccs project.
        :param log: determines whether this method should write logs.
        """
        with StaticUtilities.change_dir(
                pathlib.Path(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if self.project.c_project() else 'phantom'}\\Debug\\")):
            for file_name in os.listdir():
                if "_tmp" in file_name:
                    continue
                if f"phantom" in file_name:
                    new_name: str = ""
                    if "phantom_c" in file_name:
                        new_name = file_name.replace("phantom_c", self.project.project_name)
                    else:
                        new_name = file_name.replace("phantom", self.project.project_name)
                    self.__copy_file_from_phantom_to_ccs_project__(f"{os.getcwd()}\\{file_name}",
                                                                   f"{self.project.path}\\VHDLGenerator\\{new_name}")
                    if log:
                        StaticUtilities.logger.debug(
                            f"Copied phantom {file_name} to {self.project.project_name} as {new_name}")
                else:
                    self.__copy_file_from_phantom_to_ccs_project__(f"{os.getcwd()}\\{file_name}",
                                                                   f"{self.project.path}\\VHDLGenerator\\{file_name}")
                    if log:
                        StaticUtilities.logger.debug(f"Copied phantom {file_name} to {self.project.project_name}")
        StaticUtilities.logger.debug(
            f"Phantom {'C' if self.project.c_project() else 'ASM'} build copied to {self.project.project_name}")
        return

    @staticmethod
    def __copy_file_from_phantom_to_ccs_project__(source: str, destination: str, *, logging: bool = False) -> None:
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
        source_path: pathlib.Path = pathlib.Path(source.replace(f"\\{source_with_extension}", ""))
        destination_extension: str = destination.split('\\')[-1].split('.')[-1] if "." in destination.split('\\')[
            -1] else ""
        destination_name: str = destination.split('\\')[-1].split('.')[0]
        destination_with_extension: str = destination_name + (
            f".{destination_extension}" if destination_extension != "" else "")
        destination_path: pathlib.Path = pathlib.Path(destination.replace(f"\\{destination_with_extension}", ""))
        temp_name_extension: str = "_tmp"

        shutil.copyfile(source, f"{source_name}{temp_name_extension}.{source_extension}")

        temp_file_replacement_text: str = ""

        # TODO: figure out a way to condense the following... code should NOT be repeated. Maybe use an iterable.
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
            if StaticUtilities.file_exists(file_directory=destination_path, file=destination_with_extension):
                StaticUtilities.logger.debug(
                    f"Successfully copied {source_with_extension} to {destination_with_extension}")
            else:
                StaticUtilities.logger.debug(
                    f"Failed to copy {source_with_extension} to {destination_with_extension}")
        return

    @staticmethod
    def __generate_phantom_workspace_and_projects__() -> None:
        """
        Generates the phantom workspace if it does not already exist.
        """
        if not StaticUtilities.file_exists(
                file_directory=pathlib.Path(f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/RemoteSystemsTempFiles/"),
                file=".project"):
            StaticUtilities.logger.debug(f"Phantom workspace missing")
            StaticUtilities.extract_zip(path_to_zip=pathlib.Path(f"{StaticUtilities.project_root_directory()}/phantom_workspace.zip"),
                                        extraction_directory=pathlib.Path(f"{StaticUtilities.project_root_directory()}/ccs_workspace/"))
            StaticUtilities.logger.debug(f"Phantom workspace generated")
        return

    def __build_phantom_project__(self) -> None:
        """
        Builds the phantom project of the language specified by this c_lang_bool.
        TODO: make a function in StaticUtilities that lets you build a ccs project rather than using this method.
        """
        # commands: eclipsec -noSplash -data "C:\myWorkspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects newProject -ccs.configuration Debug
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_generated_ASM -ccs.configuration Debug
        # eclipse executable dir: C:\ti\ccs1040\ccs\eclipse
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\phantom_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects phantom_c -ccs.configuration Debug -ccs.autoImport
        # -ccs.autoImport
        workspace_dir: str = rf"{StaticUtilities.project_root_directory()}\ccs_workspace\phantom_workspace"
        quote: str = "\""
        with StaticUtilities.change_dir(pathlib.Path(r"C:\ti\ccs1040\ccs\eclipse")):
            subprocess.run(
                rf"eclipsec -noSplash -data {quote}{workspace_dir}{quote} -application com.ti.ccstudio.apps.projectBuild -ccs.projects {'phantom_c' if self.project.c_project() else 'phantom'} -ccs.configuration Debug -ccs.autoImport -ccs.buildType full",
                stdout=subprocess.DEVNULL,
                stderr=subprocess.STDOUT)
        StaticUtilities.logger.debug(f"Phantom {'C' if self.project.c_project() else 'ASM'} project done building")
        return

    def build_ccs_project(self, ccs_project: CCSProject) -> None:
        workspace_dir: str = rf"{ccs_project.path}"
        quote: str = "\""
        with StaticUtilities.change_dir(pathlib.Path(r"C:\ti\ccs1040\ccs\eclipse")):
            subprocess.run(
                rf"eclipsec -noSplash -data {quote}{workspace_dir}{quote} -application com.ti.ccstudio.apps.projectBuild -ccs.projects {ccs_project.project_name} -ccs.configuration Debug -ccs.autoImport -ccs.buildType full",
                stdout=subprocess.DEVNULL,
                stderr=subprocess.STDOUT)
        StaticUtilities.logger.debug(f"{ccs_project.project_name} project done building")
        return


if __name__ == "__main__":
    # asm_ccs_project_main_source_file_name: str = "test_ASM.asm"
    asm_project: CCSProject = CCSProject(project_name=f"test_ASM", source_file="test_ASM.asm",
                                         path=pathlib.Path(rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_ASM"))
    c_project: CCSProject = CCSProject(project_name=f"c_blank", source_file="c_blank.c",
                                       path=pathlib.Path(rf"{StaticUtilities.project_root_directory()}\ccs_workspace\c_blank"))
    i = Instrumentation(c_project, instrumentation_strategy=IntOverflowAttack())
    i.instrument()
