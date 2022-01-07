###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import os
import shutil
import subprocess
import sys

from disassembler import Disassembler
from disassembly_parser_generator import DisassemblyParserGenerator
from instrumentation_strategy import InstrumentationStrategy
from static_utilities import StaticUtilities


class Instrumentation:
    """
    Strategy Pattern Context.
    """

    def __init__(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self.disassembler = None
        self.dpg = None
        self.ccs_project_path: str = ""
        self.ccs_project_name: str = ""
        self.ccs_project_source_file_name: str = ""
        self.dpg: DisassemblyParserGenerator
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
        ccs_project_main_source_file_name: str = "test_asm_generation"

        # kill CCS if it's running... TODO: don't allow CCS to start while this method has not finished??? (Different looping 'thread'???)
        ccs_running: bool = False
        if StaticUtilities.ccs_process_running():
            ccs_running = True
            StaticUtilities.stop_ccs(force_kill=True)

        # disassemble binary.
        # TODO: Realistically this step could be skipped right now and we could just grab the source file.
        #  However, in the future we should attempt to intercept the binary on the way to the MSP and replace it with out own.
        #  By grabbing the binary instead of the source we can guarantee that only saved changes are pushed to out modified binaries.
        self.disassembler: Disassembler = Disassembler(disassembler_input_file_name=f"{ccs_project_main_source_file_name}.out")
        self.disassembler.disassemble()

        # use dpg to generate source
        self.dpg: DisassemblyParserGenerator = DisassemblyParserGenerator(disassembly_file=self.disassembler.disassembler_output_file_name, disassembly_directory=self.disassembler.disassembler_output_file_directory)
        self.dpg.generate_source_from_disassembly()

        # search for location in source that can support this _instrumentation_strategy and instrument.
        result: str = self._instrumentation_strategy.instrument(file=rf"{os.getcwd()}\{self.dpg.generated_assembly_directory}\{self.dpg.generated_assembly_file}")

        # replace the existing source file in the project with the instrumented file.
        self._replace_source_in_ccs_project_with_generated_source()

        # build project
        self._build_ccs_project()

        # restart CCS if it was started during or before instrumentation.
        if ccs_running:
            StaticUtilities.start_ccs()

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
    def _replace_source_in_ccs_project_with_generated_source(self) -> None:
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

    @staticmethod
    def _build_ccs_project() -> None:
        # self._ccs_fields_empty()
        # subprocess.run("")
        # commands: eclipsec -noSplash -data "C:\myWorkspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects newProject -ccs.configuration Debug
        # eclipsec -noSplash -data "C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_generated_ASM -ccs.configuration Debug
        # eclipse executable dir: C:\ti\ccs1040\ccs\eclipse
        eclipse_dir: str = r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace"
        project_name: str = "test_generated_ASM"
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
                    f"The following were set to the empty string when attempting to replace the source file in a ccs project with a generated source file: {empty_strings} in an instance of {self.__class__.__name__}. Call {self.__class__.__name__}.set_ccs_project_details() to rectify or set replace_source_in_ccs_project to false when calling {self.__class__.__name__}.generate_source_from_disassembly().")
            if system_error:
                return sys.exit(1)
            return True
        return False


if __name__ == "__main__":
    Instrumentation._build_ccs_project()