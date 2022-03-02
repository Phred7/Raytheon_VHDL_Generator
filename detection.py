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

from pique_bin import PiqueBin
from static_utilities import StaticUtilities


class Detection:
    """
    Attempts to detect various forms of malware or vulnerabilities with in a binary and source file pair.
    """

    def __init__(self, path: str, source_file: str, *, pique_bin_bool: bool = True, suppress_pique_bin_logs: bool = True) -> None:  # TODO: this constructor need to be updated. Should contain reference to ccs project, source file, binary file and possibly disassembly.
        self.hash: Dict[int: str] = None
        self.source_file: str = source_file
        self.path: str = path
        self.binary_security_quality: float = 0
        if pique_bin_bool:
            self.pique_bin: PiqueBin = PiqueBin(source_file_name=self.source_file, suppress_printing_bool=suppress_pique_bin_logs)
        else:
            self.pique_bin = None
        StaticUtilities.logger.debug(f"{Detection.__name__} object initialized")
        self.hashed_files: dict = self.initialize_hash_dict()
        # self.hashed_files: dict = {}

    def detect(self, check_against_hash: bool = True) -> bool:
        """
        Executes a sequence of algorithms to attempt to detect malware or vulnerabilities that may exist within a binary and a corresponding source file.
        :return: True if no malware or vulnerabilities are detected, False otherwise.
        """

        if self.hashed_file_exists_and_matches_cache(f"{self.path}\\{self.source_file}"):
            return True
        else:
            security_quality: float = 0.8
            threshold = 0.7 # TODO FIND AN ACTUALLY GOOD VALUE FOR THIS, I PULLED THIS OUT OF MY ARSE

            if isinstance(self.pique_bin, PiqueBin):
                security_quality = self.pique_bin.pique_bin()
                StaticUtilities.logger.info(
                    f"PIQUE-Bin Binary Security Quality: {security_quality}")
            if security_quality > threshold:
                self.hash_file(f"{self.path}\\{self.source_file}")

        return True # TODO: NO
        # If the Security Quality is below some threshold loop through vulnerability inspections.

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
            if self._check_file_hash(file):
                StaticUtilities.logger.debug("Cached file already exists")
                return True
        return False

    def hash_file(self, file: str) -> None:
        """
        Creates a hash of the contents of the file and writes it to a serialized dict.
        :param file: The file to be hashed. Name of the file must be unique among all hashed files.
        :return:
        """

        # The following including comments borrowed from https://nitratine.net/blog/post/how-to-hash-files-in-python/ until '###########' reached
        BLOCK_SIZE = 1000000  # The size of each read from the file (1 megabyte)

        file_hash = hashlib.sha256()  # Create the hash object, can use something other than `.sha256()` if you wish
        with open(file, 'rb') as f:  # Open the file to read it's bytes
            fb = f.read(BLOCK_SIZE)  # Read from the file. Take in the amount declared above
            while len(fb) > 0:  # While there is still data being read from the file
                file_hash.update(fb)  # Update the hash
                fb = f.read(BLOCK_SIZE)  # Read the next block from the file
        ###########

        file_name_hash = hashlib.sha256()
        file_name_hash.update(bytearray(file, 'UTF-8'))
        file_name_key = file_name_hash.hexdigest()
        self.hashed_files[file_name_key] = file_hash.hexdigest()
        g = open(f"./hashed_disassemblies.json", 'w')
        g.write(json.dumps(self.hashed_files))
        g.close()
        StaticUtilities.logger.info("Wrote to cache file hashed_disassemblies.json")

    def _check_file_hash(self, file: str) -> bool:
        """
        Uses the name of a file to find it's hash in a dict. If a hash for this file exists get a bool representing
        a comparison between this hash and the existing hash.
        :return: True if this hash matches the newest hash in the dict for this file or if a hash does not exist,
        otherwise False.
        """
        file_name_hash = hashlib.sha256()
        file_name_hash.update(bytearray(file, 'UTF-8'))
        file_name_key = file_name_hash.hexdigest()
        if file_name_key not in self.hashed_files:
            return True
        BLOCK_SIZE = 1000000  # The size of each read from the file (1 megabyte)
        file_hash = hashlib.sha256()  # Create the hash object, can use something other than `.sha256()` if you wish
        with open(file, 'rb') as f:  # Open the file to read it's bytes
            fb = f.read(BLOCK_SIZE)  # Read from the file. Take in the amount declared above
            while len(fb) > 0:  # While there is still data being read from the file
                file_hash.update(fb)  # Update the hash
                fb = f.read(BLOCK_SIZE)  # Read the next block from the file
        return self.hashed_files[file_name_key] == file_hash.hexdigest()

    def initialize_hash_dict(self) -> dict:
        if not os.path.exists("./hashed_disassemblies.json"):
            return {}
        with open("hashed_disassemblies.json", 'r') as f:
            return json.loads(f.read())

    def _detect_buffer_overflow_attack(self) -> bool:
        """
        Executes an algorithm on a file to attempt to detect a buffer overflow attacks in a source file.
        :return: True if a buffer overflow attack was detected, otherwise False.
        """
        pass

    def _detect_int_overflow_attack(self) -> bool:
        """
        Executes an algorithm on a file to attempt to detect an int overflow attacks in a source file.
        :return: True if an int overflow attack was detected, otherwise False.
        """
        pass

    def _detect_f_string_vulnerability(self) -> bool:
        """
        Executes an algorithm on a file to attempt to detect an f-string vulnerability in a source file.
        :return: True if an f-string vulnerability was detected, otherwise False.
        """
        pass


if __name__ == "__main__":
    f = open("./spam.txt", 'w')
    f.write("old text")
    f.close()
    detection: Detection = Detection(path=r"Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", source_file="test_generated_ASM.asm", pique_bin_bool=False)
    print(detection._check_file_hash("spam.txt"))
    detection.hash_file("")
    print(detection._check_file_hash("spam.txt"))
    f = open("./spam.txt", 'w')
    f.write("new text")
    f.close()
    print(detection._check_file_hash("spam.txt"))
    os.remove("./spam.txt")
