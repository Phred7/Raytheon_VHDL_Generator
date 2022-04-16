from typing import Callable, List

from basic_overwrite_attack import BasicOverwriteAttack
from instrument_buffer_overflow_attack import BufferOverflowAttack
from ccs_project import CCSProject
from instrumentation import Instrumentation
from instrument_int_overflow_attack import IntOverflowAttack
from static_utilities import StaticUtilities
from instrument_string_format_attack import StringFormatAttack


def reset_test_project() -> None:
    base_file = r"""
#include <msp430.h> 
#include <stdio.h>
#include <string.h>
/**
 * main.c
  */
  int main(void)
  {
    	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
        char message1[5] = "GOOD";
        char message2[5] = "BAD";
        char output[20];
        int status = 1;
        if (status == 0) {
            strncpy(output, message1, sizeof(message1));
        } else {
                strncpy(output, message2, 5);
        }
        printf(output);
        return 0;
}

    """
    with open(rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target\main.c", 'w') as file:
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
    # instrumentation_strategies: List[Callable] = [test_basic_overwrite, test_buffer_overflow, test_int_overflow, test_string_format_attack]
    instrumentation_strategies: List[Callable] = [test_int_overflow]
    for test in instrumentation_strategies:
        reset_test_project()
        project: CCSProject = CCSProject(source_file="main.c",
                                         project_name="test_target",
                                         path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                                         )
        StaticUtilities.logger.info(f"Testing {test.__name__}")
        test(project)


if __name__ == '__main__':
    main()
