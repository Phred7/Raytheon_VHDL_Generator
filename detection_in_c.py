from ccs_project import CCSProject
from detection_strategy import DetectionStrategy


class DetectionInC(DetectionStrategy):
    pass

    def detect_buffer_overflow_attack(self, ccs_project: CCSProject) -> bool:
        """
        Attempts to detect a buffer overflow in this ccs_project.
        :param ccs_project: the project containing the source file to be analyzed.
        :return: True if a buffer overflow was detected in this file otherwise, False.
        """
        return False

    def detect_int_overflow_attack(self, ccs_project: CCSProject) -> bool:
        """
        Attempts to detect an int overflow in this ccs_project.
        :param ccs_project: The project containing the source file to be analyzed.
        :return: True if an int overflow was detected in this file otherwise, False.
        """
        return False

    def detect_f_string_vulnerability(self, ccs_project: CCSProject) -> bool:
        """
        Attempts to detect an f-string vulnerability in this ccs_project.
        :param ccs_project: The project containing the source file to be analyzed.
        :return: True if an f-string vulnerability was detected in this file. Otherwise, False.
        """
        return False

    def detect_injection_attack(self, ccs_project: CCSProject) -> bool:
        """
        Attempts to detect an injection attack in this ccs_project.
        :param ccs_project: the project containing the source file to be analyzed.
        :return: True if an injection attack was detected in this file. Otherwise, False.
        """
        return False
