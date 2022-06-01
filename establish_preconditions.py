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
    def recursively_search_for_nodes_with_tag_attrib(node, nodes: List, tag: str, attribute: str = None,
                                                     value: str = None):
        """
        Helper method used to find build settings in CCS .cproject file.
        :param node: The node whose attributes and children are to be searched.
        :param tag: The tag of all desired nodes.
        :param nodes: A list of all nodes with the desired tag, attribute and value.
        :param attribute: An attribute which should be in the node (optional).
        :param value: The value of the specified attribute (optional).
        """
        if node.tag == tag:
            if attribute is not None:
                if attribute in node.attrib.keys():
                    if value is not None:
                        if node.attrib[attribute] == value or value in node.attrib[attribute]:
                            nodes.append(node)
                    else:
                        nodes.append(node)
        else:
            for child in node:
                Preconditions.recursively_search_for_nodes_with_tag_attrib(child, nodes, tag, attribute)

    @staticmethod
    def establish_preconditions(project: CCSProject) -> None:
        """
        Modify the .cproject file of a CCS project to guarantee use of instrumentation.
        CCS project settings are stored in the .cproject XML file at the project root; adding "python instrumentation.py"
        to a particular tag in that file will change the way the project is compiled, ensuring instrumentation occurs.
        """

        instrumentation_file_path: str = f"{StaticUtilities.project_root_directory()}\\instrumentation.py"

        tree = ElementTree.parse(f"{project.path}\\.cproject")
        # add instrumentation post build step
        artifactExtensionNodes = []
        Preconditions.recursively_search_for_nodes_with_tag_attrib(tree.getroot(), artifactExtensionNodes,
                                                                   "configuration", "artifactExtension")
        for node in artifactExtensionNodes:
            print(f"Before: {node.attrib}")
            if "id" in node.attrib.keys():
                if "Debug" in node.attrib["id"]:
                    node.attrib["postbuildStep"] = f"python {instrumentation_file_path};"
            print(f"After:  {node.attrib}")

        # add silicon version msp
        siliconVersionNodes = []
        Preconditions.recursively_search_for_nodes_with_tag_attrib(tree.getroot(), siliconVersionNodes, "option", "id",
                                                                   "com.ti.ccstudio.buildDefinitions.MSP430_20.2.compilerID.SILICON_VERSION.")
        for node in siliconVersionNodes:
            node.attrib = {
                "id": "com.ti.ccstudio.buildDefinitions.MSP430_20.2.compilerID.SILICON_VERSION.2143106352",
                "name": "Silicon version (--silicon_version, -v)",
                "superClass": "com.ti.ccstudio.buildDefinitions.MSP430_20.2.compilerID.SILICON_VERSION",
                "value": "com.ti.ccstudio.buildDefinitions.MSP430_20.2.compilerID.SILICON_VERSION.msp",
                "valueType": "enumerated"
            }

        # add predefined values
        preDefineSymbolsNodes = []
        Preconditions.recursively_search_for_nodes_with_tag_attrib(tree.getroot(), preDefineSymbolsNodes,
                                                                   "configuration", "id",
                                                                   "com.ti.ccstudio.buildDefinitions.MSP430.Debug.")
        for node in preDefineSymbolsNodes:
            node.append(ElementTree.fromstring(
                """<fileInfotoolsToInvoke="com.ti.ccstudio.buildDefinitions.MSP430_20.2.exe.compilerDebug.79209020.1930634030" resourcePath="main.c" rcbsApplicability="disable" name="main.c" id="com.ti.ccstudio.buildDefinitions.MSP430.Debug.719113010.668666606" ><toolsuperClass="com.ti.ccstudio.buildDefinitions.MSP430_20.2.exe.compilerDebug.79209020" name="MSP430 Compiler" id="com.ti.ccstudio.buildDefinitions.MSP430_20.2.exe.compilerDebug.79209020.1930634030" ><optionvalueType="definedSymbols" superClass="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compilerID.DEFINE" name="Pre-define NAME (--define, -D)" id="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compilerID.DEFINE.2130206017" IS_VALUE_EMPTY="false" IS_BUILTIN_EMPTY="false" ><listOptionValuevalue="_INLINE" builtIn="false" ></listOptionValue><listOptionValuevalue="__COLT430FR2355__" builtIn="false" ></listOptionValue></option><inputTypesuperClass="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__C_SRCS" name="C Sources" id="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__C_SRCS.2067337826" ></inputType><inputTypesuperClass="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__CPP_SRCS" name="C++ Sources" id="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__CPP_SRCS.1084241625" ></inputType><inputTypesuperClass="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__ASM_SRCS" name="Assembly Sources" id="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__ASM_SRCS.1504981235" ></inputType><inputTypesuperClass="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__ASM2_SRCS" name="Assembly Sources" id="com.ti.ccstudio.buildDefinitions.MSP430_20.2.compiler.inputType__ASM2_SRCS.1396616582" ></inputType></tool><toolname="Resource Custom Build Step" id="org.eclipse.cdt.managedbuilder.ui.rcbs.770703532" customBuildStep="true" ><inputTypename="Resource Custom Build Step Input Type" id="org.eclipse.cdt.managedbuilder.ui.rcbs.inputtype.141059240" ><additionalInputpaths="" kind="additionalinputdependency" ></additionalInput></inputType><outputTypename="Resource Custom Build Step Output Type" id="org.eclipse.cdt.managedbuilder.ui.rcbs.outputtype.1405683998" ></outputType></tool></fileInfo>"""))

        # tree.write(f"{project.path}\\.cproject")


def test_establish_preconditions():
    project: CCSProject = CCSProject(
        path="C:\\Users\Mike\\Documents\\GitHub\\Raytheon_VHDL_Generator\\brand_spankin_new",
        source_file=""
    )
    Preconditions.establish_preconditions(project)


if __name__ == '__main__':
    test_establish_preconditions()
