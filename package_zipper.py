"""
# Package Zipper
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
import os
import shutil
from zipfile import ZipFile
from static_utilities import StaticUtilities


class PackageZipper:
    """
    Helper class that creates a zip file of various sets of files by implementing one of this class's methods.
    """
    def __init__(self) -> None:
        self.number_of_zipped_files: int = 0
        self.disassembly_file_directory: str = rf"\generated_disassembly"
        self.disassembly_file: str = rf"generated_disassembly.txt"
        self.vhdl_directory: str = rf'\generated_vhdl'
        StaticUtilities.logger.debug(f"{PackageZipper.__name__} object initialized")

    def _zip_write(self, zip_file: ZipFile, file_to_write) -> None:
        """
        Writes a file to an existing ZipFile.
        :param zip_file: Instance of ZipFile.
        :param file_to_write: File to add to the ZipFile zip_file.
        :return: None.
        """
        zip_file.write(file_to_write)
        self.number_of_zipped_files += 1
        StaticUtilities.logger.debug(f'Zipped {file_to_write}')

    def zip_vhdl(self, zip_file_name: str = "zip") -> None:
        """
        Creates a zip file containing all vhdl files and a copy of generated_disassembly.txt.
        :param zip_file_name: Name of the zip file. Neglect the file extension.
        :return: None.
        """
        self.number_of_zipped_files = 0
        duplicate_file_modifier: int = 0

        # Verifies that this zip file doesnt already exist. If so, gives it a new name until a unique one is chosen.
        while StaticUtilities.file_exists(f'{StaticUtilities.project_root_directory()}\\{self.vhdl_directory}', f'{zip_file_name}.zip'):
            if duplicate_file_modifier == 0:
                zip_file_name = f"{zip_file_name}_[0]"
            else:
                zip_file_name = zip_file_name.replace(f"_[{duplicate_file_modifier-1}]", f"_[{duplicate_file_modifier}]")
            duplicate_file_modifier += 1

        # Zips VHDL package
        with ZipFile(f'{StaticUtilities.project_root_directory()}\\{self.vhdl_directory}\\{zip_file_name}.zip', 'w') as vhdl_zip_file:
            with StaticUtilities.change_dir(f'{StaticUtilities.project_root_directory()}\\{self.vhdl_directory}'):
                for file in os.listdir("."):
                    if file.endswith(".vhd"):
                        self._zip_write(vhdl_zip_file, file)
            with StaticUtilities.change_dir(f'{StaticUtilities.project_root_directory()}{self.disassembly_file_directory}'):
                if StaticUtilities.file_exists(".", self.disassembly_file):
                    shutil.copyfile(self.disassembly_file, f"{self.disassembly_file}.cp")
                    self._zip_write(vhdl_zip_file, self.disassembly_file)
                    shutil.copyfile(f"{self.disassembly_file}.cp", self.disassembly_file)
                    os.remove(f"{self.disassembly_file}.cp")

        # Warns about name changes from duplicate zips.
        if duplicate_file_modifier != 0:
            StaticUtilities.logger.warning(f'Created zip {zip_file_name}.zip in {StaticUtilities.project_root_directory()}\\{self.vhdl_directory} containing {self.number_of_zipped_files} files')
        else:
            StaticUtilities.logger.info(f'Created zip {zip_file_name}.zip in {StaticUtilities.project_root_directory()}\\{self.vhdl_directory} containing {self.number_of_zipped_files} files')
        return None


if __name__ == '__main__':
    zipper: PackageZipper = PackageZipper()
    zipper.zip_vhdl()
