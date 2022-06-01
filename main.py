"""
# Main
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
"""
import logging
import os
import pathlib
import sys
from datetime import date

from detection import Detection
from ccs_project import CCSProject
from disassembler import Disassembler
from instrument_all_strategies import AllInstrumentationStrategies
from instrument_buffer_overflow_attack import BufferOverflowAttack
from instrument_string_format_attack import StringFormatAttack
from instrument_sw_trigged_failure import SWTriggeredFailure
from instrumentation import Instrumentation
from instrument_int_overflow_attack import IntOverflowAttack
from package_zipper import PackageZipper
from static_utilities import StaticUtilities
from vhdl_parser_generator import VHDLParserGenerator


class Main:
    """Main method to execute the VHDL generation workflow."""

    @staticmethod
    def main() -> None:
        Main.generate()

    @staticmethod
    def discover_project() -> CCSProject:
        ccs_project: CCSProject
        project_path: pathlib.Path = pathlib.Path.cwd()
        if project_path != StaticUtilities.project_root_directory():
            # project_path = StaticUtilities.project_root_directory() / "ccs_workspace" / "test_C" / "VHDLGenerator"
            source_file = None
            for _, _, files in Main.walklevel(str(pathlib.Path(project_path.parent))):
                for file in files:
                    file_path = pathlib.Path(file).resolve()
                    if file_path.suffix == ".c":
                        source_file = file
                    elif file_path.suffix == ".asm":
                        source_file = file
                break

            StaticUtilities.logger.info(f"**** Discovering CCS Project ****")
            StaticUtilities.logger.debug(f"Project path: {pathlib.Path(project_path.parent)}")
            StaticUtilities.logger.debug(f"Project name: {project_path.parent.name}")
            StaticUtilities.logger.debug(f"Project src file: {source_file}")
            StaticUtilities.logger.debug(f"Python Root dir: {StaticUtilities.project_root_directory()}")

            ccs_project = CCSProject(source_file=source_file,
                                     project_name=project_path.parent.name,
                                     path=pathlib.Path(project_path.parent))
            if ccs_project is None:
                StaticUtilities.logger.error(f"**** Discovering CCS Project Failed ****")
                sys.exit(1)
            StaticUtilities.logger.info(f"**** Discovering CCS Project Finished ****")
        else:
            ccs_project = CCSProject(source_file="test_C.c",
                                     project_name="test_C",
                                     path=StaticUtilities.project_root_directory() / "ccs_workspace" / "test_C")
            StaticUtilities.logger.warning("Project is this python project. Using test_C")
        return ccs_project

    @staticmethod
    def walklevel(some_dir, level=1):
        some_dir = some_dir.rstrip(os.path.sep)
        assert os.path.isdir(some_dir)
        num_sep = some_dir.count(os.path.sep)
        for root, dirs, files in os.walk(some_dir):
            yield root, dirs, files
            num_sep_this = root.count(os.path.sep)
            if num_sep + level <= num_sep_this:
                del dirs[:]

    @staticmethod
    def generate() -> None:
        """
        Generates VHDL for a source file. Bypasses the rest of the toolchain.
        :return: None.
        """
        ccs_project: CCSProject = Main.discover_project()
        StaticUtilities.logger.info(f"**** Generating VHDL ****")
        detection_results: bool = Main.detection(ccs_project, 0.35)
        if detection_results:
            vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(ccs_project=ccs_project)
            vhdl_parser_generator.generate_vhdl()
            package_zipper: PackageZipper = PackageZipper()
            package_zipper.zip_vhdl(zip_file_name=f"{ccs_project.project_name} - {date.today()}", zip_file_directory=ccs_project.path)
            StaticUtilities.logger.info(f"**** Generating VHDL Finished ****")
        else:
            StaticUtilities.logger.error(f"**** Generating VHDL Failed ****")

    @staticmethod
    def detection(project: CCSProject, security_quality: float) -> bool:
        detection: Detection = Detection(project, pique_bin_bool=False)
        StaticUtilities.logger.debug(f"Project Hash: {project.__hash__()}")
        detection.pique_binary_security_quality = security_quality
        results: bool = detection.detect()
        if not results:
            StaticUtilities.logger.warning(f"Possible malware detected\n{detection.possible_vulnerabilities()}")
        else:
            StaticUtilities.logger.info(f"No malware found")
        return results


if __name__ == '__main__':
    main: Main = Main()
    StaticUtilities.logger.setLevel(logging.DEBUG)
    main.main()
