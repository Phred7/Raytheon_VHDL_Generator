###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import glob
import os
import pathlib
import shutil
import subprocess
import sys

from disassembler import Disassembler
from disassembly_parser_generator import DisassemblyParserGenerator
from instrumentation_strategy import InstrumentationStrategy
from int_overflow_attack import IntOverflowAttack
from static_utilities import StaticUtilities


class Instrumentation:
    """
    Strategy Pattern Context.
    """

    def __init__(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self.disassembler = None
        # self.dpg = None
        self.ccs_project_path: str = ""
        self.ccs_project_name: str = ""
        self.ccs_project_source_file_name: str = ""
        # self.dpg: DisassemblyParserGenerator
        self._instrumentation_strategy = instrumentation_strategy
        if instrumentation_strategy is None:
            StaticUtilities.logger.warning(f"{Instrumentation.__name__} object initialized without ConcreteInstrumentationStrategy")

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
        asm_ccs_project_main_source_file_name: str = "test_ASM.asm"
        c_ccs_project_main_source_file_name: str = "c_blank.c"

        c_lang_bool: bool = True    # TODO: make this a field in this class.

        if c_lang_bool:
            self.set_ccs_project_details(ccs_project_path=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\c_blank\\", ccs_project_name="c_blank", ccs_project_source_file_name="c_blank.c")
        else:
            self.set_ccs_project_details(ccs_project_path=f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\test_ASM\\", ccs_project_name="test_ASM", ccs_project_source_file_name="test_ASM.asm")

        self._ccs_fields_empty()

        # generate phantom workspace and project/s
        self._generate_phantom_workspace_and_projects(c_lang_bool=c_lang_bool)

        # copy source from CCS project into phantom project
        # self._update_phantom_source(c_lang=c_lang_bool)

        # instrument file
        instrumentation_result: bool = self._instrumentation_strategy.instrument(file=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\{'phantom_c' if c_lang_bool else 'phantom'}\phantom{'_c.c' if c_lang_bool else '.asm'}")

        instrumentation_result = True
        if instrumentation_result:
            StaticUtilities.logger.debug(f"Instrumentation on {self.ccs_project_source_file_name} succeeded")
            # build project
            self._build_phantom_project(c_lang_bool=c_lang_bool)  # TODO: this method should take a param for what project to build. In this case it should build the source project
            # copy binary to actual ccs project
            self._copy_phantom_binary_dependencies_to_ccs_project(c_lang_bool=c_lang_bool)
            self._copy_phantom_binary_to_ccs_project(c_lang_bool=c_lang_bool)


        else:
            StaticUtilities.logger.debug(f"Instrumentation on {self.ccs_project_source_file_name} failed")

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

    def _copy_phantom_binary_to_ccs_project(self, *, c_lang_bool: bool = False) -> None:
        file: str = ""
        path: str = f"{self.ccs_project_path}Debug"
        with StaticUtilities.change_dir(path):
            for glob_file in glob.glob("*.out"):
                file = glob_file
        with StaticUtilities.change_dir(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom' if not c_lang_bool else 'phantom_c'}\\"):
            shutil.copyfile(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if c_lang_bool else 'phantom'}\\Debug\\{'phantom_c' if c_lang_bool else 'phantom'}.out", file)
            shutil.move(file, f"{path}/{file}")
        StaticUtilities.logger.debug(f"Phantom binary copied to {self.ccs_project_name}")
        return

    def _copy_phantom_binary_dependencies_to_ccs_project(self, c_lang_bool: bool = False):
        """
        DEL /F  "c_blank.hex"  "c_blank.out"
        DEL /F "c_blank.obj"
        DEL /F "c_blank.d"
        DEL /F "c_blank.asm"
        """
        with StaticUtilities.change_dir(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\{'phantom_c' if c_lang_bool else 'phantom'}\\Debug\\"):
            for file_name in os.listdir():
                new_name: str = ""
                if f"phantom" in file_name:
                    shutil.copyfile(
                        f"{file_name}", file_name.replace(f"{'phantom_c' if c_lang_bool else 'phantom'}", self.ccs_project_name))
                    new_name = file_name.replace(f"{'phantom_c' if c_lang_bool else 'phantom'}", self.ccs_project_name)
                shutil.move(new_name if new_name != "" else file_name, f"{self.ccs_project_path}/{file_name}")
                StaticUtilities.logger.debug(f"Copied phantom {file_name} to {self.ccs_project_name}" + (f"{' as ' if new_name != '' else ''}" + f"{new_name if new_name != '' else ''}"))

    @staticmethod
    def _generate_phantom_workspace_and_projects(c_lang_bool: bool) -> None:
        if not StaticUtilities.file_should_exist(file_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/RemoteSystemsTempFiles/", file=".project", raise_error=False):
            StaticUtilities.extract_zip(path_to_zip=f"{StaticUtilities.project_root_directory()}/phantom_workspace.zip", extraction_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/")
            StaticUtilities.hide_directory_recursively(
                f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\", log=False)
            StaticUtilities.logger.debug(f"Phantom workspace generated")
        if c_lang_bool:
            if not StaticUtilities.file_should_exist(file_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/phantom_c/", file="phantom.c", raise_error=False):
                StaticUtilities.extract_zip(path_to_zip=f"{StaticUtilities.project_root_directory()}/phantom_c.zip", extraction_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/")
                StaticUtilities.hide_directory_recursively(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\phantom_c\\")
                StaticUtilities.logger.debug(f"Phantom C project generated")
        else:
            if not StaticUtilities.file_should_exist(file_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/phantom/", file="phantom.asm", raise_error=False):
                StaticUtilities.extract_zip(path_to_zip=f"{StaticUtilities.project_root_directory()}/phantom.zip", extraction_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom_workspace/")
                StaticUtilities.hide_directory_recursively(f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\phantom_workspace\\phantom\\")
                StaticUtilities.logger.debug(f"Phantom ASM project generated")

    @staticmethod
    def _build_phantom_project(c_lang_bool: bool) -> None:
        # self._ccs_fields_empty()
        # subprocess.run("")
        # commands: eclipsec -noSplash -data "C:\myWorkspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects newProject -ccs.configuration Debug
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_generated_ASM -ccs.configuration Debug
        # eclipse executable dir: C:\ti\ccs1040\ccs\eclipse
        eclipse_dir: str = rf"{StaticUtilities.project_root_directory()}\ccs_workspace\phantom_workspace"
        quote: str = "\""
        with StaticUtilities.change_dir(r"C:\ti\ccs1040\ccs\eclipse"):
            subprocess.run(rf"eclipsec -noSplash -data {quote}{eclipse_dir}{quote} -application com.ti.ccstudio.apps.projectBuild -ccs.projects {'phantom_c' if c_lang_bool else 'phantom'} -ccs.configuration Debug")
        StaticUtilities.logger.debug(f"Phantom {'C' if c_lang_bool else 'ASM'} project done building")

    def set_ccs_project_details(self, ccs_project_path: str, ccs_project_name: str, ccs_project_source_file_name: str = "main.asm") -> None:
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
                empty_strings += "'" + f"{self.ccs_project_path=}".split('.')[1].split('=')[0] + "' " if self.ccs_project_path == '' else ''
                empty_strings += "'" + f"{self.ccs_project_name=}".split('.')[1].split('=')[0] + "' " if self.ccs_project_name == '' else ''
                empty_strings += "'" + f"{self.ccs_project_source_file_name=}".split('.')[1].split('=')[0] + "'" if self.ccs_project_source_file_name == '' else ''
                StaticUtilities.logger.error(
                    f"The following were set to the empty string when attempting to replace the source file in a ccs project with a generated source file: {empty_strings} in this instance of {self.__class__.__name__}. Call {self.__class__.__name__}.set_ccs_project_details() to rectify or set replace_source_in_ccs_project to false when calling {self.__class__.__name__}.{self._update_phantom_source.__name__}().")
            if system_error:
                return sys.exit(1)
            return True
        return False


if __name__ == "__main__":
    # StaticUtilities.extract_zip(path_to_zip=f"{StaticUtilities.project_root_directory()}/phantom.zip",
    #                             extraction_directory=f"{StaticUtilities.project_root_directory()}/ccs_workspace/")
    # StaticUtilities.hide_directory_recursively(f"{StaticUtilities.project_root_directory()}/ccs_workspace/phantom")
    # os.system(f"attrib +h /S /D {StaticUtilities.project_root_directory()}/ccs_workspace/phantom")
    i = Instrumentation(instrumentation_strategy=IntOverflowAttack())
    i.instrument()
    # os.remove(r"C:/Users/wward/Documents/GitHub/Raytheon_VHDL_Generator/ccs_workspace/phantom_c/")
    # i.ccs_project_path = f"{StaticUtilities.project_root_directory()}\\ccs_workspace\\gen_vhdl\\"
    # i._copy_phantom_binary_to_ccs_project()
