import package_zipper
from instrumentation import Instrumentation
from int_overflow_attack import IntOverflowAttack
from vhdl_parser_generator import VHDLParserGenerator


class Demo:

    def main(self) -> None:
        instrumentation: Instrumentation = Instrumentation(IntOverflowAttack())
        vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator()
        vhdl_parser_generator.generate_vhdl(pique_bin_bool=True)
        package_zipper.zip_vhdl(zip_file_name="generated_vhdl_instrumentation_test")

if __name__ == '__main__':
    demo: Demo = Demo()
    demo.main()
