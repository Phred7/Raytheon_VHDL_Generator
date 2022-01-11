###############################
# CCS Disassembler
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import os
from pique_bin import PiqueBin
from static_utilities import StaticUtilities


class Disassembler:
    """
    Disassembles an MSP430 binary.
    """

    # TODO: make it so the input file doesn't need to match the binary file name but defaults to that. Also add check to make sure both the project and file exist.
    def __init__(self, disassembler_input_file_name: str = "Motor_mover_C.out",
                 disassembler_output_file_name: str = "generated_disassembly.txt",
                 disassembler_output_file_directory: str = rf"{os.getcwd()}\generated_disassembly") -> None:
        self.disassembler_directory: str = r'C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin'
        self.disassembler_executable: str = r'dis430.exe'
        self.disassembler_input_file_name: str = disassembler_input_file_name  # "Motor_mover_C.out"  # "All_msp_operations.out"  # "test_C.out"  # "test_colt_C.out"  # "All_ops_asm.out'  # "Motor_mover_C.out" # "test.out" # "test_ASM.out" # "All_msp_operations.out"
        self.disassembler_input_file_directory: str = rf"{os.getcwd()}\ccs_workspace\{self.disassembler_input_file_name.replace('.out', '')}\Debug"
        self.disassembler_output_file_name: str = disassembler_output_file_name
        self.disassembler_output_file_directory: str = disassembler_output_file_directory
        self.disassembler_exit_status: int = 0
        StaticUtilities.logger.debug(f"{Disassembler.__name__} object initialized")

    def disassemble(self) -> None:
        """
        Generates disassembly for a binary generated by the MSP430 in CCS.
        - Checks that the input file exists.
        - Checks if the output file already exists. If so removes it.
        - Runs dis430.exe on the input file and output file.
        - Checks the exit status of the dis430.exe.
        - Note: Extremely dependant on package structure.
        :raise: OSError if the input file does not exists.
        :raise: OSError if the disassembler failed.
        """

        # Check if the disassembler input exists.
        StaticUtilities.file_should_exist(self.disassembler_input_file_directory, self.disassembler_input_file_name)

        # Check if the output file already exists. If it exists delete in.
        if os.path.exists(rf"{self.disassembler_output_file_directory}\{self.disassembler_output_file_name}"):
            os.remove(rf"{self.disassembler_output_file_directory}\{self.disassembler_output_file_name}")
            StaticUtilities.logger.info(rf"Removed {self.disassembler_output_file_directory}\{self.disassembler_output_file_name}")

        # Call the disassembler.
        self.disassembler_exit_status = os.system(
            rf"{self.disassembler_directory}\{self.disassembler_executable} {self.disassembler_input_file_directory}\{self.disassembler_input_file_name} {self.disassembler_output_file_directory}\{self.disassembler_output_file_name}")
        StaticUtilities.logger.debug(f"Disassembler exit status: {self.disassembler_exit_status}")
        if self.disassembler_exit_status != 0:
            raise OSError(
                f"Disassembler failed to generate disassembly for {self.disassembler_input_file_name} with exit status {self.disassembler_exit_status}")
        else:
            StaticUtilities.logger.info(
                f'Disassembler generated {self.disassembler_output_file_name} at the directory {self.disassembler_output_file_directory}')


if __name__ == '__main__':
    disassembler: Disassembler = Disassembler()
    disassembler.disassemble()
