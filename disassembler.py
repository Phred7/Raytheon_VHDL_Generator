"""
# CCS Disassembler
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward and Michael Heidal
"""
import os
import pathlib
import subprocess

from ccs_project import CCSProject
from pique_bin import PiqueBin
from static_utilities import StaticUtilities


class Disassembler:
    """
    Disassembles an MSP430 binary.
    """

    def __init__(self, ccs_project_to_disassemble: CCSProject, *, disassembler_output_file_name: str = "generated_disassembly.txt") -> None:
        self.ccs_project: CCSProject = ccs_project_to_disassemble
        self.disassembler_directory: pathlib.Path = StaticUtilities.project_root_directory() / 'tools'
        self.disassembler_executable: str = 'dis430.exe'
        self.disassembler_output_file_name: str = disassembler_output_file_name
        self.disassembler_output_file_directory: pathlib.Path = StaticUtilities.project_root_directory() / "generated_disassembly"
        self.disassembler_exit_status: int = 0
        StaticUtilities.logger.debug(f"{Disassembler.__name__} object initialized")

    def disassemble(self) -> None:
        """
        Generates disassembly for a binary generated by the MSP430 in CCS.
        - Checks that the input file exists.
        - Checks if the output file already exists. If so removes it.
        - Runs dis430.exe on the input file and output file.
        - Checks the exit status of the dis430.exe.
        - Note: Extremely dependent on package structure.
        :raise: OSError if the input file does not exist.
        :raise: OSError if the disassembler failed.
        """

        # Check if the disassembler input exists.
        StaticUtilities.file_should_exist(self.ccs_project.path, self.ccs_project.source_file)

        # Check if the output file already exists. If it exists delete in.
        disassembler_output_path: pathlib.Path = self.disassembler_output_file_directory / self.disassembler_output_file_name
        if os.path.exists(disassembler_output_path):
            os.remove(disassembler_output_path)
            StaticUtilities.logger.info(
                rf"Removed {disassembler_output_path}")

        disassembler_binary_path: pathlib.Path = self.disassembler_directory / self.disassembler_executable
        binary_file_path: pathlib.Path = self.ccs_project.path / self.ccs_project.binary_file_path
        StaticUtilities.logger.info(os.getcwd())
        StaticUtilities.logger.info(disassembler_binary_path)
        StaticUtilities.logger.info(binary_file_path)
        StaticUtilities.logger.info(disassembler_output_path)
        dis: bool = StaticUtilities.file_exists(self.disassembler_output_file_directory, self.disassembler_output_file_name)
        dis_bin: bool = StaticUtilities.file_exists(self.disassembler_directory, self.disassembler_executable)
        bin: bool = StaticUtilities.file_exists(self.ccs_project.path, self.ccs_project.binary_file_path)
        if dis:
            StaticUtilities.logger.error(f"{self.disassembler_output_file_directory}-/-{self.disassembler_output_file_name} exists")
        else:
            StaticUtilities.logger.info(f"{self.disassembler_output_file_directory}-/-{self.disassembler_output_file_name} does not exist")

        if not dis_bin:
            StaticUtilities.logger.error(f"{self.disassembler_directory}-/-{self.disassembler_executable} does not exist")
        else:
            StaticUtilities.logger.info(f"{self.disassembler_directory}-/-{self.disassembler_executable} exists")

        if not bin:
            StaticUtilities.logger.error(f"{self.ccs_project.path}-/-{self.ccs_project.binary_file_path} does not exist")
        else:
            StaticUtilities.logger.info(f"{self.ccs_project.path}-/-{self.ccs_project.binary_file_path} exists")

        self.disassembler_exit_status = subprocess.run(
            rf"{disassembler_binary_path} {binary_file_path} {disassembler_output_path}",
#            stdout=subprocess.DEVNULL,
 #           stderr=subprocess.STDOUT, 
	    shell=True, 
	    capture_output=True,
            check=True)
        StaticUtilities.logger.debug(f"Disassembler exit status: {self.disassembler_exit_status.returncode}")
        if self.disassembler_exit_status.returncode != 0:
            raise OSError(
                f"Disassembler failed to generate disassembly for {self.ccs_project.binary_file_path} with exit status {self.disassembler_exit_status}")
        else:
            StaticUtilities.logger.info(
                f'Disassembler generated {self.disassembler_output_file_name} at the directory {self.disassembler_output_file_directory}')
            self.ccs_project.set_disassembly_file_path(self.disassembler_output_file_directory / self.disassembler_output_file_name)


if __name__ == '__main__':
    ccs_project: CCSProject = CCSProject(project_name="test_target", source_file="main.c", path=StaticUtilities.project_root_directory() / "ccs_workspace" / "test_target")
    disassembler: Disassembler = Disassembler(ccs_project_to_disassemble=ccs_project)
    disassembler.disassemble()
