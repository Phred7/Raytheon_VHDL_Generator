import hashlib
import json
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

    def __hash__(self):
        """
        Creates a hash of the contents of the file and writes it to a serialized dict.
        :param file: The file to be hashed. Name of the file must be unique among all hashed files.
        :return: None.
        """

        # The following including comments borrowed from https://nitratine.net/blog/post/how-to-hash-files-in-python/ until '###########' reached
        assert StaticUtilities.file_should_exist(self.path, self.source_file, raise_error=False)

        sha256_file_hash_object = hashlib.sha256()  # Create the hash object, can use something other than `.sha256()` if you wish
        with open(f"{self.path}//{self.source_file}", 'rb') as file_to_hash:  # Open the file to read its bytes
            bytes_from_file = file_to_hash.read(
                StaticUtilities.hash_block_size)  # Read from the file. Take in the amount declared above
            while len(bytes_from_file) > 0:  # While there is still data being read from the file
                sha256_file_hash_object.update(bytes_from_file)  # Update the hash
                bytes_from_file = file_to_hash.read(StaticUtilities.hash_block_size)  # Read the next block from the file
        ###########

        file_name_hash = hashlib.sha256()
        file_name_hash.update(bytearray(self.source_file, 'UTF-8'))
        file_name_key = file_name_hash.hexdigest()

        hashed_files: dict = StaticUtilities.initialize_hash_dict()
        hashed_files[file_name_key] = sha256_file_hash_object.hexdigest()
        assert StaticUtilities.file_should_exist(StaticUtilities.project_root_directory(), StaticUtilities.hash_json_file,
                                                 raise_error=False)

        with open(f"{StaticUtilities.project_root_directory()}{StaticUtilities.hash_json_file}", 'w') as g:
            g.write(json.dumps(hashed_files))

        StaticUtilities.logger.debug(f"Wrote to cache file {StaticUtilities.hash_json_file}")
