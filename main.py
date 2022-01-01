###############################
# Main
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
###############################
from disassembler import Disassembler
from instrumentation import Instrumentation
from int_overflow_attack import IntOverflowAttack
from package_zipper import PackageZipper
from vhdl_parser_generator import VHDLParserGenerator


class Main:
    """Main method to execute the VHDL generation workflow."""

    @staticmethod
    def main() -> None:
        """All_msp_operations.out"""
        vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator()
        disassembler: Disassembler = Disassembler()
        package_zipper: PackageZipper = PackageZipper()
        instrumentation = Instrumentation(IntOverflowAttack())

        # disassembler.disassemble(pique_bool=False)
        # package_zipper.zip_vhdl(zip_file_name="")
        # vhdl_parser_generator.generate_vhdl(pique_bin_bool=True)
        # package_zipper.zip_vhdl(zip_file_name="generated_vhdl_instrumentation_test")


if __name__ == '__main__':
    main: Main = Main()
    main.main()
