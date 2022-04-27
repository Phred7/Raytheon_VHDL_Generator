"""
# Buffer Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from instrumentation_strategy import InstrumentationStrategy


class SWTriggeredFailure(InstrumentationStrategy):
    """SW Triggered Failure"""

    def instrument(self, file_to_instrument: str) -> bool:
        """"
        Instruments a file by adding a SW interrupt and causing control loop to stop.
        :param file_to_instrument: the project containing the source to be modified.
        :return: True if the process is successful, False if it fails at any step
        """
        output_file_str: str = ""
        instrumented_bool: bool = False
        with open(file_to_instrument, "r") as file_to_instrument_iterable:
            global_trigger: bool = False
            sw_config_flag: bool = False
            sw_isr_flag: bool = False
            for line in file_to_instrument_iterable:
                if not global_trigger and "void" in line:
                    global_trigger = True
                    output_file_str += self.sw_trigger_global()

                if not sw_config_flag:
                    sw_config_flag = True
                    output_file_str += self.sw_config()
                    pass

                if not sw_isr_flag:
                    sw_isr_flag = True
                    output_file_str += self.sw_isr()
                    pass

                output_file_str += line

            instrumented_bool = global_trigger | sw_config_flag | sw_isr_flag

        if instrumented_bool:
            with open(file_to_instrument, "w") as file_to_instrument_iterable:
                file_to_instrument_iterable.write(output_file_str)

        return instrumented_bool

    def sw_trigger_global(self) -> str:
        return """
        unsigned char sw_trigger_flag = 0x00;"""

    def sw_config(self) -> str:
        return """
            // SW1 config
    P4DIR &= ~BIT1;             // Clear P4.1 (SW1) dir = in
    P4REN |= BIT1;              // Enable pull up/down res
    P4OUT |= BIT1;              // Make res pull up
    P4IES |= BIT1;              // Config IRQ H->L
    P4IFG &= ~BIT1;             // Clear P4.1 IRQ flag
    P4IE |= BIT1;               // Enable P4.1 IRQ"""

    def sw_isr(self) -> str:
        return """
        //-- Service SW1
#pragma vector = PORT4_VECTOR
__interrupt void ISR_Port4_SW1(void) {
    sw_trigger_flag = 0x01;
    P4IFG &= ~BIT1;
}
//-- END ISR_Port4_SW1
        """
