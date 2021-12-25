###############################
# Demo
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
###############################
from typing import Tuple

import package_zipper
from assembler import Assembler
from disassembler import Disassembler
from instrumentation import Instrumentation
from int_overflow_attack import IntOverflowAttack
from vhdl_parser_generator import VHDLParserGenerator


class Demo:

    @staticmethod
    def main() -> None:
        """All_msp_operations.out"""
        disassembler: Disassembler = Disassembler()
        disassembler.disassemble(pique_bool=False)
        # assembler: Assembler = Assembler(input_file_name=disassembler_return[1])
        # assembler.assemble()
        # instrumentation: Instrumentation = Instrumentation(IntOverflowAttack())
        # vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator()
        # vhdl_parser_generator.generate_vhdl(pique_bin_bool=True)
        # package_zipper.zip_vhdl(zip_file_name="generated_vhdl_instrumentation_test")

if __name__ == '__main__':
    demo: Demo = Demo()
    demo.main()
