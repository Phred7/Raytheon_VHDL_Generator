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

        print_family_first_argument = ['printf', 'vprintf']
        print_family_second_argument = ['fprint', 'fprintf', 'sprintf', 'vfprintf']
        print_family_third_argument = ['snprintf', 'vsnprintf']



        text = open(file, 'r').readlines()
        for line_index, line in enumerate(text):
            # replace the format string if it's in the first argument position
            for print_function in print_family_first_argument:
                if print_function in line:
                    i = line.index(print_function)
                    while line[i] != "(":
                        i = i + 1

                    j = i
                    while line[j] != "," and line[j] != ")":
                        j = j + 1

                    text[line_index] = line[:i+1] + f"\"{'%08x.'}\"" + line[j:]

            # replace the format string if it's in the second argument position
            for print_function in print_family_second_argument:
                if print_function in line:
                    i = line.index(print_function)
                    while line[i] != ",":
                        i = i + 1

                    text[line_index] = line[:i+1] + "%08x." + '");\n'

            # replace the format string if it's in the third argument position
            for print_function in print_family_third_argument:
                if print_function in line:
                    num_args_discovered = 0
                    i = line.index(print_function)
                    while num_args_discovered < 2:
                        i = i + 1
                        if line[i] == ',':
                            num_args_discovered += 1

                    text[line_index] = line[:i+1] + "%08x." + '");\n'


        new_text = "".join([x for x in text])
        print(new_text)
        new_file = file.strip(".c") + "_i.c"
        open(new_file, 'w').write(new_text)
        return True


if __name__ == '__main__':
    a = StringFormatAttack()
    a.instrument(r"C:\Users\Mike\Documents\GitHub\AttackTests\main.c")