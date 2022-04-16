"""
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from abc import ABC, abstractmethod

from static_utilities import StaticUtilities


class InstrumentationStrategy(ABC):
    """
    This class acts as an interface for instrumentation.
    """

    def __init__(self) -> None:
        self.type = self.__class__.__name__
        StaticUtilities.logger.debug(f"{InstrumentationStrategy.__name__} object of type {self.type} initialized")

    @abstractmethod
    def instrument(self, file_to_instrument: str) -> bool:
        """
        Method to be declared by concrete strategies.
        :param file_to_instrument: the project containing the source to be modified.
        :return: bool representing if the file was modified.
        """
        pass
