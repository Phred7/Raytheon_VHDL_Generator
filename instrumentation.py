###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import glob
import os
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
        # ccs_project_main_source_file_name: str = "test_generated_ASM"
        ccs_project_main_source_file_name: str = "test_C"

        c_lang_bool: bool = False
        # disassembly: bool = True
        ccs_running: bool = StaticUtilities.ccs_process_running()
        kill_ccs: bool = False

        if kill_ccs and ccs_running:
            StaticUtilities.stop_ccs(force_kill=True)
            ccs_running = False

        if not StaticUtilities.file_should_exist(file_directory=f"{os.getcwd()}/ccs_workspace/phantom_workspace"
                                                                f"/RemoteSystemsTempFiles/",
                                                 file=".project", raise_error=False):
            StaticUtilities.extract_zip(path_to_zip=f"{os.getcwd()}/phantom_workspace.zip",
                                        extraction_directory=f"{os.getcwd()}/ccs_workspace/")
            StaticUtilities.hide_directory_recursively(f"{os.getcwd()}\\ccs_workspace\\phantom_workspace\\", log=True)

        if c_lang_bool:

            if not StaticUtilities.file_should_exist(file_directory=f"{os.getcwd()}/ccs_workspace/phantom_workspace/phantom_c/",
                                                     file="phantom.c", raise_error=False):
                StaticUtilities.extract_zip(path_to_zip=f"{os.getcwd()}/phantom_c.zip",
                                            extraction_directory=f"{os.getcwd()}/ccs_workspace/phantom_workspace/")
                StaticUtilities.hide_directory_recursively(f"{os.getcwd()}\\ccs_workspace\\phantom_workspace\\phantom_c\\")

            self._update_phantom_source(c_lang=True)

            result: str = self._instrumentation_strategy.instrument(file=rf"{os.getcwd()}\ccs_workspace\phantom_c.c")

        else:
            if not StaticUtilities.file_should_exist(file_directory=f"{os.getcwd()}/ccs_workspace/phantom_workspace/phantom/", file="phantom.asm", raise_error=False):
                StaticUtilities.extract_zip(path_to_zip=f"{os.getcwd()}/phantom.zip", extraction_directory=f"{os.getcwd()}/ccs_workspace/phantom_workspace/")
                StaticUtilities.hide_directory_recursively(f"{os.getcwd()}\\ccs_workspace\\phantom_workspace\\phantom\\")

            self._update_phantom_source()
            self._build_ccs_project("phantom")

            # search for location in source that can support this _instrumentation_strategy and instrument.
            result: str = self._instrumentation_strategy.instrument(
                file=rf"{os.getcwd()}\ccs_workspace\phantom_workspace\phantom\phantom.asm")

        # build project
        self._build_ccs_project("phantom" if not c_lang_bool else "phantom_c")  # TODO: this method should take a param for what project to build. In this case it should build the source project

        # copy binary to actual ccs project
        self._copy_phantom_binary_to_ccs_project(c_lang_bool=c_lang_bool)

        # restart CCS if it was started during or before instrumentation.
        if not ccs_running and kill_ccs:
            StaticUtilities.start_ccs()

        return

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

    # dpg.set_ccs_project_details(ccs_project_path=r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", ccs_project_name="test_generated_ASM", ccs_project_source_file_name="test_generated_ASM.asm")
    # # functional args: ccs_project_path=r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", ccs_project_name="test_generated_ASM", ccs_project_source_file_name="test_asm_generation.asm"
    # dpg.generate_source_from_disassembly(replace_source_in_ccs_project=True)
    def _update_asm_source(self) -> None:
        """
        Replaces the ASM source file in an existing CCS project specified by the instance fields ccs_project_path, ccs_project_name, ccs_project_source_file_name with the file generated by this Class.
        :return: None.
        """
        self._ccs_fields_empty()
        StaticUtilities.str_should_contain_substring(self.ccs_project_source_file_name, ".asm")
        StaticUtilities.file_should_exist(file_directory=self.ccs_project_path, file=self.ccs_project_source_file_name)
        shutil.copy(rf"{os.getcwd()}\{self.dpg.generated_assembly_directory}\{self.dpg.generated_assembly_file}", rf"{self.ccs_project_path}")
        with StaticUtilities.change_dir(self.ccs_project_path):
            os.remove(f"{self.ccs_project_source_file_name}")
            StaticUtilities.file_should_not_exist(self.ccs_project_path, self.ccs_project_source_file_name)
            os.rename(self.dpg.generated_assembly_file, self.ccs_project_source_file_name)
            StaticUtilities.file_should_exist(file_directory=self.ccs_project_path, file=self.ccs_project_source_file_name)
        StaticUtilities.logger.info(f"Source file in ASM CCS project '{self.ccs_project_name}' was replaced with the generated assembly file '{self.dpg.generated_assembly_file}'")

    def _update_phantom_source(self, *, c_lang: bool = False) -> None:
        StaticUtilities.str_should_contain_substring(self.ccs_project_source_file_name, ".asm" if not c_lang else ".c")
        if not c_lang:
            StaticUtilities.file_should_exist(file_directory=self.dpg.generated_assembly_directory, file=self.dpg.generated_assembly_file, raise_error=True)
            shutil.copyfile(f"{self.ccs_project_path}/{self.ccs_project_source_file_name}", f"{os.getcwd()}/ccs_workspace/phantom/phantom.asm")
        else:
            shutil.copyfile(f"{self.ccs_project_path}/{self.ccs_project_source_file_name}",
                            f"{os.getcwd()}/ccs_workspace/phantom_c/phantom.c")


    @staticmethod
    def _build_ccs_project(project_name: str) -> None:
        # self._ccs_fields_empty()
        # subprocess.run("")
        # commands: eclipsec -noSplash -data "C:\myWorkspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects newProject -ccs.configuration Debug
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_generated_ASM -ccs.configuration Debug
        # eclipse executable dir: C:\ti\ccs1040\ccs\eclipse
        eclipse_dir: str = rf"{os.getcwd()}\ccs_workspace"
        quote: str = "\""
        with StaticUtilities.change_dir(r"C:\ti\ccs1040\ccs\eclipse"):
            subprocess.run(rf"eclipsec -noSplash -data {quote}{eclipse_dir}{quote} -application com.ti.ccstudio.apps.projectBuild -ccs.projects {project_name} -ccs.configuration Debug")

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

    def _copy_phantom_binary_to_ccs_project(self, *, c_lang_bool: bool = False) -> None:
        file: str = ""
        path: str = f"{self.ccs_project_path}Debug"
        with StaticUtilities.change_dir(path):
            for glob_file in glob.glob("*.out"):
                file = glob_file
        with StaticUtilities.change_dir(f"{os.getcwd()}/ccs_workspace/{'phantom' if not c_lang_bool else 'phantom_c'}"):
            shutil.copyfile(f"{os.getcwd()}/Debug/{'phantom' if not c_lang_bool else 'phantom_c'}.out", file)
            shutil.move(file, f"{path}/{file}")
            return


if __name__ == "__main__":
    # StaticUtilities.extract_zip(path_to_zip=f"{os.getcwd()}/phantom.zip",
    #                             extraction_directory=f"{os.getcwd()}/ccs_workspace/")
    # StaticUtilities.hide_directory_recursively(f"{os.getcwd()}/ccs_workspace/phantom")
    # os.system(f"attrib +h /S /D {os.getcwd()}/ccs_workspace/phantom")
    i = Instrumentation(instrumentation_strategy=IntOverflowAttack())
    i.instrument()
        #os.remove(r"C:/Users/wward/Documents/GitHub/Raytheon_VHDL_Generator/ccs_workspace/phantom_c/")
    # i.ccs_project_path = f"{os.getcwd()}\\ccs_workspace\\gen_vhdl\\"
    # i._copy_phantom_binary_to_ccs_project()
