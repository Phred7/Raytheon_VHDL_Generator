from xml.etree import ElementTree
from typing import List

from ccs_project import CCSProject
from static_utilities import StaticUtilities


class Preconditions:
    """
    Class used to establish preconditions for running instrumentation on a CCS project.
    Ensures that build properties are set such that the project will always be instrumented.
    """

    @staticmethod
    def recursively_search_for_nodes_with_tag_attrib(node, tag: str, attrib: str, nodes: List):
        """
        Helper method used to find build settings in CCS .cproject file.
        """
        if node.tag == tag:
            if attrib in node.attrib.keys():
                nodes.append(node)
        else:
            for child in node:
                Preconditions.recursively_search_for_nodes_with_tag_attrib(child, tag, attrib, nodes)

    @staticmethod
    def establish_preconditions(project: CCSProject) -> None:
        """
        Modify the .cproject file of a CCS project to guarantee use of instrumentation.
        CCS project settings are stored in the .cproject XML file at the project root; adding "python instrumentation.py"
        to a particular tag in that file will change the way the project is compiled, ensuring instrumentation occurs.
        """

        instrumentation_file_path: str = f"{StaticUtilities.project_root_directory()}\\instrumentation.py"

        tree = ElementTree.parse(f"{project.path}\\.cproject")
        nodes = []
        Preconditions.recursively_search_for_nodes_with_tag_attrib(tree.getroot(), "configuration", "artifactExtension", nodes)
        for node in nodes:
            print(f"Before: {node.attrib}")
            if "id" in node.attrib.keys():
                if "Debug" in node.attrib["id"]:
                    node.attrib["postbuildStep"] = f"python {instrumentation_file_path};"
            print(f"After:  {node.attrib}")
        tree.write(f"{project.path}\\.cproject")
