###############################
# Static Utilities
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
import os
import sys
from contextlib import contextmanager
from logging import Logger
from typing import TextIO


class StaticUtilities:
    """
    Class containing a set of static methods, components and context managers implemented throughout this project.
    """
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)

    @staticmethod
    def file_should_exist(file_directory: str, file: str, *, raise_error: bool = True) -> int:
        """
        Returns 0 if file exists. Otherwise raises OSError.
        :param raise_error: If true raises os error. Otherwise return 1.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :raises OSError: If file does not exist.
        :return: O if the files exists. 1 if the file does not exist and raise_error is False.
        """
        if not os.path.exists(f"{file_directory}\\{file}"):
            if raise_error:
                raise OSError(f"{file_directory}\\{file} does not exist")
            else:
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
        """
        Static Context Manager to temporarily change the current working directory (cwd).
        :param destination: Location to temporarily change the cwd to.
        :return: None.
        """
        cwd: str = ""
        try:
            cwd = os.getcwd()
            os.chdir(destination)
            yield
        finally:
            os.chdir(cwd)

    @staticmethod
    @contextmanager
    def change_stdout_to_file(new_stdout: TextIO) -> None:
        """
        Static Context Manager to temporarily change the python stdout.
        :param new_stdout: TextIO to change the stdout to temporarily.
        :return: None.
        """
        original_stdout: TextIO = sys.stdout
        try:
            original_stdout = sys.stdout
            sys.stdout = new_stdout
            yield
        finally:
            sys.stdout = original_stdout

