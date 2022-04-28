"""
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from abc import ABC, abstractmethod
from typing import Match, Any, List, Dict

from ccs_project import CCSProject
from static_utilities import StaticUtilities


class DetectionStrategy(ABC):
    """
    This class acts as an interface for detection.
    """

    def __init__(self, ccs_project: CCSProject) -> None:
        self.ccs_project: CCSProject = ccs_project
        self.vulnerability_string_dict: Dict[int, List[str]] = {}
        self.return_string: str = ""
        self.type = self.__class__.__name__
        StaticUtilities.logger.debug(f"{DetectionStrategy.__name__} object of type {self.type} initialized")

    @abstractmethod
    def detect_regex_patterns_in_source(self, patterns: List[str], pattern_flags: List[Any]) -> {(int, str), Match[str]}:
        """
        Locate all matches of regex patterns from this CCSProject source file.
        :param patterns: Patterns to search for in this CCSProjects source file.
        :param pattern_flags: Flags corresponding to each pattern in patterns.
        :return: Dict containing a Match as the value and Tuple keys of the line number and the pattern the Match was found with.
        """
        pass

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
    def detect_string_format_attack(self) -> bool:
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

    def possible_vulnerabilities(self) -> str:
        """
        Note: This method is memoized.
        """
        if self.return_string == "":
            for key in self.vulnerability_string_dict.keys():
                self.return_string += f"line {key}:\n"
                for item in self.vulnerability_string_dict[key]:
                    self.return_string += f"\t{item}"
                self.return_string += '\n'
        return self.return_string

    def add_vulnerability_to_dict(self, line_number: int, vulnerability_string: str) -> None:
        if self.vulnerability_string_dict.get(line_number) is None:
            self.vulnerability_string_dict[line_number] = [vulnerability_string]
        else:
            self.vulnerability_string_dict[line_number].append(vulnerability_string)
        self.return_string = ""
