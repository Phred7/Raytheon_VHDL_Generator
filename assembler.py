import logging
import os
from logging import Logger


class Assembler:
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)
    assembler_directory: str = r'C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin'
    assembler_executable: str = r'asm430.exe'

    def __init__(self, input_file_name: str = ""):
        self.assembler_input_file_name: str = input_file_name  # "All_msp_operations.out"  # "test_C.out"  # "test_colt_C.out"  # "All_ops_asm.out'  # "Motor_mover_C.out" # "test.out" # "test_ASM.out" # "All_msp_operations.out"

    def assemble(self) -> None:
        assembler_input_file_directory: str = rf"{os.getcwd()}\ccs_workspace\{self.assembler_input_file_name.replace('.out', '')}\Debug"
        assembler_output_file_name: str = ""
        assembler_output_file_directory: str = rf"{os.getcwd()}\x"
