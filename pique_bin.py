###############################
# Pique Bin
# PIQUE-BIN tool written by Andrew L. Johnson
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
import os
import shutil
import subprocess
from contextlib import contextmanager
from logging import Logger


class PiqueBin:

    def __init__(self, binary_file_name: str, binary_file_directory: str) -> None:
        """
        Instantiate PiqueBin object.
        :param binary_file_directory: Location of the file with the name binary_file_name.
        :param binary_file_name: Name of the binary file to run PIQUE-Bin on.
        """
        logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
        self.logger: Logger = logging.getLogger(__name__)
        self.pique_bin_jar_file_name: str = "msusel-pique-bin-0.0.1"
        self.pique_bin_properties_file_name: str = "pique-bin.properties"
        self.pique_bin_output_file: str = f"{binary_file_name}_compact_evalResults.json"
        self.pique_bin_package_directory: str = f"{os.getcwd()}\\PIQUE-Bin-Jar\\"  # Ex: Location of dir PIQUE-Bin-Jar/.
        self.pique_bin_output_file_directory: str = f"{self.pique_bin_package_directory}out"
        self.binary_file_name: str = binary_file_name
        self.binary_file_directory: str = binary_file_directory
        self.pique_exit_status: int = -1
        self.logger.warning(f"PIQUE-Bin not fully tested")

    def detect(self) -> None:
        pass

    def pique_bin(self) -> float:
        """
        Runs PIQUE-Bin on the binary file with the name binary_file_name and returns the generated Binary Security Quality of that binary file.
        :return: Float representing the Binary Security Quality of the binary file specified by binary_file_name at the directory binary_file_directory.
        """
        self.pique_exit_status = self._check_malware()
        self.logger.debug(f"PIQUE-Bin exist status: {self.pique_exit_status}")
        if self.pique_exit_status != 0:
            raise OSError(
                f"PIQUE-Bin failed to run on {self.binary_file_name} with exit status {self.pique_exit_status}")
        else:
            self.logger.info(f'PIQUE-Bin successfully ran on {self.binary_file_name}')
        return self._pique_bin_score()

    def _check_malware(self) -> int:
        """
        Implements PIQUE-Bin jar to generate the Binary Security Quality of a binary file.
        :return: 0 if PIQUE-Bin ran successfully. Otherwise another int.
        """
        shutil.copy(f"{self.binary_file_directory}\\{self.binary_file_name}", f"{self.pique_bin_package_directory}")
        self.file_should_exist(self.binary_file_directory, self.binary_file_name)

        replacement_pique_bin_file_text: str = ""
        with open(f"{self.pique_bin_package_directory}{self.pique_bin_properties_file_name}", "r") as pique_bin_properties:
            for line in pique_bin_properties:
                if "project.root=" in line:
                    line = f"project.root=./{self.binary_file_name}\n"
                replacement_pique_bin_file_text = replacement_pique_bin_file_text + line
            pique_bin_properties.close()

        with open(f"{self.pique_bin_package_directory}{self.pique_bin_properties_file_name}", "w") as pique_bin_properties_replacement:
            pique_bin_properties_replacement.write(replacement_pique_bin_file_text)
            pique_bin_properties_replacement.close()

        pique_bin_return_code: int
        with self.change_dir(self.pique_bin_package_directory):
            pique_bin_return_code = subprocess.call(['java', '-jar', f"{self.pique_bin_jar_file_name}.jar"])
            os.remove(f"{self.pique_bin_package_directory}\\{self.binary_file_name}")
        return pique_bin_return_code

    def _pique_bin_score(self) -> float:
        """
        Returns the Binary Security Quality of the binary file parsed by PIQUE-Bin.
        :return: Float representing the Binary Security Quality of the binary file specified by binary_file_name.
        """
        self.file_should_exist(self.pique_bin_output_file_directory, self.pique_bin_output_file)

        with open(f"{self.pique_bin_output_file_directory}\\{self.pique_bin_output_file}", "r") as pique_bin_output:
            binary_security_quality_reached: bool = False
            binary_security_quality_line: str = ""
            for line in pique_bin_output:
                if "\"Binary Security Quality\": {" in line:
                    binary_security_quality_reached = True
                elif binary_security_quality_reached and ("\"value\":" in line):
                    binary_security_quality_line = line
                    break
            pique_bin_output.close()
            binary_security_quality: float = float(
                binary_security_quality_line.replace('"value": ', '').replace(',', ''))
            if binary_security_quality > 0.999999:
                self.logger.error(
                    f"The calculated Binary Security Quality suggests that Docker is not running or another error exists: {binary_security_quality}")
        return binary_security_quality

    @contextmanager
    def change_dir(self, destination: str) -> None:
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
    def file_should_exist(file_directory: str, file: str) -> int:
        """
        Returns 0 if file exists. Otherwise raises OSError.
        :param file_directory: Location of directory containing the File file.
        :param file: The name of the File file that should exist.
        :raises OSError: If file does not exist.
        :return: O if the files exists.
        """
        if not os.path.exists(f"{file_directory}\\{file}"):
            raise OSError(f"{file_directory}\\{file} does not exist")
        return 0

    def add_to_hash(self, file: str) -> None:
        pass
