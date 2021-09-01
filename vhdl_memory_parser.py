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

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)


def remove_last_generated_files() -> None:
    directory = r'C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\generated_vhdl'
    for file in os.listdir(directory):
        if file.endswith(".vhd"):
            os.remove(f"{directory}\\{file}")
            logger.debug(f'Removed {file}')


def main() -> None:
    """
    TODO: add cleanup for last run
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

    pass


if __name__ == '__main__':
    main()
