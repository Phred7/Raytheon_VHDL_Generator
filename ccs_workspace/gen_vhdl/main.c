#include <msp430.h>
int main(void) {
    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
    PADIR |= 0xAAAA;            //Set alternating bits of Port A to output
    PADIR &= ~0x5555;           //Set non output bits of Port A to input
    PAREN |= 0x5555;            //Set non output bits of Port A to have resistors enabled
    PAOUT |= 0x5555;            //Set non output bits of Port A to be pulled low with resistors
    PBDIR &= ~0xAAAA;           //Set alternating bits of Port B to input
    PBDIR |= 0x5555;            //Set non input bits of Port B to output
    PBREN |= 0x5555;            //Set non input bits of Port B to have resistors enabled
    PBOUT |= 0x5555;            //Set non input bits of Port B to be pulled high with resistors
    while(1){
        //Purpose of this file is to implement on FPGA
        //Port B will be input tied to buttons/switches
        //Port A output will be tied to LEDs
        PAOUT = PBIN & 0xAAAA;//Port A Out is assigned Port B In which is ANDed with 0xAAAA to
    }
}
