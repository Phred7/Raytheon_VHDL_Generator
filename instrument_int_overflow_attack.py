"""
# Int Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
from typing import List

from ccs_project import CCSProject
from instrumentation_strategy import InstrumentationStrategy


class IntOverflowAttack(InstrumentationStrategy):

    def instrument(self, file_to_instrument: str) -> bool:
        """
        Instruments an integer overflow attack into a file written in C source code.
        Influence: https://facsrv.cs.depaul.edu/zhuang28/ARES2021.pdf
        Workflow:
        -Find all integers declared in the file.
        -Find all (some?) sensitive operations used in the file
            - memory allocation using integer
                -
            - memory or string manipulation using integer
            - memory dereference using memory address which is the result of a pointer arithmetic operation (???)
        -Prepend sensitive operations with multiplication of integer values together? Simply add arithmetic operation
            which overflows integer?

        :param file_to_instrument: the project containing the source to be modified.
        :return: bool representing if the file was modified.
        """

        file = open(file_to_instrument, 'r')
        lines: List[str] = InstrumentationStrategy.split_c_code_to_lines(file.read())
        print(lines)
        file.close()
        integers = InstrumentationStrategy.find_defined_primitives(lines, ["int"])

        # malloc: change the single argument
        # calloc: change the first argument
        # realloc: change the second argument
        #
        sensitive_function_calls = ["malloc", "calloc", ""]



if __name__ == '__main__':
    x = IntOverflowAttack()
    x.instrument("ccs_workspace/test_target/main.c")