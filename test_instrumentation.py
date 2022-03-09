from basic_overwrite_attack import BasicOverwriteAttack
from ccs_project import CCSProject, ProjectType
from instrumentation import Instrumentation


def reset_test_project() -> None:
    base_file = """
#include <msp430.h> 
#include <stdio.h>
/**
 * main.c
 */
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	char message[8] = "MESSAGE";
	int status = 0;
	if (status == 0) {
	    printf(message);
	} else {
	    printf("default");
	}
	return 0;
}
    """
    with open(r"C:\Users\Mike\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_target\main.c", 'w') as file:
        file.write(base_file)


def test_basic_overwrite(project: CCSProject) -> None:
    print("test")
    instrumentation: Instrumentation = Instrumentation(project, BasicOverwriteAttack())
    instrumentation.instrument()


def main() -> None:
    print("main")
    reset_test_project()
    project: CCSProject = CCSProject(source_file="main.c",
                                     project_type=ProjectType.C,
                                     project_name="test_target",
                                     path=r"C:\Users\Mike\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_target"
                                     )
    test_basic_overwrite(project)


if __name__ == '__main__':
    print("if name is main")
    main()
