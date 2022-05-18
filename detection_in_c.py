"""
# Detection In C Detection Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
import re
from copy import deepcopy
from typing import Dict, List, Any, Match

from detection_strategy import DetectionStrategy


class DetectionInC(DetectionStrategy):
    """
    Strategy for detecting vulnerabilities in C source files.
    """

    def detect_regex_patterns_in_source(self, patterns: List[str], pattern_flags: List[Any]) -> {(int, str),
                                                                                                 Match[str]}:
        """
        Locate all matches of regex patterns from this CCSProject source file.
        :param patterns: Patterns to search for in this CCSProjects source file.
        :param pattern_flags: Flags corresponding to each pattern in patterns.
        :return: Dict containing a Match as the value and Tuple keys of the line number and the pattern the Match was found with.
        """
        detected_patterns_dict: Dict[(float, str), Match[str]] = {}
        with open(deepcopy(f"{self.ccs_project.path}\\{self.ccs_project.source_file}"), 'r') as source_file:
            for line_number, line in enumerate(source_file):
                line = line.replace('\n', '')
                for pattern, flag in zip(patterns, pattern_flags):
                    regex_match = re.search(pattern, line, flags=flag)
                    if regex_match is not None:
                        detected_patterns_dict[(line_number, pattern)] = regex_match
        return detected_patterns_dict

    def __detection_return_logic__(self, detected_patterns_dict: Dict[float, Match[str]], insecure_patterns_recommended_replacement_dict: Dict[str, str], vulnerability_name: str) -> bool:
        if len(detected_patterns_dict.keys()) > 0:
            for key in detected_patterns_dict:
                line_number, pattern = key
                vulnerability_string: str = detected_patterns_dict[key].string[detected_patterns_dict[key].start():detected_patterns_dict[key].end()].strip()
                if len(vulnerability_string) > 180:
                    vulnerability_string = vulnerability_string[:100] + "..."
                self.add_vulnerability_to_dict(line_number=line_number,
                                               vulnerability_string=f"{vulnerability_name}: {vulnerability_string}. {insecure_patterns_recommended_replacement_dict.get(pattern)}")
            return True
        return False

    def detect_buffer_overflow_attack(self) -> bool:
        """
        Attempts to detect a buffer overflow in this ccs_project.
        :return: True if a buffer overflow attack was detected, otherwise False.
        """
        insecure_patterns: List[str] = ["string.h",
                                        "\(.*?char\* (\w+).+\).*?{",
                                        "strcpy\(",
                                        "strcat\(",
                                        "printf\(",
                                        "sprintf\(",
                                        "gets\("]
        insecure_patterns_flags: List[int] = [0, re.I, 0]
        insecure_patterns_recommended_replacement_dict: Dict[str, str] = {
            insecure_patterns[0]: "--string.h contains functions that can be exploited.--",
            insecure_patterns[1]: "--Char*'s may be used without specifying a buffer size--",
            insecure_patterns[2]: "--replace with strncpy or another safe function--",
            insecure_patterns[3]: "--replace with strncat or another safe function--",
            insecure_patterns[4]: "--may want to replace with a different function--",
            insecure_patterns[5]: "--may want to replace with a different function--",
            insecure_patterns[6]: "--replace with fgets or another safe function--"}
        detected_patterns_dict: Dict[float, Match[str]] = self.detect_regex_patterns_in_source(insecure_patterns,
                                                                                               insecure_patterns_flags)
        return self.__detection_return_logic__(detected_patterns_dict, insecure_patterns_recommended_replacement_dict, "BufferOverflowAttack")

    def detect_string_format_attack(self) -> bool:
        """
        Attempts to detect an f-string vulnerability in this ccs_project.
        :return: True if an f-string vulnerability was detected in this file. Otherwise, False.
        """
        insecure_patterns: List[str] = [r"(|\b|vsn|sn|vf|s|f|v)printf?\(", "(%08x\.){30,}"]
        insecure_patterns_flags: List[int] = [0, (re.S + re.X)]
        insecure_patterns_recommended_replacement_dict: Dict[str, str] = {
            insecure_patterns[0]: "--print f--",
            insecure_patterns[1]: "--this value is repeated more than 30 times in a row. This data was probably injected.--"}

        detected_patterns_dict: Dict[float, Match[str]] = self.detect_regex_patterns_in_source(insecure_patterns,
                                                                                               insecure_patterns_flags)
        return self.__detection_return_logic__(detected_patterns_dict, insecure_patterns_recommended_replacement_dict, "StringFormatAttack")

    def detect_int_overflow_attack(self) -> bool:
        """
        Attempts to detect an int overflow in this ccs_project.
        :return: True if an int overflow was detected in this file otherwise, False.
        """
        insecure_patterns: List[str] = [r"(malloc|calloc){1}\(", r"realloc\(", r"(strncpy|strncat|strncmp){1}\(", r"(\+|-|\+=|-=){1}\s*INT_MAX"]
        insecure_patterns_flags: List[int] = [0, 0, 0, 0]
        insecure_patterns_recommended_replacement_dict: Dict[str, str] = {
            insecure_patterns[0]: "--malloc or calloc operation detected--",
            insecure_patterns[1]: "--realloc operation detected--",
            insecure_patterns[2]: "--strncpy, strncat or strncmp operation detected--",
            insecure_patterns[3]: "--math operation being performed with INT_MAX--"}
        detected_patterns_dict: Dict[float, Match[str]] = self.detect_regex_patterns_in_source(insecure_patterns,
                                                                                               insecure_patterns_flags)
        return self.__detection_return_logic__(detected_patterns_dict, insecure_patterns_recommended_replacement_dict,
                                               "IntOverflowAttack")

    def detect_injection_attack(self) -> bool:
        """
        Attempts to detect an injection attack in this ccs_project.
        :return: True if an injection attack was detected in this file. Otherwise, False.
        """
        return False
