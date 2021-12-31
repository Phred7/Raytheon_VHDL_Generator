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
import datetime
import psutil
import subprocess
import time
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
        :param raise_error: If true raises an OS error if the file does not exist, otherwise returns 1.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :raises OSError: If file does not exist.
        :return: O if the files exists. 1 if the file does not exist and raise_error is False.
        """
        if not os.path.exists(f"{file_directory}\\{file}") or file is None or file == "":
            if raise_error:
                raise OSError(f"{file_directory}\\{file} does not exist")
            return 1
        return 0

    @staticmethod
    def file_should_not_exist(file_directory: str, file: str, *, raise_error: bool = True) -> int:
        """
        Checks to see if the specified file exists.
        :param raise_error: If true raises an OS error if the file exists, otherwise returns 1.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :return: O if the files exists, otherwise 1.
        """
        if os.path.exists(f"{file_directory}\\{file}"):
            if raise_error:
                raise OSError(f"{file_directory}\\{file} exist")
            return 1
        return 0

    @staticmethod
    def str_should_contain_substr(string: str, substring: str) -> None:
        if substring not in string:
            raise ValueError(f"substring '{substring}' not found in string '{string}'")

    @staticmethod
    def start_docker_desktop() -> bool:
        """
        Starts Docker Desktop on Windows if the process is not already running.
        :return: Representation of the state of Docker Desktop Process.
        """
        docker_executable_name: str = "Docker Desktop.exe"
        docker_executable_directory: str = "C:\\Program Files\\Docker\\Docker\\"
        docker_desktop_executable: str = docker_executable_directory + docker_executable_name
        StaticUtilities.file_should_exist(file_directory=docker_executable_directory, file=docker_executable_name)
        if not StaticUtilities.service_running("com.docker.service") or not StaticUtilities.process_running(
                "Docker Desktop.exe"):
            # attempt to start the docker desktop process
            StaticUtilities.logger.info("Starting Docker Desktop")
            subprocess.Popen(docker_desktop_executable)
            timeout: datetime.timedelta = datetime.timedelta(seconds=10)
            start_time: time = datetime.datetime.now()
            while not StaticUtilities.process_running(
                    "Docker Desktop.exe") and datetime.datetime.now() < start_time + timeout:
                time.sleep(1)
            if datetime.datetime.now() > start_time + timeout:
                StaticUtilities.logger.warning("Starting Docker Desktop Timed Out")
        if not StaticUtilities.process_running("Docker Desktop.exe"):
            return False
        return True

    @staticmethod
    def process_running(process_name: str) -> bool:  # TODO: Add error checking.
        """
        Checks if the process with the name process_name is running.
        :param process_name: Name of the process to check the status of.
        :return: Bool representation of the status of this process. True if running, otherwise False.
        """
        # Borrowed from https://thispointer.com/python-check-if-a-process-is-running-by-name-and-find-its-process-id-pid/
        # Iterate over the all the running process
        for proc in psutil.process_iter():
            try:
                # Check if process name contains the given name string.
                if process_name.lower() in proc.name().lower():
                    return True
            except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
                continue
        return False

    @staticmethod
    def service_running(service_name: str) -> bool:  # TODO: Add error checking.
        """
        Checks if the service with the name service_name is running.
        :param service_name: Name of the service to check the status of.
        :return: Bool representation of the status of this process. True if running, otherwise False.
        """
        return psutil.win_service_get(service_name).as_dict()["status"] == "running"

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
