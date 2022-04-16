"""
# Int Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
import random
from typing import List

from ccs_project import CCSProject
from instrumentation_strategy import InstrumentationStrategy
from static_utilities import StaticUtilities


class IntOverflowAttack(InstrumentationStrategy):

    def instrument(self, file_to_instrument: str) -> bool:
        """
        Instruments an integer overflow attack into a file written in C source code.
        Influence: https://facsrv.cs.depaul.edu/zhuang28/ARES2021.pdf
        Workflow:
        -Find all integers declared in the file.
        -Find all sensitive operations used in the file
            - memory allocation using integer
            - memory or string manipulation using integer
            - memory dereference using memory address which is the result of a pointer arithmetic operation (???)
        -Prepend sensitive operations with multiplication of integer values together? Simply add arithmetic operation
            which overflows integer?

        :param file_to_instrument: the project containing the source to be modified.
        :return: bool representing if the file was modified.
        """

        file = open(file_to_instrument, 'r')
        lines: List[str] = InstrumentationStrategy.split_c_code_to_lines(file.read())
        file.close()
        integers = InstrumentationStrategy.find_defined_primitives(lines, ["int"])
        if integers is None:
            StaticUtilities.logger.info("No integers found in file.")

        arg_1_functions: List[str] = [r'\bmalloc\b', r'\bcalloc\b']
        arg_2_functions: List[str] = [r'\brealloc\b']
        arg_3_functions: List[str] = [r'\bstrncpy\b', r'\bstrncat\b', r'\bstrncmp\b']

        function_families: List[List[str]] = [arg_1_functions, arg_2_functions, arg_3_functions]

        found_sensitive_operation: bool = False

        for line_index, line in enumerate(lines):
            for arg_index, function_family in enumerate(function_families):
                for function in function_family:
                    decomposition = InstrumentationStrategy.decompose_nth_argument(function, arg_index, line)
                    if decomposition is not None:
                        found_sensitive_operation = True
                        beg, arg, end = decomposition

                        # if it's using a previously declared integer, then prepend a line which adds MAX_INT,
                        # overflowing the value of the integer.
                        if arg in integers:
                            # overflow the arg before this line; prepend a line which adds MAX_INT to it?
                            lines[line_index] = f"{arg} = {arg} + INT_MAX;\n{line}"

                        # otherwise, just replace the argument with a random integer
                        else:
                            lines[line_index] = f"{beg}{random.choice(integers)[1]}{end}"

        if not found_sensitive_operation:
            StaticUtilities.logger.info("No sensitive operations using integers found.")
            return False

        new_text = "".join([line + "\n" for line in lines])
        file = open(file_to_instrument, 'w')
        file.write(new_text)
        file.close()

        return True

if __name__ == '__main__':
    x = IntOverflowAttack()
    x.instrument("ccs_workspace/test_target/main.c")