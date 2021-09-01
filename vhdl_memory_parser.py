###############################
# VHDL Memory Parser
# For Raytheon Research Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Blake Stanger and Walker Ward
###############################
import logging
import sys
import os
from logging import Logger
from typing import TextIO

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
logger: Logger = logging.getLogger(__name__)


def remove_last_generated_files() -> None:
    """
    Removes the files generated in the last run of main.
    - Removes all files with the vhd file extension
    :return: None.
    """
    # C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\
    directory: str = rf'{os.getcwd()}\generated_vhdl'
    for file in os.listdir(directory):
        if file.endswith(".vhd"):
            os.remove(f"{directory}\\{file}")
            logger.info(f'Removed {file}')


def generate_vhd_packages() -> None:
    """
    Generated the vhd package for each computer.
    :return: None.
    """
    packages_list: list[str] = ["baseline_package", "high_roller_package", "lowlife_package"]
    for package_name in packages_list:
        original_stdout: TextIO = sys.stdout
        with open(f"{os.getcwd()}\\generated_vhdl\\{package_name}.vhd", "a+") as vhd_package_file:
            sys.stdout = vhd_package_file
            vhd_package_constants_str: str
            if "high_roller" in package_name:
                vhd_package_constants = """constant FORMAT_2 : integer := 3;
    constant JMP1 : integer := 4;
    constant JMP2 : integer := 5;
    constant MOV : integer := 6;
    constant OFFSET : integer := 2;"""
            elif "low_life" in package_name:
                vhd_package_constants = """constant FORMAT_2 : integer := 15;
    constant JMP1 : integer := 0;
    constant JMP2 : integer := 1;
    constant MOV : integer := 2;
    constant OFFSET : integer := -2;"""
            else:
                vhd_package_constants = """constant FORMAT_2 : integer := 1;
    constant JMP1 : integer := 2;
    constant JMP2 : integer := 3;
    constant MOV : integer := 4;
    constant OFFSET : integer := 0;"""

            print(f"""library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;
    package {package_name} is
    {vhd_package_constants}
    end {package_name};""")

            vhd_package_file.close()
            logger.info(f'Generated {package_name}.vhd')


def main() -> None:
    """
    TODO: add malicious check for MSP430 output binaries to workflow
    generate the baseline, highroller and lowlife package files
        - open the correct file (type_package.vhd)
        - append the imports and constants depending on package type
    generate the baseline, highroller and lowlife memory files
        - (begin preamble)
        - append imports and packages
        - create the entity (specific to each computer)
        - create the architecture (specific to each computer)
            - read in the disassembly text file
            - 'match and modify'
                - select the correct dictionary for this computer
                - split each line into an array of chars
                - modify the generated ROM based on this computer
            - (begin postamble)
            - IRQ Vectors
            - LOCAL_EN proc
            - MEMORY_ROW proc
        - end architecture
    TODO: Remove disassembly text file
    TODO: Comment and document code
    TODO: Make code more readable and reusable
    TODO: Create pydocs for each method
    TODO: Refactor methods
    TODO: link CCS and pycharm workspaces
    TODO: stop using the global mem start
    """
    remove_last_generated_files()
    generate_vhd_packages()

    pass


if __name__ == '__main__':
    main()
