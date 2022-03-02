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

import re

from instrumentation_strategy import InstrumentationStrategy


class StringFormatAttack(InstrumentationStrategy):

    def instrument(self, file: str) -> bool:
        """"
        Open the file
        Find an instance of printf (or printf family)
        Replace the contents with "%08x"


        :param file: the file to instrument.
        :return: True if the process is successful, False if it fails at any step
        """

        # C print functions in sublists according to the index of the format string argument (zeroth argument, oneth, or twoth)
        print_families = [[r'\bprintf\b', r'\bvprintf\b'],
                          [r'\bfprint\b', r'\bfprintf\b', r'\bsprintf\b', r'\bvfprintf\b'],
                          [r'\bsnprintf\b', r'\bvsnprintf\b']]

        vuln_string = """printf(a, b, c)\nprintf(a, b)\nprintf(a)\nvprintf(a, b)\n\nfprint(a, b, c)\nfprintf(a, b)\nsprintf(a, b, c)\nvfprintf(a, b, c)\n\nsnprintf(a, b, c)\nvsnprintf(a, b, c)"""

        format_string = f"\"{'%08x.'}\"" * 1024

        text = [line.replace('\n', '').strip() for line in open(file, 'r').readlines()]

        for line_index, line in enumerate(text):
            for argument_index, print_family in enumerate(print_families):
                for print_function in print_family:
                    if r'"SILENCE\n"' in line:
                        q = 5
                    if re.match(print_function, line):
                        has_found_arguments = False
                        num_args_discovered = 0
                        x: str
                        i = line.index(print_function.replace(r"\b", ""))
                        while num_args_discovered < argument_index or not has_found_arguments:
                            i = i + 1
                            x = line[i]
                            if line[i] == ',':
                                num_args_discovered += 1
                                x = line[i]
                            elif line[i] == '(':
                                has_found_arguments = True
                        j = i + 1
                        y: str
                        while line[j] not in ",)":
                            j += 1
                            y = line[j]
                        text[line_index] = line[:i+1] + " " + format_string + line[j:]

        new_text = "".join([x + '\n' for x in text])
        print(new_text)
        new_file = file.strip(".c") + "_i.c"
        open(new_file, 'w').write(new_text)
        return True


if __name__ == '__main__':
    a = StringFormatAttack()
    a.instrument(r"C:\Users\Mike\Documents\GitHub\AttackTests\main.c")