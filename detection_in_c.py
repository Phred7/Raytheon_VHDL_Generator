###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import re
from copy import deepcopy
from typing import Dict

from detection_strategy import DetectionStrategy


class DetectionInC(DetectionStrategy):
    pass

    def detect_buffer_overflow_attack(self) -> bool:
        """
        Attempts to detect a buffer overflow in this ccs_project.
        :return: True if a buffer overflow was detected in this file otherwise, False.
        """
        return_string: str = ""
        insecure_patterns = ["string.h", "(char* target)",
                             'strcpy(x, y);}']
        insecure_patterns_recommended_replacement_dict:  Dict[str, str] = {insecure_patterns[0]: "--not string.h--",
                                                                           insecure_patterns[1]: "--no bad! No! Char* target--",
                                                                           insecure_patterns[2]: "--replace with strncpy--"}
        with open(deepcopy(self.ccs_project.source_file), 'r') as source_file:
            for line_number, line in enumerate(source_file):
                for pattern in insecure_patterns:
                    regex_match = re.match(pattern, line)
                    if regex_match is not None:
                        return_string += f"{line_number}: Replace {regex_match.string} with {insecure_patterns_recommended_replacement_dict.get(pattern)}"
        if return_string != "":
            return_string = f"Buffer Overflow Detection Recommendations\n{return_string}"
        return False

    def detect_int_overflow_attack(self) -> bool:
        """
        Attempts to detect an int overflow in this ccs_project.
        :return: True if an int overflow was detected in this file otherwise, False.
        """
        return False

    def detect_f_string_vulnerability(self) -> bool:
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
