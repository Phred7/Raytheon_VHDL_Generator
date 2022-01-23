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
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s', datefmt="%m-%d-%Y %H:%M:%S")
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
    def str_should_contain_substring(string: str, substring: str) -> None:
        """
        Asserts that the provided string contains the provided substring.
        :param string: String that should contain the substring.
        :param substring: Substring that the string should contain.
        :return: None.
        """
        assert substring in string

    @staticmethod
    def start_process(process_name: str, 
                      executable_name: str, 
                      executable_directory: str, 
                      *, 
                      service_name: str = "", 
                      implement_logger: bool = True, 
                      start_process_timeout: int = 5, 
                      start_process_delay: int = 2) -> bool:
        """
        Attempts to start a defined process on Windows.
        :param process_name: Name of process to start. Format: "Docker Desktop"
        :param executable_name: Name of the executable file to start. Format: "Docker Desktop.exe"
        :param executable_directory: Format: Location of the executable file on disk. "C:\\Program Files\\Docker\\Docker\\"
        :param service_name: Name of the service associated with the process to start as it appears in the services' application on Win10.  # Format: "com.docker.service"
        :param implement_logger: Bool representing whether to log information with the Static Util's logger. Defaults to True.
        :param start_process_timeout: Amount of time in seconds to wait for this process to start before timing out.
        :param start_process_delay: Amount of time in seconds to wait before proceeding after an attempt is made to start a process.
        :return: Bool representing the success of starting the defined process. True when successfully started the process.
        """
        _process_name: str = process_name
        _executable_name: str = executable_name
        _executable_directory: str = executable_directory
        _executable: str = _executable_directory + _executable_name
        _service_name: str = service_name
        StaticUtilities.file_should_exist(file_directory=_executable_directory, file=_executable_name)
        if (False if _service_name == "" else not StaticUtilities.service_running(_service_name)) or not StaticUtilities.process_running(
                _executable_name):
            # attempt to start the process
            if implement_logger:
                StaticUtilities.logger.info(f"Starting {_process_name}")
            subprocess.Popen(_executable)
            start_time: time = datetime.datetime.now()
            time.sleep(start_process_delay)
            timeout: datetime.timedelta = datetime.timedelta(seconds=start_process_timeout)
            while not StaticUtilities.process_running(
                    _executable_name) and datetime.datetime.now() < start_time + timeout:
                time.sleep(1)
            if datetime.datetime.now() > start_time + timeout:
                if implement_logger:
                    StaticUtilities.logger.warning(f"Starting {process_name} Timed Out")
        if not StaticUtilities.process_running(_executable_name):
            if implement_logger:
                StaticUtilities.logger.error(f"Failed to start process {process_name}")
            return False
        if implement_logger:
            StaticUtilities.logger.info(f"Successfully started process {process_name}")
        return True

    @staticmethod
    def start_docker_desktop() -> bool:
        """
        Starts Docker Desktop on Windows if the process is not already running.
        :return: Representation of the state of Docker Desktop Process. True if running.
        """
        docker_process_name: str = "Docker Desktop"
        docker_executable_name: str = "Docker Desktop.exe"
        docker_executable_directory: str = "C:\\Program Files\\Docker\\Docker\\"
        docker_desktop_service_name: str = "com.docker.service"
        timeout: int = 30
        timeout_delay: int = 15
        return StaticUtilities.start_process(process_name=docker_process_name, executable_name=docker_executable_name, executable_directory=docker_executable_directory, service_name=docker_desktop_service_name, start_process_timeout=timeout, start_process_delay=timeout_delay)

    @staticmethod
    def start_ccs() -> bool:
        """
        Attempts to start Code Composer Studio on Windows if not already running
        :return: Bool representation of the state of Code Composer Studio Process. True if running.
        """
        ccs_process_name: str = "Code Composer Studio"
        ccs_exe_name: str = "ccstudio.exe"
        ccs_exe_dir: str = "C:\\ti\\ccs1040\\ccs\\eclipse\\"
        timeout: int = 5
        timeout_delay: int = 2
        return StaticUtilities.start_process(process_name=ccs_process_name, executable_name=ccs_exe_name, executable_directory=ccs_exe_dir, start_process_timeout=timeout, start_process_delay=timeout_delay)

    @staticmethod
    def stop_process(process_name: str, executable_name: str, *, implement_logger: bool = True, stop_delay: int = 2, force_kill: bool = False) -> bool:
        """
        Attempts to stop a defined process.
        :param process_name: Name of process to stop. Format: "Docker Desktop"
        :param executable_name: Name of the executable file to start. Format: "Docker Desktop.exe"
        :param implement_logger: Bool representing whether to log information with the Static Util's logger. Defaults to True.
        :param stop_delay: Amount of time in seconds to wait before proceeding after an attempt is made to start a process.
        :param force_kill: Bool representing whether to force kill the process.
        :return: Bool representing the success of stoping the defined process. True when the process was successfully stopped.
        """
        _process_name: str = process_name
        _executable_name: str = executable_name
        if StaticUtilities.process_running(_executable_name):
            if implement_logger:
                StaticUtilities.logger.info(f"Stopping {_process_name}")
            subprocess.run(f"taskkill {'/f' if force_kill else ''} /im {_executable_name}")
            time.sleep(stop_delay)
        if StaticUtilities.process_running(_executable_name):
            if implement_logger:
                StaticUtilities.logger.error(f"Failed to stop process {_process_name}")
            return False
        if implement_logger:
            StaticUtilities.logger.info(f"Successfully stopped process {_process_name}")

    @staticmethod
    def stop_ccs(*, force_kill: bool = False) -> bool:
        """
        Attempts to stop Code Composer Studio on Windows if the process is running.
        :param force_kill: Forces the process to stop regardless of process state.
        :return: Bool representation of the state of Code Composer Studio Process. True if stopped.
        """
        ccs_process_name: str = "Code Composer Studio"
        ccs_executable_name: str = "ccstudio.exe"
        return StaticUtilities.stop_process(process_name=ccs_process_name, executable_name=ccs_executable_name, force_kill=force_kill)

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
    def ccs_process_running() -> bool:
        """
        Gets the state of CCS process as a bool.
        :return: True if the CCS process is running, otherwise False.
        """
        _executable_name: str = "ccstudio.exe"
        return StaticUtilities.process_running(_executable_name)

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


if __name__ == "__main__":
    StaticUtilities.start_ccs()
    time.sleep(5)
    StaticUtilities.stop_ccs(force_kill=True)
