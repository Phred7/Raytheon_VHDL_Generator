###############################
# Buffer Overflow Attack
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal
###############################
import random
import string
from typing import List, Tuple

from ccs_project import CCSProject
from instrumentation_strategy import InstrumentationStrategy


class BufferOverflowAttack(InstrumentationStrategy):

    @staticmethod
    def c_variable_from_declaration(line: str) -> str:
        """
        :param line: A line of C code containing a primitive variable declaration.
        :return: The name of the variable being declared.
        """
        line = line.split("=")[0]
        c_types = ["int", "char", "float", "short", "long", "unsigned"]
        for c_type in c_types:
            line = line.replace(c_type, "")
        line = line.replace(" ", "").replace(";", "")
        return line

    def instrument(self, project: CCSProject) -> bool:
        """"
        Open the file
        Find all variable declarations
        Find all places where variables declared here are being compared
        Paste buffer definitions around variable declarations
        Paste insecure function calls before comparisons
        Paste insecure function to top
        Write to the file

        :param file: the file to instrument.
        :return: True if the process is successful, False if it fails at any step
        """
        insecure_function = ["#include <string.h>", "void buff_value(char* target) {",
                             '   strcpy(target, "0000000000000000000000");}']

        # try to read from the file; return if the file isn't there
        try:
            with open(project.source_file, 'r') as f:
                c_text = f.read()
        except FileExistsError:
            return False

        c_lines = c_text.split('\n')
        for compare_line_index, line in enumerate(c_lines):
            c_lines[compare_line_index] = line.split(r"//")[0]

        c_lines = [line for line in c_lines if line != ""]

        c_types = ["int", "char", "float", "short", "long", "unsigned"]
        c_logic_operators = ["==", "!=", ">", "<", ">=", "<=", "&&", "||", "!"]

        # Find all variable definitions
        defined_primitives: List[Tuple[int, str]] = [(i, self.c_variable_from_declaration(line)) for i, line in
                                                     enumerate(c_lines) if any([c_type in line and not any(
                [char in line for char in ["(", ")", "[", "]"]]) for c_type in c_types])]

        # If no variable definitions were found, return that buffer overflow did not work
        if not defined_primitives:
            return False

        inserted_buffer: bool = False
        for compare_line_index, line in enumerate(c_lines):
            if "int main" in line and "{" in line:
                c_lines[compare_line_index] = line + '\nprintf("This file has been instrumented.' + r'\n");'
            # don't include #include <something.h>
            if line[0] == "#":
                continue
            for operator in c_logic_operators:
                if operator in line:
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
            return False

        c_lines = insecure_function + c_lines
        new_c_file = ""
        for line in c_lines:
            new_c_file = f"{new_c_file}\n{line}"

        with open(project.source_file, 'w') as f:
            f.write(new_c_file)
        return True
