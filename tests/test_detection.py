from ccs_project import CCSProject
from detection import Detection
from instrument_buffer_overflow_attack import BufferOverflowAttack
from instrumentation import Instrumentation
from static_utilities import StaticUtilities


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
    with open(rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target\main.c", 'w') as file:
        file.write(base_file)


if __name__ == '__main__':
    reset_test_project()
    project: CCSProject = CCSProject(source_file="main.c",
                                     project_name="test_target",
                                     path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\test_target"
                                     )
    instrumentation: Instrumentation = Instrumentation(project, BufferOverflowAttack())
    instrumentation.instrument()

    detection: Detection = Detection(project, pique_bin_bool=False)
    StaticUtilities.logger.debug(f"Project Hash: {project.__hash__()}")
    detection.pique_binary_security_quality = 0.2
    StaticUtilities.logger.debug(f"detection: {'No malware found' if detection.detect() else 'Possible malware detected'}")
