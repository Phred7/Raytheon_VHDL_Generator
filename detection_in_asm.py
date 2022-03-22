"""
# Detection In ASM Detection Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
from typing import List, Any, Dict, Match

from detection_strategy import DetectionStrategy


class DetectionInASM(DetectionStrategy):
    """
    Strategy for detecting vulnerabilities in ASM source files.
    """

    def detect_regex_patterns_in_source(self, patterns: List[str], pattern_flags: List[Any]) -> Dict[(int, str), Match[str]]:
        """
        Locate all matches of regex patterns from this CCSProject source file.
        :param patterns: Patterns to search for in this CCSProjects source file.
        :param pattern_flags: Flags corresponding to each pattern in patterns.
        :return: Dict containing a Match as the value and Tuple keys of the line number and the pattern the Match was found with.
        """
        raise NotImplementedError

    def detect_buffer_overflow_attack(self) -> bool:
        """
        Attempts to detect a buffer overflow in this ccs_project.
        :return: True if a buffer overflow was detected in this file otherwise, False.
        """
        return False

    def detect_int_overflow_attack(self) -> bool:
        """
        Attempts to detect an int overflow in this ccs_project.
        :return: True if an int overflow was detected in this file otherwise, False.
        """
        return False

    def detect_string_format_attack(self) -> bool:
        """
        Attempts to detect an f-string vulnerability in this ccs_project.
        :return: True if an f-string vulnerability was detected in this file. Otherwise, False.
        """
        return False

    def detect_injection_attack(self) -> bool:
        """
        Attempts to detect an injection attack in this ccs_project.
        :return: True if an injection attack was detected in this file. Otherwise, False.
        """
        return False
