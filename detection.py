"""
# Detection
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
"""
from typing import Dict
import json

from ccs_project import CCSProject, ProjectType
from detection_in_asm import DetectionInASM
from detection_in_c import DetectionInC
from detection_strategy import DetectionStrategy
from pique_bin import PiqueBin
from static_utilities import StaticUtilities


class Detection:
    """
    Attempts to detect various forms of malware or vulnerabilities with in a binary and source file pair.
    """

    def __init__(self, ccs_project: CCSProject, *, pique_bin_bool: bool = True, suppress_pique_bin_logs: bool = True) -> None:
        self.ccs_project: CCSProject = ccs_project
        self.pique_bin_security_quality: float = 0
        self.pique_bin_security_quality_threshold: float = 0.7  # TODO FIND AN ACTUALLY GOOD VALUE FOR THIS, I PULLED THIS OUT OF MY ARSE
        self.hash_json_file: str = "hashed_disassembly.json"
        self.binary_security_quality: float = 0
        self.hashed_files_dict: Dict[str: str] = self.serialize_hash_from_file()
        self._detection_strategy = DetectionInC(self.ccs_project) if self.ccs_project.project_type == ProjectType.C else DetectionInASM(self.ccs_project)
        if pique_bin_bool:
            self.pique_bin: PiqueBin = PiqueBin(source_file_name=self.ccs_project.source_file, suppress_printing_bool=suppress_pique_bin_logs)
        else:
            self.pique_bin = None
        StaticUtilities.logger.debug(f"{Detection.__name__} object initialized")

    @property
    def detection_strategy(self) -> DetectionStrategy:
        """
        Property representing the type of Concrete Strategy that this object contains a reference to.
        :return: The type of Concrete Strategy that this object contains a reference to.
        """
        return self._detection_strategy

    @detection_strategy.setter
    def detection_strategy(self, detection_strategy: DetectionStrategy) -> None:
        """
        Allows the concrete strategy object to be replaced at runtime.
        param detection_strategy: New concrete strategy object to replace with the current.
        :return: None.
        """
        self._detection_strategy = detection_strategy
        return

    def detect(self) -> bool:
        """
        Executes a sequence of algorithms to attempt to detect malware or vulnerabilities that may exist within a binary and a corresponding source file.
        :return: True if no malware or vulnerabilities are detected, False otherwise.
        """
        if self.hashed_file_exists_and_matches_cache():
            return True
        if isinstance(self.pique_bin, PiqueBin):
            self.pique_bin_security_quality = self.pique_bin.pique_bin()
            StaticUtilities.logger.debug(f"PIQUE-Bin Binary Security Quality: {self.pique_bin_security_quality}")
        if self.pique_bin_security_quality > self.pique_bin_security_quality_threshold:
            self.hashed_files_dict[self.ccs_project.hash_key()] = self.ccs_project.__hash__()
            self.write_hash_to_file()
            return True
        else:
            # TODO: this could implement multiprocessing if they take too long individually
            # TODO: These methods should probably build up some kind of string buffer or instance field and return that so that logging can be better controlled and only happens once for each method or once overall.
            self._detection_strategy.detect_buffer_overflow_attack()
            self._detection_strategy.detect_int_overflow_attack()
            self._detection_strategy.detect_injection_attack()
            self._detection_strategy.detect_string_format_attack()
            return False

    def serialize_hash_from_file(self) -> Dict[str: str]:
        """
        Serializes this hash_files_dict from a json file.
        :return: A Dict representing current hash of files.
        """
        serialized_object = None
        try:
            serialized_object = StaticUtilities.serialize_object_from_json(StaticUtilities.project_root_directory(), self.hash_json_file)
        except json.decoder.JSONDecodeError:
            return {}
        if isinstance(serialized_object, dict):
            return serialized_object
        return {}

    def write_hash_to_file(self) -> None:
        """
        Writes this hash files dict to a serializable json file.
        :return: None.
        """
        return StaticUtilities.write_object_to_json(StaticUtilities.project_root_directory(), self.hash_json_file, self.hashed_files_dict)

    def hashed_file_exists_and_matches_cache(self) -> bool:
        """
        Checks if a file has been cached.
        :return: True if the hashed value of the file matches the cached value.
        False if the file has not been cached or if the file has been cached and the hashed value of the file does not
        match the cached value.
        """
        file_name_key = self.ccs_project.hash_key()

        if file_name_key in self.hashed_files_dict:
            if self.check_file_hash():
                StaticUtilities.logger.debug("Cached file already exists")
                return True
        return False

    def check_file_hash(self) -> bool:
        """
        Uses the name of a file to find its hash in a dict. If a hash for this file exists get a bool representing
        a comparison between this hash and the existing hash.
        :return: True if this hash matches the newest hash in the dict for this file or if a hash does not exist,
        otherwise False.
        """
        file_name_key = self.ccs_project.hash_key()
        if file_name_key not in self.hashed_files_dict:
            return True
        return self.hashed_files_dict[file_name_key] == self.ccs_project.__hash__()


if __name__ == '__main__':
    project: CCSProject = CCSProject(project_type=ProjectType.C,
                                     path=StaticUtilities.project_root_directory() + r"\ccs_workspace\c_blank",
                                     source_file="c_blank.c")
    detection: Detection = Detection(project, pique_bin_bool=False)
    StaticUtilities.logger.debug(f"Project Hash: {project.__hash__()}")
    detection.pique_bin_security_quality = 0.9
    StaticUtilities.logger.debug(f"detection: {detection.detect()}")
