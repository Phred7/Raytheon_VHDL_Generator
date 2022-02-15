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
        # instrumentation = Instrumentation(IntOverflowAttack())
        # instrumentation.instrument()
        # vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(binary_file_name="All_msp_operations")
        # vhdl_parser_generator.generate_vhdl(detection=True)
        # package_zipper: PackageZipper = PackageZipper()
        # TODO: class for ccs project to stop having to pass around file names and paths?

        # disassembler.disassemble(pique_bool=False)
        # package_zipper.zip_vhdl()
        # package_zipper.zip_vhdl(zip_file_name="port_AB_01_12_2022")


if __name__ == '__main__':
    main: Main = Main()
    main.main()
