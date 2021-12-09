###############################
# CCS Disassembler
# For Raytheon Research Project
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
from typing import List

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger: Logger = logging.getLogger(__name__)


def inject_malware_into_binary() -> None:
    # TODO: Malware class that abstractly implements different types of malware by overriding inject()
    pass


def pique_bin(binary_file_directory: str, binary_file_name: str) -> float:
    """
    Runs PIQUE-Bin on the binary file with the name binary_file_name and returns the generated Binary Security Quality of that binary file.
    :param binary_file_directory: Location of the file with the name binary_file_name.
    :param binary_file_name: Name of the binary file to run PIQUE-Bin on.
    :return: Float representing the Binary Security Quality of the binary file specified by binary_file_name at the directory binary_file_directory.
    """
    # pique_bin_package_directory: str = f"{os.getcwd()}\PIQUE-Bin-Jar\\"
    pique_bin_package_directory: str = f"{os.getcwd()}\PIQUE-Bin-Jar-Newest\\"
    pique_exit_status: int = check_malware(binary_file_directory=binary_file_directory,
                                           binary_file_name=binary_file_name,
                                           pique_bin_directory=pique_bin_package_directory)
    logger.debug(f"PIQUE-Bin exist status: {pique_exit_status}")
    if pique_exit_status != 0:
        raise OSError(
            f"PIQUE-Bin failed to run on {binary_file_name} with exit status {pique_exit_status}")
    else:
        logger.info(f'PIQUE-Bin successfully ran on {binary_file_name}')
    return pique_bin_score(binary_file_name, pique_bin_package_directory)


def check_malware(binary_file_directory: str, binary_file_name: str, pique_bin_directory: str) -> int:
    """
    Implements PIQUE-Bin to generate the Binary Security Quality of a binary file.
    :param binary_file_directory: Location of the file with the name binary_file_name.
    :param binary_file_name: Name of the binary file to run PIQUE-Bin on.
    :param pique_bin_directory: PIQUE_Bin directory in the file system. Ex: Location of dir PIQUE-Bin-Jar/.
    :return: 0 if PIQUE-Bin ran successfully. Otherwise another int.
    """
    pique_bin_jar_file_name: str = "msusel-pique-bin-0.0.1"
    # pique_bin_properties_file_name: str = "pique-bin.properties"
    pique_bin_properties_file_name: str = "pique-properties.properties"

    shutil.copy(f"{binary_file_directory}\\{binary_file_name}", f"{pique_bin_directory}")
    file_should_exist(binary_file_directory, binary_file_name)

    replacement_pique_bin_file_text: str = ""
    with open(f"{pique_bin_directory}{pique_bin_properties_file_name}", "r") as pique_bin_properties:
        for line in pique_bin_properties:
            if "project.root=" in line:
                line = f"project.root=./{binary_file_name}\n"
            replacement_pique_bin_file_text = replacement_pique_bin_file_text + line
        pique_bin_properties.close()

    with open(f"{pique_bin_directory}{pique_bin_properties_file_name}", "w") as pique_bin_properties_replacement:
        pique_bin_properties_replacement.write(replacement_pique_bin_file_text)
        pique_bin_properties_replacement.close()

    pique_bin_return_code: int
    with change_dir(pique_bin_directory):
        pique_bin_return_code = subprocess.call(['java', '-jar', f"{pique_bin_jar_file_name}.jar"])
    return pique_bin_return_code


@contextmanager
def change_dir(destination: str) -> None:
    cwd: str = ""
    try:
        cwd = os.getcwd()
        os.chdir(destination)
        yield
    finally:
        os.chdir(cwd)


def pique_bin_score(binary_file_name: str, pique_bin_directory: str) -> float:
    """
    Returns the Binary Security Quality of the binary file parsed by PIQUE-Bin.
    :param binary_file_name: Name of the binary file that was parsed by PIQUE-Bin.
    :param pique_bin_directory: PIQUE_Bin directory in the file system. Ex: Location of dir PIQUE-Bin-Jar/.
    :return: Float representing the Binary Security Quality of the binary file specified by binary_file_name.
    """
    pique_bin_output_file_directory: str = f"{pique_bin_directory}out"
    pique_bin_output_file: str = f"{binary_file_name}_compact_evalResults.json"

    file_should_exist(pique_bin_output_file_directory, pique_bin_output_file)

    with open(f"{pique_bin_output_file_directory}\\{pique_bin_output_file}", "r") as pique_bin_output:
        binary_security_quality_reached: bool = False
        binary_security_quality_line: str = ""
        for line in pique_bin_output:
            if "\"Binary Security Quality\": {" in line:
                binary_security_quality_reached = True
            elif binary_security_quality_reached == True and "\"value\":" in line:
                binary_security_quality_line = line
                break
        pique_bin_output.close()
        binary_security_quality: float = float(binary_security_quality_line.replace('"value": ', '').replace(',', ''))
        if binary_security_quality > 0.9999999:
            logger.error(
                f"The calculated Binary Security Quality suggests that Docker is not running or another error exists: {binary_security_quality}")
    return binary_security_quality


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


def disassemble(*, pique_bool: bool = True) -> None:
    """
    Generates assembly for a binary generated by the MSP430 in CCS.
    - Checks that the input file exists.
    - Checks if the output file already exists. If so removes it.
    - Runs dis430.exe on the input file and output file.
    - Checks the exit status of the dis430.exe.
    - Note: Extremely dependant on package structure.
    :raise: OSError if the input file does not exists.
    :raise: OSError if the disassembler failed.
    """
    disassembler_directory: str = r'C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin'
    disassembler_executable: str = r'dis430.exe'
    disassembler_input_file_name: str = "All_msp_operations.out" # "test_C.out"  # "test_colt_C.out"  # "All_ops_asm.out'  # "Motor_mover_C.out" # "test.out" # "test_ASM.out" # "All_msp_operations.out"
    disassembler_input_file_directory: str = rf"{os.getcwd()}\ccs_workspace\{disassembler_input_file_name.replace('.out', '')}\Debug"
    disassembler_output_file_name: str = "generated_disassembly.txt"
    disassembler_output_file_directory: str = rf"{os.getcwd()}\generated_disassembly"

    # Check if the disassembler input exists.
    file_should_exist(disassembler_input_file_directory, disassembler_input_file_name)

    # Run PIQUE-bin.
    if pique_bool:
        logger.info(
            f"PIQUE-Bin Binary Security Quality: {pique_bin(disassembler_input_file_directory, disassembler_input_file_name)}")

    # Check if the output file already exists. If it exists delete in.
    if os.path.exists(rf"{disassembler_output_file_directory}\{disassembler_output_file_name}"):
        os.remove(rf"{disassembler_output_file_directory}\{disassembler_output_file_name}")
        logger.info(rf"Removed {disassembler_output_file_directory}\{disassembler_output_file_name}")

    # Call the disassembler.
    disassembler_exit_status: int = os.system(
        rf"{disassembler_directory}\{disassembler_executable} {disassembler_input_file_directory}\{disassembler_input_file_name} {disassembler_output_file_directory}\{disassembler_output_file_name}")
    logger.debug(f"Disassembler exist status: {disassembler_exit_status}")
    if disassembler_exit_status != 0:
        raise OSError(
            f"Disassembler failed to generate disassembly for {disassembler_input_file_name} with exit status {disassembler_exit_status}")
    else:
        logger.info(f'Generated {disassembler_output_file_name} at the directory {disassembler_output_file_directory}')


if __name__ == '__main__':
    disassemble(pique_bool=True)
