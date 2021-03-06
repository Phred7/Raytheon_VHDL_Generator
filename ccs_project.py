"""
# CCSProject
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
import hashlib
import pathlib
from copy import deepcopy
from enum import IntEnum
from typing import Dict

from static_utilities import StaticUtilities


class ProjectType(IntEnum):
    C = 0
    ASM = 1


file_extension: Dict[ProjectType, str] = {
    ProjectType.C: ".c",
    ProjectType.ASM: ".asm"
}


class CCSProject:
    def __init__(self,
                 path: pathlib.Path,
                 source_file: str,
                 *,
                 project_name: str = None,
                 ):
        self.project_type: ProjectType = ProjectType.C if file_extension[ProjectType.C] in source_file else (ProjectType.ASM if file_extension[ProjectType.ASM] in source_file else None)   # C or ASM (enumerated)
        self.path = path                                # Path to root of project, e.g. C:\Users\Mike\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\int_overflow_target_C
        self.project_name = project_name                # Name of the project (useful for output)
        self.source_file = source_file                  # The file which is to be instrumented or inspected
        self.disassembly_file_path = ""
        self.binary_file_path: pathlib.Path

        # this section automatically determines which build to use. Prioritizes VHDLGenerator
        vhdl_build_file_path: pathlib.Path = self.path / "VHDLGenerator"
        debug_build_file_path: pathlib.Path = self.path / "Debug"
        if StaticUtilities.file_exists(vhdl_build_file_path, f"{project_name}.out"):
            self.binary_file_path = pathlib.Path(f"VHDLGenerator") / f"{project_name}.out"
        elif StaticUtilities.file_exists(vhdl_build_file_path, self.source_file.replace(self.source_file[self.source_file.index("."):], ".out")):
            self.binary_file_path = pathlib.Path(f"VHDLGenerator)") / f"{self.source_file.replace(self.source_file[self.source_file.index('.'):], '.out')}"
        elif StaticUtilities.file_exists(debug_build_file_path, f"{project_name}.out"):
            self.binary_file_path = pathlib.Path("Debug") / f"{project_name}.out"
        else:
            self.binary_file_path = pathlib.Path("Debug") / f"{self.source_file.replace(self.source_file[self.source_file.index('.'):], '.out')}"

        self.__project_hash = None
        self.__project_hash_key = None

    def __str__(self):
        return f"{self.path}\\{self.source_file}"

    def c_project(self) -> bool:
        """
        Checks if this CCSProject's ProjectType is C.
        :return: bool representing the ProjectType of this CCSProject. True if ProjectType is C.
        """
        return self.project_type == ProjectType.C

    def hash_key(self):
        """
        Creates a hash key for this CCSProject.
        This method is memoized.
        :return: hash key for this CCSProject.
        """
        if self.__project_hash_key is None:
            file_name_hash = hashlib.sha256()
            file_name_hash.update(bytearray(self.source_file, 'UTF-8'))
            self.__project_hash_key = file_name_hash.hexdigest()
        return self.__project_hash_key

    def __hash__(self) -> hash:
        """
        Creates a hash of this CCSProject.
        This method is memoized.
        :return: hash of this CCSProject.
        """
        # The following including comments borrowed from https://nitratine.net/blog/post/how-to-hash-files-in-python/ until '###########' reached
        if self.__project_hash is None:
            sha256_file_hash_object = hashlib.sha256()  # Create the hash object, can use something other than `.sha256()` if you wish
            file_path: pathlib.Path = self.path / self.source_file
            with open(file_path, 'rb') as file_to_hash:  # Open the file to read its bytes
                bytes_from_file = file_to_hash.read(StaticUtilities.hash_block_size)  # Read from the file. Take in the amount declared above
                while len(bytes_from_file) > 0:  # While there is still data being read from the file
                    sha256_file_hash_object.update(bytes_from_file)  # Update the hash
                    bytes_from_file = file_to_hash.read(StaticUtilities.hash_block_size)  # Read the next block from the file
        ###########
            self.__project_hash = sha256_file_hash_object.hexdigest()
        return self.__project_hash

    def set_disassembly_file_path(self, path: pathlib.Path):
        self.disassembly_file_path = path

    def get_path_to_source_file(self) -> pathlib.Path:
        return self.path / self.source_file
