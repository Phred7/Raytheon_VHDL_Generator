"""
# String Format Attack
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal
"""

from ccs_project import CCSProject
from instrumentation_strategy import InstrumentationStrategy
from static_utilities import StaticUtilities


class StringFormatAttack(InstrumentationStrategy):

    def instrument(self, file_to_instrument: str) -> bool:
        """
        Open the file
        Find an instance of printf (or printf family)
        Replace the appropriate argument with "%08x"
        Write the new text to the file
        :param file_to_instrument: the project containing the source to be modified.
        :return: True if the process is successful, False if it fails at any step
        """

        # C print functions in sublists according to the index of the format string argument (zeroth argument, oneth, or twoth)
        print_families = [[r'\bprintf\b', r'\bvprintf\b'],
                          [r'\bfprint\b', r'\bfprintf\b', r'\bsprintf\b', r'\bvfprintf\b'],
                          [r'\bsnprintf\b', r'\bvsnprintf\b']]

        format_string = '"' + '%08x.' * 1024 + '"'

        try:
            with open(file_to_instrument, 'r') as f:
                text = [line.replace('\n', '').strip() for line in f.readlines()]
        except FileNotFoundError:
            StaticUtilities.logger.info("File not found.")
            return False

        found_print_function: bool = False

        for line_index, line in enumerate(text):
            for argument_index, print_family in enumerate(print_families):
                for print_function in print_family:
                    decomposition = InstrumentationStrategy.decompose_nth_argument(print_function, argument_index, line)
                    if decomposition is not None:
                        beg, arg, end = decomposition
                        text[line_index] = beg + format_string + end
                        found_print_function = True

        if not found_print_function:
            StaticUtilities.logger.info("No print functions found in file.")
            return False

        new_text = "".join([x + '\n' for x in text])
        with open(file_to_instrument, 'w') as f:
            f.write(new_text)

        return True
