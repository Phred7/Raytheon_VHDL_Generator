import xml.etree.ElementTree as et
import xml.dom.minidom as md

from ccs_project import CCSProject, ProjectType


class Preconditions():
    @staticmethod
    def establish_preconditions(project: CCSProject) -> None:
        file: md.Document = md.parse(f"{project.path}\\.cproject")
        print(file)
        print(file.nodeName)
        print(file.nodeValue)
        el: md.Element = file.childNodes[1]
        print(el.tagName)
        print(el.nodeValue)
        print(el.childNodes)
        configs = file.getElementsByTagName("configuration")
        print(configs)
        for config in configs:
            x: md.Element = config
            print(x.tagName)
            print(x.nodeValue)
            print(x.ATTRIBUTE_NODE)

        print(file.childNodes[1])

if __name__ == '__main__':
    project: CCSProject = CCSProject(
        path = r"C:\Users\Mike\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_target",
        source_file="main.c",
        project_name="test_target",
        project_type=ProjectType.C
    )
    Preconditions.establish_preconditions(project)