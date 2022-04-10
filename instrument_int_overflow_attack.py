"""
# Int Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
from ccs_project import CCSProject
from instrumentation_strategy import InstrumentationStrategy


class IntOverflowAttack(InstrumentationStrategy):

    def instrument(self, file_to_instrument: str) -> bool:
        """
        Method to be declared by concrete strategies.
        :param file_to_instrument: the project containing the source to be modified.
        :return: bool representing if the file was modified.
        """
        return False
