import logging
import sys
import os
import pathlib
import unittest
from typing import List, Dict
from zipfile import ZipFile

sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)), os.pardir))

from static_utilities import StaticUtilities
from ccs_project import CCSProject
from package_zipper import PackageZipper

from vhdl_parser_generator import VHDLParserGenerator


class GeneratedVHDLTests(unittest.TestCase):
    StaticUtilities.logger.setLevel(logging.DEBUG)

    @staticmethod
    def project() -> CCSProject:
        return CCSProject(project_name="test_C", source_file="test_C.c",
                          path=StaticUtilities.project_root_directory() / "ccs_workspace" / "test_C")

    @staticmethod
    def generated_files_dict() -> Dict[str, bool]:
        return dict.fromkeys(
            ["baseline_memory.vhd", "baseline_package.vhd", "data_memory.vhd", "generated_disassembly.txt",
             "highroller_memory.vhd", "highroller_package.vhd", "lowlife_memory.vhd", "lowlife_package.vhd"], False)

    def generate_vhdl(self) -> None:
        vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(ccs_project=self.project())
        vhdl_parser_generator.generate_vhdl()

    def test_generated_vhdl_package(self) -> None:
        StaticUtilities.logger.info("Testing VHDL Package")
        self.generate_vhdl()
        zip_file_directory: pathlib.Path = StaticUtilities.project_root_directory() / "generated_vhdl"
        zip_file_name: str = "test_vhdl_generator"
        if StaticUtilities.file_exists(zip_file_directory, f"{zip_file_name}.zip"):
            zip_file_path: pathlib.Path = zip_file_directory / f"{zip_file_name}.zip"
            os.remove(zip_file_path)
        else:
            StaticUtilities.logger.error(f"Test zip file does not exist at: {zip_file_directory / f'{zip_file_name}.zip'}")
        package_zipper: PackageZipper = PackageZipper()
        package_zipper.zip_vhdl(zip_file_name=zip_file_name)
        self.assertEqual(package_zipper.number_of_zipped_files, 8)
        self.assertTrue(StaticUtilities.file_exists(zip_file_directory, f"{zip_file_name}.zip"))
        zip_file_verification_dict: Dict[str, bool] = self.generated_files_dict()
        with ZipFile(f"{zip_file_directory}\\{zip_file_name}.zip", 'r') as zip_file:
            zip_file_contents_list: List[str] = zip_file.namelist()
            for file in zip_file_contents_list:
                self.assertTrue(file in zip_file_verification_dict, f"{file} should not be in {zip_file_name}.zip")
                zip_file_verification_dict[file] = True
        for file in zip_file_verification_dict:
            self.assertTrue(zip_file_verification_dict[file],
                            f"{file} not in {f'{zip_file_contents_list=}'.split('=')[0]}")

    def test_generated_vhdl(self) -> None:
        StaticUtilities.logger.info("Testing VHDL Generation")
        self.generate_vhdl()
