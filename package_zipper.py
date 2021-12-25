###############################
# Package Zipper
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import os
from zipfile import ZipFile
from static_utilities import StaticUtilities


class PackageZipper:

    def __init__(self) -> None:
        self.disassembly_file_directory: str = rf"\generated_disassembly"
        self.disassembly_file: str = rf"generated_disassembly.txt"
        self.vhdl_directory: str = rf'\generated_vhdl'

    def zip_vhdl(self, zip_file_name: str = "zip") -> None:
        if StaticUtilities.file_should_exist(f'{os.getcwd()}\\{self.vhdl_directory}', f'{zip_file_name}.zip', raise_error=False) == 0:
            raise OSError("Zip file already exists")
        print(os.getcwd())
        with ZipFile(f'{os.getcwd()}\\{self.vhdl_directory}\\{zip_file_name}.zip', 'w') as vhdl_zip_file:
            with StaticUtilities.change_dir(f'{os.getcwd()}\\{self.vhdl_directory}'):
                for file in os.listdir(os.getcwd()):
                    if file.endswith(".vhd"):
                        vhdl_zip_file.write(file)
                        StaticUtilities.logger.info(f'Zipped {file}')
            with StaticUtilities.change_dir(f'{os.getcwd()}\\{self.disassembly_file_directory}'):
                if StaticUtilities.file_should_exist(self.disassembly_file_directory, self.disassembly_file, raise_error=False):
                    vhdl_zip_file.write(f"{self.disassembly_file}")
                    StaticUtilities.logger.info(f'Zipped {self.disassembly_file}')
        StaticUtilities.logger.info(f'Created zip {zip_file_name} in {os.getcwd()}\\{self.vhdl_directory}')
        return None


if __name__ == '__main__':
    zipper: PackageZipper = PackageZipper()
    zipper.zip_vhdl()
