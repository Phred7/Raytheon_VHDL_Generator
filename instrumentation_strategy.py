###############################
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
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
    def instrument(self, file: str) -> bool:
        """
        Method to be declared my concrete strategies.
        :param file: str representing the file to instrument.
        :return: str representing the file that was instrumented.
        """
        pass
