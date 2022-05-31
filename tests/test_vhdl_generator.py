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
    def test_c_project() -> CCSProject:
        return CCSProject(project_name="test_C", source_file="test_C.c",
                          path=StaticUtilities.project_root_directory() / "tests" / "references" / "ccs_projects" / "test_C")

    @staticmethod
    def blank_c_project() -> CCSProject:
        return CCSProject(project_name="c_blank", source_file="c_blank.c",
                          path=StaticUtilities.project_root_directory() / "tests" / "references" / "ccs_projects" / "c_blank")

    @staticmethod
    def generated_files_dict() -> Dict[str, bool]:
        return dict.fromkeys(
            ["baseline_memory.vhd", "baseline_package.vhd", "data_memory.vhd", "generated_disassembly.txt",
             "highroller_memory.vhd", "highroller_package.vhd", "lowlife_memory.vhd", "lowlife_package.vhd"], False)

    @staticmethod
    def path_to_reference_vhdl(project_name: str) -> pathlib.Path:
        return StaticUtilities.project_root_directory() / "tests" / "references" / "vhdl" / project_name

    def generate_vhdl(self, project: CCSProject) -> None:
        StaticUtilities.logger.setLevel(logging.INFO)
        vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(ccs_project=project)
        vhdl_parser_generator.generate_vhdl()
        StaticUtilities.logger.setLevel(logging.DEBUG)

        file_paths: List[pathlib.Path] = []
        directory: pathlib.Path = StaticUtilities.project_root_directory() / "generated_vhdl"
        path_to_project_reference_generation_directory: pathlib.Path = self.path_to_reference_vhdl(project.project_name)
        for file in os.listdir(directory.__str__()):
            if file.endswith(".vhd") or file == "generated_disassembly.txt":
                file_paths.append(directory / file)
        file_paths.append(project.disassembly_file_path)
        self.assertTrue(len(file_paths) == len(self.generated_files_dict().keys()))

        for file in file_paths:
            reference_file_path: pathlib.Path = path_to_project_reference_generation_directory / file.parts[-1]
            generated_file_string: str = ""
            reference_file_string: str = ""
            with open(file, 'r') as generated_file:
                with open(reference_file_path, 'r') as reference_file:
                    for line_number, lines in enumerate(zip(generated_file, reference_file)):
                        line_g, line_r = lines
                        generated_file_string += line_g
                        reference_file_string += line_r
                        self.assertTrue(line_g == line_r, f"Line {line_number} does not match in the newly generated version of {file.parts[-1]} and the reference version.\nGenerated line: {line_g}Reference line: {line_r}")
            self.assertTrue(generated_file_string == reference_file_string, f"The newly generated version of {file.parts[-1]} does not match the reference version")

    def test_generated_vhdl_package(self) -> None:
        StaticUtilities.logger.info("\n***************Testing VHDL Package***************")
        self.generate_vhdl(self.test_c_project())
        zip_file_directory: pathlib.Path = StaticUtilities.project_root_directory() / "generated_vhdl"
        zip_file_name: str = "test_vhdl_generator"
        zip_file_path: pathlib.Path = zip_file_directory / f"{zip_file_name}.zip"
        if StaticUtilities.file_exists(zip_file_directory, f"{zip_file_name}.zip"):
            os.remove(zip_file_path)
        else:
            StaticUtilities.logger.error(f"Test zip file does not exist at: {zip_file_path}")
        package_zipper: PackageZipper = PackageZipper()
        package_zipper.zip_vhdl(zip_file_name=zip_file_name)
        self.assertEqual(package_zipper.number_of_zipped_files, 8)
        self.assertTrue(StaticUtilities.file_exists(zip_file_directory, f"{zip_file_name}.zip"))
        zip_file_verification_dict: Dict[str, bool] = self.generated_files_dict()
        with ZipFile(zip_file_path, 'r') as zip_file:
            zip_file_contents_list: List[str] = zip_file.namelist()
            for file in zip_file_contents_list:
                self.assertTrue(file in zip_file_verification_dict, f"{file} should not be in {zip_file_name}.zip")
                zip_file_verification_dict[file] = True
        for file in zip_file_verification_dict:
            self.assertTrue(zip_file_verification_dict[file],
                            f"{file} not in {f'{zip_file_contents_list=}'.split('=')[0]}")

    def test_c_blank_generation_contents(self) -> None:
        StaticUtilities.logger.info("\n***************Testing VHDL Generation Contents for Blank C Reference Project***************")
        self.generate_vhdl(self.blank_c_project())

    # def test_generated_vhdl(self) -> None:
    #     # TODO: verify contents of the generated files.
    #     StaticUtilities.logger.info("Testing VHDL Generation")
    #     self.generate_vhdl()
    #     for file in self.generated_files_dict():
    #         if file == "generated_disassembly.txt":
    #             self.assertTrue(
    #                 StaticUtilities.file_exists(rf"{StaticUtilities.project_root_directory()}\generated_disassembly", file),
    #                 f"{file} not in generated_vhdl directory")
    #         else:
    #             self.assertTrue(StaticUtilities.file_exists(rf"{StaticUtilities.project_root_directory()}\generated_vhdl", file), f"{file} not in generated_vhdl directory")

    def test_test_c_generated_vhdl(self) -> None:
        StaticUtilities.logger.info("\n***************Testing VHDL Generation Contents for Test C Reference Project***************")
        self.generate_vhdl(self.test_c_project())
