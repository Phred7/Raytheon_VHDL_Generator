###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import re
from copy import deepcopy
from typing import Dict, List, Any, Match

from detection_strategy import DetectionStrategy


class DetectionInC(DetectionStrategy):

    def detect_regex_patterns_in_source(self, patterns: List[str], pattern_flags: List[Any]) -> Dict[(int, str), Match[str]]:
        """
        Locate all matches of regex patterns from this CCSProject source file.
        :param patterns: Patterns to search for in this CCSProjects source file.
        :param pattern_flags: Flags corresponding to each pattern in patterns.
        :return: Dict containing a Match as the value and Tuple keys of the line number and the pattern the Match was found with.
        """
        detected_patterns_dict: Dict[(float, str), Match[str]] = {}
        with open(deepcopy(self.ccs_project.source_file), 'r') as source_file:
            for line_number, line in enumerate(source_file):
                for pattern, flag in zip(patterns, pattern_flags):
                    regex_match = re.match(pattern, line, flags=flag)
                    if regex_match is not None:
                        detected_patterns_dict[(line_number, pattern)] = regex_match
        return detected_patterns_dict

    def detect_buffer_overflow_attack(self) -> bool:
        """
        Attempts to detect a buffer overflow in this ccs_project.
        :return: True if a buffer overflow was detected in this file otherwise, False.
        """
        return_string: str = ""
        insecure_patterns: List[str] = ["string.h$",
                                        "^\(.*?char\* (\w+).+\).*?{$",
                                        "strcpy(x, y);}"]
        insecure_patterns_flags = [None, re.I, None]
        insecure_patterns_recommended_replacement_dict:  Dict[str, str] = {insecure_patterns[0]: "--not string.h--",
                                                                           insecure_patterns[1]: "--no bad! No! Char* target--",
                                                                           insecure_patterns[2]: "--replace with strncpy--"}
        detected_patterns_dict: Dict[float, Match[str]] = self.detect_regex_patterns_in_source(insecure_patterns, insecure_patterns_flags)
        for key in detected_patterns_dict:
            line_number, pattern = key
            return_string += f"{line_number}: Replace {detected_patterns_dict[line_number].string} with {insecure_patterns_recommended_replacement_dict.get(pattern)}"
        if return_string != "":
            return_string = f"Buffer Overflow Detection Recommendations\n{return_string}"
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
        print_families = [[r'\bprintf\b', r'\bvprintf\b'],
                          [r'\bfprint\b', r'\bfprintf\b', r'\bsprintf\b', r'\bvfprintf\b'],
                          [r'\bsnprintf\b', r'\bvsnprintf\b']]
        return False

    def detect_injection_attack(self) -> bool:
        """
        Attempts to detect an injection attack in this ccs_project.
        :return: True if an injection attack was detected in this file. Otherwise, False.
        """
        return False
