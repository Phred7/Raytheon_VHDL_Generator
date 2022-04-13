"""
# Static Utilities
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
import _queue
import inspect
import json
import logging
import multiprocessing
import os
import pathlib
import sys
import datetime
from io import open

import psutil
import subprocess
import time
from contextlib import contextmanager
from logging import Logger
from typing import TextIO, List
from multiprocessing import Process, Queue

from custom_formatter import CustomFormatter


class StaticUtilities:
    """
    Class containing a set of static methods, components and context managers implemented throughout this project.
    """
    _project_root_directory_str: str = str(pathlib.Path(__file__).parent)

    # create logger
    logger: Logger = logging.getLogger(__name__)
    logger.setLevel(logging.DEBUG)

    ch = logging.StreamHandler()
    ch.setLevel(logging.DEBUG)
    ch.setFormatter(CustomFormatter())
    logger.addHandler(ch)

    # setup file logger and add to logger
    try:
        if os.path.exists(f'{_project_root_directory_str}\\log.log'):
            os.remove(f'{_project_root_directory_str}\\log.log')
        file_logging_handler = logging.FileHandler(f'{_project_root_directory_str}\\log.log')
        file_logging_handler.setFormatter(
            logging.Formatter('%(asctime)s %(levelname)s %(module)s %(funcName)s %(message)s'))
        file_logging_handler.setLevel(logging.DEBUG)
        logger.addHandler(file_logging_handler)
    except PermissionError:
        pass

    # setup extended file logger and add to logger
    extended_file_logging_handler = logging.FileHandler(f'{_project_root_directory_str}\\extended_log.log')
    extended_file_logging_handler.setFormatter(
        logging.Formatter('%(asctime)s %(levelname)s %(module)s %(funcName)s %(message)s'))
    extended_file_logging_handler.setLevel(logging.DEBUG)
    logger.addHandler(extended_file_logging_handler)

    hash_block_size: int = 1000000  # The size of each read from the file_to_hash (1 megabyte)

    @staticmethod
    def file_should_exist(file_directory: str, file: str) -> None:
        """
        Asserts that this file is in a given directory.
        :param file_directory: Location of directory containing the file.
        :param file: The name of the file that should exist.
        :raises OSError: If file does not exist.
        :return: None.
        """
        assert (not os.path.exists(f"{file_directory}\\{file}") or file is None or file == "")

    @staticmethod
    def file_exists(file_directory: str, file: str) -> bool:
        """
        Checks the existence of a file in a given directory.
        :param file_directory: Location of directory containing the file.
        :param file: The name of the file that should exist.
        :return: True if the files exists. False if the file does not exist and raise_error is False.
        """
        if not os.path.exists(f"{file_directory}\\{file}") or file is None or file == "":
            return False
        return True

    @staticmethod
    def file_should_not_exist(file_directory: str, file: str, *, raise_error: bool = True) -> bool:
        """
        Checks to see if the specified file exists.
        :param raise_error: If true raises an OS error if the file exists, otherwise returns False.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :return: True if the files does not exist, otherwise False.
        """
        if os.path.exists(f"{file_directory}\\{file}"):
            if raise_error:
                raise OSError(f"{file_directory}\\{file} exist")
            return False
        return True

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
        if (False if _service_name == "" else not StaticUtilities.service_running(
                _service_name)) or not StaticUtilities.process_running(
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
            StaticUtilities.logger.info(f"{process_name} process running")
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
        return StaticUtilities.start_process(process_name=docker_process_name, executable_name=docker_executable_name,
                                             executable_directory=docker_executable_directory,
                                             service_name=docker_desktop_service_name, start_process_timeout=timeout,
                                             start_process_delay=timeout_delay)

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
        return StaticUtilities.start_process(process_name=ccs_process_name, executable_name=ccs_exe_name,
                                             executable_directory=ccs_exe_dir, start_process_timeout=timeout,
                                             start_process_delay=timeout_delay)

    @staticmethod
    def stop_process(process_name: str, executable_name: str, *, implement_logger: bool = True, stop_delay: int = 2,
                     force_kill: bool = False) -> bool:
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
        return StaticUtilities.stop_process(process_name=ccs_process_name, executable_name=ccs_executable_name,
                                            force_kill=force_kill)

    @staticmethod
    def process_running(process_name: str) -> bool:  # TODO: Add better error checking.
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
    def service_running(service_name: str) -> bool:  # TODO: Add better error checking.
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
            cwd = StaticUtilities.project_root_directory()
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

    @staticmethod
    def extract_zip(path_to_zip: str, extraction_directory) -> None:
        import zipfile
        with zipfile.ZipFile(path_to_zip, 'r') as zip_reference:
            zip_reference.extractall(extraction_directory)
        StaticUtilities.logger.debug(f"{path_to_zip} unzipped into {extraction_directory}")

    @staticmethod
    def multiprocess_hide_directory(directory: str, hide: bool, *, leave_root_hidden: bool = True) -> bool:
        processes: List[Process] = []
        queue: Queue = Queue()

        if (not leave_root_hidden) and (not hide):
            os.system(f"attrib -h {directory[:-1]}")
        else:
            os.system(f"attrib +h {directory[:-1]}")

        for (path, name, filenames) in os.walk(directory):
            if not path == directory:
                queue.put(path)
            [queue.put(os.path.join(path, file)) for file in filenames]

        for i in range(os.cpu_count() - 1):  # len(os.sched_getaffinity(0)) on Unix to get number of available
            processes.append((multiprocessing.Process(target=StaticUtilities._mp_hide_directory, args=(queue, hide,),
                                                      name=f"Static File Hide Process {i}")))
        for process in processes:
            process.start()
        while not queue.empty():
            continue
        for process in processes:
            process.join()
        return True

    @staticmethod
    def _mp_hide_directory(file_queue: Queue, hide: bool) -> None:
        while not file_queue.empty():
            try:
                file: str = file_queue.get(timeout=2)
                os.system(f"attrib {'+h' if hide else '-h'} \"{file}\"")
            except _queue.Empty as empty:
                StaticUtilities.logger.debug(f"Caught {empty.__class__} exception in {inspect.stack()[0][3]}")
                return
        return

    @staticmethod
    def hide_directory_recursively(directory: str, *, log: bool = True) -> bool:
        """
        Hides all the files and directories in a directory specified by directory.
        :param directory: Top level directory to hide contents of as a string.
        :param log: Optionally logs all the files and directories that are hidden. True generates logs, false suppresses them.
        :return:
        """
        os.system(f"attrib +h {directory[:-1]}")
        files: List[str] = []
        for (path, name, filenames) in os.walk(directory):
            files += [os.path.join(path, file) for file in filenames]
            if not path == directory:
                os.system(f"attrib +h \"{path}\"")
                if log:
                    StaticUtilities.logger.debug(f"{path} hidden")
        for file in files:
            os.system(f"attrib +h \"{file}\"")
            if log:
                StaticUtilities.logger.debug(f"{file} hidden")
        return True

    @staticmethod
    def un_hide_directory_recursively(directory: str, *, log: bool = True, leave_root_hidden: bool = False) -> None:
        """
        Removes the h (hidden) attribute from all files in a directory recursively.
        :param directory: Directory to un hide all files from recursively.
        :param log: Bool representing whether to generate logs in this function. Defaults to True.
        :param leave_root_hidden: Bool representing whether to un hide the top directory. Defaults to False.
        :return: None.
        """
        if not leave_root_hidden:
            os.system(f"attrib -h {directory[:-1]}")
        files: List[str] = []
        for (path, name, filenames) in os.walk(directory):
            files += [os.path.join(path, file) for file in filenames]
            if not path == directory:
                os.system(f"attrib -h \"{path}\"")
                if log:
                    StaticUtilities.logger.debug(f"{path} hidden")
        for file in files:
            os.system(f"attrib -h \"{file}\"")
            if log:
                StaticUtilities.logger.debug(f"{file} hidden")

    @staticmethod
    def project_root_directory() -> str:
        """
        Get this project's top level directory.
        :return: Str representing the path to this project's top-level directory.
        """
        return StaticUtilities._project_root_directory_str

    @staticmethod
    def write_object_to_json(json_file_directory: str, json_file: str, object_to_dump_to_json: object) -> None:
        """
        Writes an object to a json file.
        :param json_file_directory: Path to the json file to write to.
        :param json_file: Name of the json file to write to.
        :param object_to_dump_to_json: Object that's converted to json and written to the json file.
        :return: None.
        """
        with open(f"{json_file_directory}\\{json_file}", 'w') as json_file:
            json.dump(object_to_dump_to_json, json_file, indent=4)

    @staticmethod
    def serialize_object_from_json(json_file_directory: str, json_file: str) -> object:
        """
        Serializes a python object from a json file.
        :param json_file_directory: Path to the json file to serialize from.
        :param json_file: Name of the json file to serialize from.
        :return: Serialized object from the json_file.
        """
        if not StaticUtilities.file_exists(json_file_directory, json_file):
            return None
        with open(f"{json_file_directory}\\{json_file}", 'r') as json_file:
            return json.load(json_file)


if __name__ == "__main__":
    print(StaticUtilities.project_root_directory())
    # StaticUtilities.start_ccs()
    # time.sleep(5)
    # StaticUtilities.stop_ccs(force_kill=True)
