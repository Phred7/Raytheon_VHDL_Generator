# create a ZipFile object
import logging
import os
from contextlib import contextmanager
from zipfile import ZipFile


class PackageZipper:

    def __init__(self) -> None:
        logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
        self.logger: logging.Logger = logging.getLogger(__name__)
        self.disassembly_file_directory: str = rf"\generated_disassembly"
        self.disassembly_file: str = rf"generated_disassembly.txt"
        self.vhdl_directory: str = rf'\generated_vhdl'

    @staticmethod
    def file_should_exist(file_directory: str, file: str) -> int:
        """
        Checks to see if the specified file exists.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :return: O if the files exists. Otherwise 1.
        """
        if not os.path.exists(f"{file_directory}\\{file}"):
            return 1
        return 0

    @staticmethod
    def file_should_not_exist(file_directory: str, file: str) -> int:
        """
        Checks to see if the specified file exists.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :return: O if the files exists. Otherwise 1.
        """
        if os.path.exists(f"{file_directory}\\{file}"):
            return 1
        return 0

    @staticmethod
    @contextmanager
    def change_dir(destination: str) -> None:
        cwd: str = ""
        try:
            cwd = os.getcwd()
            os.chdir(destination)
            yield
        finally:
            os.chdir(cwd)

    def zip_vhdl(self, zip_file_name: str = "zip") -> None:
        if self.file_should_exist(f'{os.getcwd()}\\{self.vhdl_directory}', f'{zip_file_name}.zip') == 0:
            raise OSError("Zip file already exists")
        print(os.getcwd())
        with ZipFile(f'{os.getcwd()}\\{self.vhdl_directory}\\{zip_file_name}.zip', 'w') as vhdl_zip_file:
            with self.change_dir(f'{os.getcwd()}\\{self.vhdl_directory}'):
                for file in os.listdir(os.getcwd()):
                    if file.endswith(".vhd"):
                        vhdl_zip_file.write(file)
                        self.logger.info(f'Zipped {file}')
            with self.change_dir(f'{os.getcwd()}\\{self.disassembly_file_directory}'):
                if self.file_should_exist(self.disassembly_file_directory, self.disassembly_file):
                    vhdl_zip_file.write(f"{self.disassembly_file}")
                    self.logger.info(f'Zipped {self.disassembly_file}')
        self.logger.info(f'Created zip {zip_file_name} in {os.getcwd()}\\{self.vhdl_directory}')
        return None


if __name__ == '__main__':
    zipper: PackageZipper = PackageZipper()
    zipper.zip_vhdl()
