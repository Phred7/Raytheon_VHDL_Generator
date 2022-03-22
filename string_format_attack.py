"""
# String Format Attack
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal
"""

import re

from ccs_project import CCSProject
from instrumentation_strategy import InstrumentationStrategy
from static_utilities import StaticUtilities


class StringFormatAttack(InstrumentationStrategy):

    def instrument(self, project: CCSProject) -> bool:
        """
        Open the file
        Find an instance of printf (or printf family)
        Replace the appropriate argument with "%08x"
        Write the new text to the file
        :param project: the file to instrument.
        :return: True if the process is successful, False if it fails at any step
        """

        # C print functions in sublists according to the index of the format string argument (zeroth argument, oneth, or twoth)
        print_families = [[r'\bprintf\b', r'\bvprintf\b'],
                          [r'\bfprint\b', r'\bfprintf\b', r'\bsprintf\b', r'\bvfprintf\b'],
                          [r'\bsnprintf\b', r'\bvsnprintf\b']]

        format_string = '"' + '%08x.' * 1024 + '"'

        try:
            with open(project.source_file, 'r') as f:
                text = [line.replace('\n', '').strip() for line in f.readlines()]
        except FileNotFoundError:
            StaticUtilities.logger.info("File not found.")
            return False

        found_print_function: bool = False

        for line_index, line in enumerate(text):
            for argument_index, print_family in enumerate(print_families):
                for print_function in print_family:
                    if re.match(print_function, line):
                        found_print_function = True
                        has_found_arguments = False
                        num_args_discovered = 0
                        i = line.index(print_function.replace(r"\b", ""))
                        while num_args_discovered < argument_index or not has_found_arguments:
                            i = i + 1
                            if line[i] == ',':
                                num_args_discovered += 1
                            elif line[i] == '(':
                                has_found_arguments = True
                        j = i + 1
                        while line[j] not in ",)":
                            j += 1
                        text[line_index] = line[:i+1] + " " + format_string + line[j:]

        if not found_print_function:
            StaticUtilities.logger.info("No print functions found in file.")
            return False

        new_text = "".join([x + '\n' for x in text])
        with open(project.source_file, 'w') as f:
            f.write(new_text)

        return True
