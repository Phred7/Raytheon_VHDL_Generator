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

        :param file: the file to instrument.
        :return: True if the process is successful, False if it fails at any step
        """

