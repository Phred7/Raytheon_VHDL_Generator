###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import hashlib
from enum import IntEnum

from static_utilities import StaticUtilities


class ProjectType(IntEnum):
    C = 0
    ASM = 1


class CCSProject:
    def __init__(self,
                 project_type: ProjectType,
                 path: str,
                 source_file: str,
                 *,
                 project_name: str = None,
                 disassembly_path: str = None,
                 binary_path: str = None
                 ):
        self.project_type: ProjectType = project_type
        self.path = path
        self.project_name = project_name
        self.source_file = source_file
        self.disassembly_path = disassembly_path
        self.binary_path = binary_path
        self.__project_hash = None
        self.__project_hash_key = None

    def hash_key(self):
        """
        Creates a hash key for this CCSProject.
        This method is memoized.
        :return: hash key for this CCSProject.
        """
        if self.__project_hash_key is not None:
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
        if self.__project_hash is not None:
            sha256_file_hash_object = hashlib.sha256()  # Create the hash object, can use something other than `.sha256()` if you wish
            with open(f"{self.path}//{self.source_file}", 'rb') as file_to_hash:  # Open the file to read its bytes
                bytes_from_file = file_to_hash.read(
                    StaticUtilities.hash_block_size)  # Read from the file. Take in the amount declared above
                while len(bytes_from_file) > 0:  # While there is still data being read from the file
                    sha256_file_hash_object.update(bytes_from_file)  # Update the hash
                    bytes_from_file = file_to_hash.read(StaticUtilities.hash_block_size)  # Read the next block from the file
        ###########
            self.__project_hash = sha256_file_hash_object.hexdigest()
        return self.__project_hash
