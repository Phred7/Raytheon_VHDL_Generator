###############################
# CCS Assembler
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
import os
from contextlib import contextmanager
from logging import Logger


class Assembler:
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)
    assembler_directory: str = r'C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin'
    assembler_executable: str = r'asm430.exe'  # r'asm430.exe' Tested: lc430, lnk430

    def __init__(self, *, input_file_name: str, input_file_directory: str = None,
                 output_file_name: str = "generated_assembly.out", output_file_directory: str = None):
        self.assembler_input_file_name: str = input_file_name  # "All_msp_operations.out"  # "test_C.out"  # "test_colt_C.out"  # "All_ops_asm.out'  # "Motor_mover_C.out" # "test.out" # "test_ASM.out" # "All_msp_operations.out"
        self.assembler_output_file_name: str = output_file_name
        self.assembler_input_file_directory: str = input_file_directory if input_file_directory is not None else rf"{os.getcwd()}\generated_disassembly"
        self.assembler_output_file_directory: str = output_file_directory if output_file_directory is not None else rf"{os.getcwd()}\generated_assembly"
        self.file_should_exist(file_directory=self.assembler_input_file_directory, file=self.assembler_input_file_name)

    def assemble(self, *, delete_output_if_exists: bool = True) -> None:
        # If delete_output_if_exists is True: Check if the output file already exists. If it exists delete in.
        if delete_output_if_exists:
            if os.path.exists(rf"{self.assembler_output_file_directory}\{self.assembler_output_file_name}"):
                os.remove(rf"{self.assembler_output_file_directory}\{self.assembler_output_file_name}")
                self.logger.info(rf"Removed {self.assembler_output_file_directory}\{self.assembler_output_file_name}")

        # Call the assembler.
        # disassembler_exit_status: int = os.system(
        #     rf"{self.assembler_directory}\{self.assembler_executable} {self.assembler_input_file_directory}\{self.assembler_input_file_name} {self.assembler_output_file_directory}\{self.assembler_output_file_name}")
        # self.logger.debug(f"Assembler exit status: {disassembler_exit_status}")
        # if disassembler_exit_status != 0:
        #     self.logger.info(
        #         f"Assembler failed to generate assembly for {self.assembler_input_file_name} with exit status {disassembler_exit_status}")
        #     # raise OSError(f"Assembler failed to generate assembly for {self.assembler_input_file_name} with exit status {disassembler_exit_status}")
        # else:
        #     self.logger.info(
        #         f'Assembler generated {self.assembler_output_file_name} at the directory {self.assembler_output_file_directory} using {self.assembler_executable}')
        raise NotImplementedError("The Assembler is not fully functional at this moment. The assembler does not reassemble disassembly. To reassemble we are going to need to scan the disassembly and create a ASM file from that, compile it with CCS's tools and then we should be able to generate .out and .obj files")

    @contextmanager
    def change_dir(self, destination: str) -> None:
        cwd: str = ""
        try:
            cwd = os.getcwd()
            os.chdir(destination)
            yield
        finally:
            os.chdir(cwd)

    @staticmethod
    def file_should_exist(file_directory: str, file: str) -> int:
        """
        Returns 0 if file exists. Otherwise raises OSError.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :raises OSError: If file does not exist.
        :return: O if the files exists.
        """
        if not os.path.exists(f"{file_directory}\\{file}"):
            raise OSError(f"{file_directory}\\{file} does not exist")
        return 0


if __name__ == '__main__':
    raise NotImplementedError
    #  assembler: Assembler = Assembler()
