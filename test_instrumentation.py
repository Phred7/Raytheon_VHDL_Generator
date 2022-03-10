import logging

from basic_overwrite_attack import BasicOverwriteAttack
from buffer_overflow_attack import BufferOverflowAttack
from ccs_project import CCSProject, ProjectType
from instrumentation import Instrumentation
from int_overflow_attack import IntOverflowAttack
from static_utilities import StaticUtilities
from string_format_attack import StringFormatAttack


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
    instrumentation: Instrumentation = Instrumentation(project, BasicOverwriteAttack())
    instrumentation.instrument()


def test_buffer_overflow(project: CCSProject) -> None:
    instrumentation: Instrumentation = Instrumentation(project, BufferOverflowAttack())
    instrumentation.instrument()


def test_int_overflow(project: CCSProject) -> None:
    instrumentation: Instrumentation = Instrumentation(project, IntOverflowAttack())
    instrumentation.instrument()


def test_string_format_attack(project: CCSProject) -> None:
    instrumentation: Instrumentation = Instrumentation(project, StringFormatAttack())
    instrumentation.instrument()

def main() -> None:
    tests = [test_basic_overwrite, test_buffer_overflow, test_int_overflow, test_string_format_attack]

    for test in tests:
        reset_test_project()
        project: CCSProject = CCSProject(source_file="main.c",
                                         project_type=ProjectType.C,
                                         project_name="test_target",
                                         path=r"C:\Users\Mike\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_target"
                                         )
        StaticUtilities.logger.info(f"Testing {test.__name__}")
        test(project)


if __name__ == '__main__':
    main()