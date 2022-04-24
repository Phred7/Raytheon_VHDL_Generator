"""
# Buffer Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal
"""
import random
import string
from typing import List, Tuple

from instrumentation_strategy import InstrumentationStrategy
from static_utilities import StaticUtilities


class BufferOverflowAttack(InstrumentationStrategy):

    def instrument(self, file_to_instrument: str) -> bool:
        """"
        Open the file
        Find all variable declarations
        Find all places where variables declared here are being compared
        Paste buffer definitions around variable declarations
        Paste insecure function calls before comparisons
        Paste insecure function to top
        Write to the file
        :param file_to_instrument: the project containing the source to be modified.
        :return: True if the process is successful, False if it fails at any step
        """
        insecure_function = ["#include <string.h>", "void buff_value(char* target) {",
                             '   strcpy(target, "0000000000000000000000");}']

        # try to read from the file; return if the file isn't there
        try:
            with open(file_to_instrument, 'r') as f:
                c_lines = InstrumentationStrategy.split_c_code_to_lines(f.read())
        except FileExistsError:
            StaticUtilities.logger.info("File not found.")
            return False

        for compare_line_index, line in enumerate(c_lines):
            c_lines[compare_line_index] = line.split(r"//")[0]

        c_lines = [line for line in c_lines if line != ""]

        # Find all variable definitions
        defined_primitives: List[Tuple[int, str]] = InstrumentationStrategy.find_defined_primitives(c_lines)

        # If no variable definitions were found, return that buffer overflow did not work
        if not defined_primitives:
            StaticUtilities.logger.info("No primitive declarations found to overflow.")
            return False

        inserted_buffer: bool = False
        for compare_line_index, line in enumerate(c_lines):
            # don't include #include <something.h>
            if line[0] == "#":
                continue
            if InstrumentationStrategy.line_of_c_code_contains_comparison(line):
                for declare_line_index, primitive_name in defined_primitives:
                    if primitive_name in line:
                        inserted_buffer = True
                        # create buffers around dec. of the variables and overflow them
                        buf_1 = f"{primitive_name}_{''.join(random.choice(string.ascii_lowercase) for _ in range(10))}"
                        buf_2 = f"{primitive_name}_{''.join(random.choice(string.ascii_lowercase) for _ in range(10))}"
                        c_lines[
                            declare_line_index] = f"char* {buf_1};\n{c_lines[declare_line_index]};\nchar* {buf_2};"

                        c_lines[compare_line_index] = f"buff_value({buf_2});\n{c_lines[compare_line_index]}"
                        c_lines[compare_line_index] = f"buff_value({buf_1});\n{c_lines[compare_line_index]}"

        # if no primitives are being compared
        if not inserted_buffer:
            StaticUtilities.logger.info("No primitive variable comparisons found to overwrite.")
            return False

        c_lines = insecure_function + c_lines
        new_c_file = ""
        for line in c_lines:
            new_c_file = f"{new_c_file}\n{line}"

        with open(file_to_instrument, 'w') as f:
            f.write(new_c_file)
        return True



