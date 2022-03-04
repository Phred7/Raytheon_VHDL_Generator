###############################
# Detection
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
###############################
import hashlib
import os
import static_utilities
from typing import Dict
import json

from ccs_project import CCSProject, ProjectType
from pique_bin import PiqueBin
from static_utilities import StaticUtilities


class Detection:
    """
    Attempts to detect various forms of malware or vulnerabilities with in a binary and source file pair.
    """

    def __init__(self, project: CCSProject, *, pique_bin_bool: bool = True, suppress_pique_bin_logs: bool = True) -> None:  # TODO: this constructor need to be updated. Should contain reference to ccs project, source file, binary file and possibly disassembly.
        self.hash: Dict[int: str] = None

        self.project: CCSProject = project
        self.hashed_files = StaticUtilities.initialize_hash_dict()

        self.source_file: str = project.source_file
        self.path: str = project.path
        self.binary_security_quality: float = 0
        if pique_bin_bool:
            self.pique_bin: PiqueBin = PiqueBin(source_file_name=self.project.source_file, suppress_printing_bool=suppress_pique_bin_logs)
        else:
            self.pique_bin = None
        StaticUtilities.logger.debug(f"{Detection.__name__} object initialized")
        # self.hashed_files: dict = {}

    def detect(self, check_against_hash: bool = True) -> bool:
        """
        Executes a sequence of algorithms to attempt to detect malware or vulnerabilities that may exist within a binary and a corresponding source file.
        :return: True if no malware or vulnerabilities are detected, False otherwise.
        """
        if self.hashed_file_exists_and_matches_cache(f"{self.project.path}\\{self.project.source_file}"):
            return True
        else:
            security_quality: float = 0.8
            threshold = 0.7  # TODO FIND AN ACTUALLY GOOD VALUE FOR THIS, I PULLED THIS OUT OF MY ARSE

            if isinstance(self.pique_bin, PiqueBin):
                security_quality = self.pique_bin.pique_bin()
                StaticUtilities.logger.info(
                    f"PIQUE-Bin Binary Security Quality: {security_quality}")
            if security_quality > threshold:
                self.project.__hash__()

        return True
        # If the Security Quality is below some threshold, loop through vulnerability inspections.

    def hashed_file_exists_and_matches_cache(self, file: str) -> bool:
        """
        Verifies whether a file has been cached and whether it matches that cache.
        :param file: The file to check for a hashed value.
        :return: True if the file has already been cached and the hashed value of the file matches the cached value.
        False if the file has not been cached or if the file has been cached and the hashed value of the file does not
        match the cached value.
        """

        file_name_hash = hashlib.sha256()
        file_name_hash.update(bytearray(file, 'UTF-8'))
        file_name_key = file_name_hash.hexdigest()

        if file_name_key in self.hashed_files:
            if self.check_file_hash(file):
                StaticUtilities.logger.debug("Cached file already exists")
                return True
        return False

    def check_file_hash(self, file: str) -> bool:
        """
        Uses the name of a file to find its hash in a dict. If a hash for this file exists get a bool representing
        a comparison between this hash and the existing hash.
        :return: True if this hash matches the newest hash in the dict for this file or if a hash does not exist,
        otherwise False.
        """
        file_name_hash = hashlib.sha256()
        file_name_hash.update(bytearray(file, 'UTF-8'))
        file_name_key = file_name_hash.hexdigest()
        if file_name_key not in self.hashed_files:
            return True
        sha256_file_hash_object = hashlib.sha256()  # Create the hash object, can use something other than `.sha256()` if you wish
        with open(file, 'rb') as f:  # Open the file to read it's bytes
            fb = f.read(StaticUtilities.hash_block_size)  # Read from the file. Take in the amount declared above
            while len(fb) > 0:  # While there is still data being read from the file
                sha256_file_hash_object.update(fb)  # Update the hash
                fb = f.read(StaticUtilities.hash_block_size)  # Read the next block from the file
        return self.hashed_files[file_name_key] == sha256_file_hash_object.hexdigest()

    def __detect_buffer_overflow_attack(self) -> bool:
        """
        Executes an algorithm on a file to attempt to detect a buffer overflow attacks in a source file.
        :return: True if a buffer overflow attack was detected, otherwise False.
        """
        pass

    def __detect_int_overflow_attack(self) -> bool:
        """
        Executes an algorithm on a file to attempt to detect an int overflow attacks in a source file.
        :return: True if an int overflow attack was detected, otherwise False.
        """
        pass

    def __detect_f_string_vulnerability(self) -> bool:
        """
        Executes an algorithm on a file to attempt to detect an f-string vulnerability in a source file.
        :return: True if an f-string vulnerability was detected, otherwise False.
        """
        pass


if __name__ == '__main__':
    project: CCSProject = CCSProject(project_type=ProjectType.C,
                                     path= StaticUtilities.project_root_directory() + r"\ccs_workspace\basic_overwrite_target",
                                     source_file="main.c")

    detection: Detection = Detection(project, pique_bin_bool=False)
    project.__hash__()
