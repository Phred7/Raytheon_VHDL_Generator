"""
# Main
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
"""
import logging

from detection import Detection
from ccs_project import CCSProject
from disassembler import Disassembler
from instrument_all_strategies import AllInstrumentationStrategies
from instrument_buffer_overflow_attack import BufferOverflowAttack
from instrument_string_format_attack import StringFormatAttack
from instrumentation import Instrumentation
from instrument_int_overflow_attack import IntOverflowAttack
from package_zipper import PackageZipper
from static_utilities import StaticUtilities
from vhdl_parser_generator import VHDLParserGenerator


class Main:
    """Main method to execute the VHDL generation workflow."""

    @staticmethod
    def main() -> None:
        """
        Workflow:
        Precondition: CCS project post-build steps altered to call this method.
        Build project in CCS.
        Parse project details into a CCSProject class. (eventually)
        If the project has been hashed before:
            Attempt to instrument the project.
        Disassemble the CCSProject's binary and point it back to that instance.
        Attempt to detect malware/vulnerabilities in the CCSProject.
            If found provide recommendations, warning and or errors. May include more complex logic in the future such as killing the build.
        Generate VHDL based on the disassembly of the CCSProject
        Zip up all the generated VHDL files.
        """
        # TODO: verify all code adheres to python style guide (PEP 8) and are consistent with recommended best practices
        # TODO: verify all methods have appropriate commenting and doc strings.
        # TODO: make main callable from a CCS project... maybe another main method for testing?
        # TODO: class for ccs project to stop having to pass around file names and paths
        # instrumentation = Instrumentation(IntOverflowAttack())
        # instrumentation.instrument()
        # TODO: do disassembly here so that vhdl parser doesnt need a reference to it... then just update ccs_project object with disassembly and also so that instrumentation can cause it to point to a different binary.
        # vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(binary_file_name="All_msp_operations")
        # vhdl_parser_generator.generate_vhdl(detection=True)
        # package_zipper: PackageZipper = PackageZipper()

        # disassembler.disassemble(pique_bool=False)
        # package_zipper.zip_vhdl()
        # package_zipper.zip_vhdl(zip_file_name="port_AB_01_12_2022")
        pass

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

    @staticmethod
    def demo() -> None:
        """
        For demoing instrumentation and detection.
        :return: None.
        """
        StaticUtilities.logger.setLevel(logging.DEBUG)
        Detection.reset_test_project()
        # project: CCSProject = CCSProject(source_file="main.c",
        #                                  project_name="test_target",
        #                                  path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
        #                                  )
        # results: bool = Main.detection(project, 0.95)
        # Main.__generate_vhdl(results)

        project = CCSProject(source_file="main.c",
                             project_name="test_target",
                             path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                             )
        instrumentation: Instrumentation = Instrumentation(project, IntOverflowAttack())
        instrumentation.instrument()
        results: bool = Main.detection(project, 0.35)
        Main.__generate_vhdl(results)

    @staticmethod
    def __generate_vhdl(detection_results: bool) -> None:
        project: CCSProject = CCSProject(source_file="main.c",
                                         project_name="test_target",
                                         path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                                         )
        if detection_results:
            vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(ccs_project=project)
            vhdl_parser_generator.generate_vhdl()
            zip_name: str = ""
            package_zipper: PackageZipper = PackageZipper()
            package_zipper.zip_vhdl(zip_file_name=zip_name)
            StaticUtilities.logger.info(f"VHDL generated: \\generated_vhdl\\{zip_name}.zip")
        else:
            StaticUtilities.logger.error(f"VHDL did not generate. Possible malware detected.")

    @staticmethod
    def debug_main() -> None:
        """
        For debug of this project's workflow and functionality.
        :return: None.
        """
        StaticUtilities.logger.setLevel(logging.INFO)

        StaticUtilities.logger.warning("Testing No Attacks")
        Detection.reset_test_project()
        project: CCSProject = CCSProject(source_file="main.c",
                                         project_name="test_target",
                                         path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                                         )
        results: bool = Main.detection(project, 0.95)
        Main.__generate_vhdl(results)

        StaticUtilities.logger.warning("Testing BufferOverflowAttack")
        project = CCSProject(source_file="main.c",
                             project_name="test_target",
                             path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                             )
        instrumentation: Instrumentation = Instrumentation(project, BufferOverflowAttack())
        instrumentation.instrument()
        results: bool = Main.detection(project, 0.35)
        Main.__generate_vhdl(results)

        StaticUtilities.logger.warning("Testing StringFormatAttack")
        Detection.reset_test_project()
        project = CCSProject(source_file="main.c",
                             project_name="test_target",
                             path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                             )
        instrumentation: Instrumentation = Instrumentation(project, StringFormatAttack())
        instrumentation.instrument()
        results: bool = Main.detection(project, 0.35)
        Main.__generate_vhdl(results)

        StaticUtilities.logger.warning("Testing IntOverflowAttack")
        Detection.reset_test_project()
        project = CCSProject(source_file="main.c",
                             project_name="test_target",
                             path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                             )
        instrumentation: Instrumentation = Instrumentation(project, IntOverflowAttack())
        instrumentation.instrument()
        results: bool = Main.detection(project, 0.35)
        Main.__generate_vhdl(results)

        StaticUtilities.logger.warning("Testing All Attacks at once")
        Detection.reset_test_project()
        project = CCSProject(source_file="main.c",
                             project_name="test_target",
                             path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                             )
        instrumentation: Instrumentation = Instrumentation(project, AllInstrumentationStrategies())
        instrumentation.instrument()
        results: bool = Main.detection(project, 0.35)
        Main.__generate_vhdl(results)
        return

    @staticmethod
    def generate_vhdl_exclusively() -> None:
        """
        Generates VHDL for a source file. Bypasses the rest of the toolchain.
        :return: None.
        """
        ccs_project: CCSProject = CCSProject(project_name="test_C", source_file="test_C.c",
                                             path=f"{StaticUtilities.project_root_directory()}//ccs_workspace//test_C")
        vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(ccs_project=ccs_project)
        vhdl_parser_generator.generate_vhdl()
        package_zipper: PackageZipper = PackageZipper()
        package_zipper.zip_vhdl(zip_file_name="fixing_generation_04_25_2022")

    @staticmethod
    def inject_msp430_exclusively() -> None:
        """
        Attempts to inject a CCSProject with some vulnerability.
        :return: None.
        """
        Detection.reset_test_project()
        project = CCSProject(source_file="main.c",
                             project_name="test_target",
                             path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                             )
        instrumentation: Instrumentation = Instrumentation(project, StringFormatAttack())
        instrumentation.instrument()


if __name__ == '__main__':
    main: Main = Main()
    main.demo()
    # Detection.reset_test_project()
