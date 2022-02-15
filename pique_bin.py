###############################
# Pique Bin
# PIQUE-BIN tool written by Andrew L. Johnson
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
###############################
import os
import shutil
import subprocess
import sys

from static_utilities import StaticUtilities


class PiqueBin:
    """
    Manages PiqueBin tool.
    """

    def __init__(self, source_file_name: str, *, suppress_printing_bool: bool = True, derive: bool = False) -> None:
        """
        Instantiate PiqueBin object.
        :param source_file_name: Name of the source file to associate with a binary to run PIQUE-Bin on.
        """
        self.default_pique_bin_test_binary: str = "busybox-1.21.1_busybox_unstripped_x86_64"
        self.default_pique_bin_test_directory: str = f"{os.getcwd()}\\PIQUE-Bin-Jar-0.0.1\\classes\\binaries"
        self.pique_bin_binary_directory: str = f"{os.getcwd()}\\PIQUE-Bin-Jar-0.0.1\\classes\\binaries\\raytheon_vhdl_generator"
        self.source_file_name: str = source_file_name
        self.binary_file_name: str = f"{source_file_name.split('.')[0]}.out"
        self.binary_file_directory: str = rf"{os.getcwd()}\ccs_workspace\{self.binary_file_name.replace('.out', '')}\Debug"
        self.pique_bin_jar_file_name: str = "msusel-pique-bin-0.0.1-jar-with-dependencies"
        self.pique_bin_properties_file_name: str = "pique-properties.properties"
        self.pique_bin_output_file: str = f"{source_file_name.split('.')[0]}_evalResults.json"
        self.pique_bin_package_directory: str = f"{os.getcwd()}\PIQUE-Bin-Jar-0.0.1\\"
        self.pique_bin_output_file_directory: str = f"{self.pique_bin_package_directory}out"
        self.pique_exit_status: int = -1
        self.derive: bool = derive
        self.suppress_printing_bool: bool = suppress_printing_bool
        if not self.source_file_name == self.default_pique_bin_test_binary:
            StaticUtilities.file_should_exist(file_directory=self.binary_file_directory, file=self.binary_file_name)
        StaticUtilities.logger.debug(f"{PiqueBin.__name__} object initialized")
        StaticUtilities.logger.warning(f"PIQUE-Bin not fully functional.")

    def derive_pique_bin_busybox_model(self) -> None:
        StaticUtilities.logger.debug(f"{self.__class__.__name__}.{self.derive_pique_bin_busybox_model.__name__}() running")  # busybox-1.21.1_busybox_unstripped_x86_64
        replacement_pique_bin_file_text: str = ""
        with open(f"{self.pique_bin_package_directory}{self.pique_bin_properties_file_name}",
                  "r") as pique_bin_properties:
            for line in pique_bin_properties:
                if "project.root=" in line:
                    line = f"project.root=classes/binaries/{self.default_pique_bin_test_binary}\n"
                replacement_pique_bin_file_text += line
            pique_bin_properties.close()

        with open(f"{self.pique_bin_package_directory}{self.pique_bin_properties_file_name}",
                  "w") as pique_bin_properties_replacement:
            pique_bin_properties_replacement.write(replacement_pique_bin_file_text)
            pique_bin_properties_replacement.close()

        with StaticUtilities.change_dir(self.pique_bin_package_directory):
            pique_bin_return_code = subprocess.call(['java', '-jar', f"{self.pique_bin_jar_file_name}.jar", '-d' if self.derive else '-e'],
                                                    stdout=sys.stdout,
                                                    stderr=sys.stderr)
            StaticUtilities.logger.info(f"pique-bin returned: {pique_bin_return_code}")
        return


    def pique_bin(self) -> float:
        """
        Runs PIQUE-Bin on the binary file with the name binary_file_name and returns the generated Binary Security Quality of that binary file.
        :return: Float representing the Binary Security Quality of the binary file specified by binary_file_name at the directory binary_file_directory.
        """
        if self.binary_file_name == "busybox-1.21.1_busybox_unstripped_x86_64":
            StaticUtilities.logger.error(f"PIQUE-Bin crashed: {self.binary_file_name} is an invalid binary to evaluate")
            return exit(-1)
        StaticUtilities.logger.info(f"PIQUE-Bin running in {'derive' if self.derive else 'evaluation'} mode")
        StaticUtilities.start_docker_desktop()
        self.pique_exit_status = self._check_malware()
        StaticUtilities.logger.debug(f"PIQUE-Bin exist status: {self.pique_exit_status}")
        if self.pique_exit_status != 0:
            raise OSError(
                f"PIQUE-Bin failed to run on {self.binary_file_name} with exit status {self.pique_exit_status}")
        else:
            StaticUtilities.logger.debug(f'PIQUE-Bin successfully ran on {self.binary_file_name}')
        return self._pique_bin_score()

    def _check_malware(self) -> int:
        """
        Implements PIQUE-Bin jar to generate the Binary Security Quality of a binary file.
        :return: 0 if PIQUE-Bin ran successfully, otherwise another int.
        """
        shutil.copy(f"{self.binary_file_directory}\\{self.binary_file_name}", f"{self.pique_bin_binary_directory}")
        StaticUtilities.file_should_exist(self.binary_file_directory, self.binary_file_name)

        replacement_pique_bin_file_text: str = ""
        with open(f"{self.pique_bin_package_directory}{self.pique_bin_properties_file_name}",
                  "r") as pique_bin_properties:
            for line in pique_bin_properties:
                if "project.root=" in line:
                    parent_dir: str = "classes/binaries/raytheon_vhdl_generator/"
                    line = f"project.root={parent_dir}{self.binary_file_name}\n"
                    # line = f"project.root={parent_dir}"
                replacement_pique_bin_file_text += line
            pique_bin_properties.close()

        with open(f"{self.pique_bin_package_directory}{self.pique_bin_properties_file_name}",
                  "w") as pique_bin_properties_replacement:
            pique_bin_properties_replacement.write(replacement_pique_bin_file_text)
            pique_bin_properties_replacement.close()

        pique_bin_return_code: int
        with StaticUtilities.change_dir(self.pique_bin_package_directory):
            if self.suppress_printing_bool:
                pique_bin_return_code = subprocess.call(['java', '-jar', f"{self.pique_bin_jar_file_name}.jar", '-d' if self.derive else '-e'],
                                                        stdout=subprocess.DEVNULL,
                                                        stderr=subprocess.STDOUT)
            else:
                pique_bin_return_code = subprocess.call(
                    ['java', '-jar', f"{self.pique_bin_jar_file_name}.jar", '-d'],
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.STDOUT)
                pique_bin_return_code = subprocess.call(['java', '-jar', f"{self.pique_bin_jar_file_name}.jar", '-d' if self.derive else '-e'])
            os.remove(f"{self.pique_bin_binary_directory}\\{self.binary_file_name}")
        return pique_bin_return_code

    def _pique_bin_score(self) -> float:
        """
        Returns the Binary Security Quality of the binary file parsed by PIQUE-Bin.
        :return: Float representing the Binary Security Quality of the binary file specified by binary_file_name.
        """
        StaticUtilities.file_should_exist(self.pique_bin_output_file_directory, self.pique_bin_output_file)

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
                StaticUtilities.logger.error(
                    f"The calculated Binary Security Quality suggests that Docker is not running or another error exists: {binary_security_quality}")
        return binary_security_quality


if __name__ == "__main__":
    # pique_bin: PiqueBin = PiqueBin(source_file_name="busybox-1.21.1_busybox_unstripped_x86_64", suppress_printing_bool=False, derive=True)
    # pique_bin.derive_pique_bin_busybox_model()
    pique_bin: PiqueBin = PiqueBin(source_file_name="c_blank",
                                   suppress_printing_bool=False, derive=False)
    pique_bin.pique_bin()
