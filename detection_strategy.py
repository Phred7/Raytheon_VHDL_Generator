###############################
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
from abc import ABC, abstractmethod

from ccs_project import CCSProject
from static_utilities import StaticUtilities


class DetectionStrategy(ABC):
    """
    This class acts as an interface for detection.
    """

    def __init__(self, ccs_project: CCSProject) -> None:
        self.ccs_project: CCSProject = ccs_project
        self.type = self.__class__.__name__
        StaticUtilities.logger.debug(f"{DetectionStrategy.__name__} object of type {self.type} initialized")

    @abstractmethod
    def detect_buffer_overflow_attack(self) -> bool:
        """
        Method to be declared by concrete detection strategies.
        :return: True if a buffer overflow was detected in this file. Otherwise, False.
        """
        pass

    @abstractmethod
    def detect_int_overflow_attack(self) -> bool:
        """
        Method to be declared by concrete detection strategies.
        :return: True if an int overflow was detected in this file. Otherwise, False.
        """
        pass

    @abstractmethod
    def detect_f_string_vulnerability(self) -> bool:
        """
        Method to be declared by concrete detection strategies.
        :return: True if a string vulnerability was detected in this file. Otherwise, False.
        """
        pass

    @abstractmethod
    def detect_injection_attack(self) -> bool:
        """
        Method to be declared by concrete detection strategies.
        :return: True if an injection attack was detected in this file. Otherwise, False.
        """
        pass
