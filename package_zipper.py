# create a ZipFile object
import logging
import os
from contextlib import contextmanager
from zipfile import ZipFile

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
logger: logging.Logger = logging.getLogger(__name__)

disassembly_file_directory: str = rf"\generated_disassembly"
disassembly_file: str = rf"generated_disassembly.txt"
vhdl_directory: str = rf'\generated_vhdl'


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


@contextmanager
def change_dir(destination: str) -> None:
    cwd: str = ""
    try:
        cwd = os.getcwd()
        os.chdir(destination)
        yield
    finally:
        os.chdir(cwd)


def zip_vhdl(zip_file_name: str = "zip") -> None:
    if file_should_exist(f'{os.getcwd()}\\{vhdl_directory}', f'{zip_file_name}.zip') == 0:
        raise OSError("Zip file already exists")
    print(os.getcwd())
    with ZipFile(f'{os.getcwd()}\\{vhdl_directory}\\{zip_file_name}.zip', 'w') as vhdl_zip_file:
        with change_dir(f'{os.getcwd()}\\{vhdl_directory}'):
            for file in os.listdir(os.getcwd()):
                if file.endswith(".vhd"):
                    vhdl_zip_file.write(file)
                    logger.info(f'Zipped {file}')
        with change_dir(f'{os.getcwd()}\\{disassembly_file_directory}'):
            if file_should_exist(disassembly_file_directory, disassembly_file):
                vhdl_zip_file.write(f"{disassembly_file}")
                logger.info(f'Zipped {disassembly_file}')
    logger.info(f'Created zip {zip_file_name} in {os.getcwd()}\\{vhdl_directory}')
    return None


if __name__ == '__main__':
    zip_vhdl()
