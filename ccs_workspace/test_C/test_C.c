#include <msp430.h>
int main(void) {
    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
    PADIR |=  0xAAAA;           //Set alternating bits of Port A to output
    PADIR &= ~0x5555;           //Rest are input
    PAREN |=  0x5555;           //Set non output bits of Port A to have resistors enabled
    PAOUT &= ~0x5555;           //Set non output bits of Port A to be pulled low with resistors
    PBDIR &= ~0xFFFF;           //Set all bits of Port B to input
    PBREN |=  0x5555;           //Set non alternating input bits of Port B to have resistors enabled
    PBOUT &= ~0x5555;           //Set non alternating input bits of Port B to be pulled low with resistors
    while(1){
        //Purpose of this file is to implement on FPGA
        //Port B will be input tied to buttons/switches
        //Port A output will be tied to LEDs
        PAOUT = PBIN;//Port A Out is assigned Port B
    }
}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xAAAA;            //Set alternating bits of Port A to output
//    PADIR &= ~0x5555;           //Set non output bits of Port A to input
//    PAREN =  0x5555;            //Set non output bits of Port A to have resistors enabled
//    PAOUT =  0x5555;            //Set non output bits of Port A to be pulled low with resistors
//    PBDIR &= ~0xAAAA;           //Set alternating bits of Port B to input
//    PBDIR |= 0x5555;            //Set non input bits of Port B to output
//    PBREN =  0x5555;            //Set non input bits of Port B to have resistors enabled
//    PBOUT =  0x5555;            //Set non input bits of Port B to be pulled high with resistors
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//        PAOUT &= PBIN;//Port A Out is assigned Port B In which is ANDed with 0xAAAA to
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xFFFF;            //Set Port A to output
//    PBDIR &= ~0xFFFF;           //Set Port B to input
//    PBREN |= 0xFFFF;           //Set Port B to disable pull resistors
//    PBOUT &= ~0xFFFF;
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//        PAOUT = PBIN;
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xFFFF;            //Set Port A to Output
//    PBDIR |= 0xFFFF;            //Set Port B to Output
//    while(1){
//        PAOUT |= 0xFFFF;        //Set Port A output to be high
//        PBOUT |= 0xFFFF;        //Set Port B output to be high
//        PAOUT &= ~0xFFFF;       //Set Port A output to be low
//        PBOUT &= ~0xFFFF;       //Set Port B output to be low
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xFFFF;            //Set Port A to output
//    PBDIR &= ~0xFFFF;           //Set Port B to input
//    PBREN &= ~0xFFFF;           //Set Port B to disable pull resistors
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//    }
//}


//#include <msp430.h>
//void init_GPIO(void);
//void high_GPIO(void);
//void low_GPIO(void);
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    init_GPIO();
//    while(1){
//        high_GPIO();
//        low_GPIO();
//        high_GPIO();
//    }
//}
//
//void init_GPIO(void){
//    /* Initialize Port A and B GPIO to output*/
//    /*P1DIR |= 0xFF;
//    P2DIR |= 0xFF;
//    P3DIR |= 0xFF;
//    P4DIR |= 0xFF;
//    P2DIR |= 0xFF;*/
//    PADIR |= 0xFFFF;
//    PBDIR |= 0xFFFF;
//
//    /* Initialize Port A and B GPIO to output low*/
//   /* P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;*/
//    PAOUT &= ~0xFFFF;
//    PBOUT &= ~0xFFFF;
//}
//
//void high_GPIO(void){
//    /*P1OUT |= 0xFF;
//    P2OUT |= 0xFF;
//    P3OUT |= 0xFF;
//    P4OUT |= 0xFF;*/
//    PAOUT |= 0xFFFF;
//    PBOUT |= 0xFFFF;
//}
//
//void low_GPIO(void){
//    /*P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;*/
//    PAOUT &= ~0xFFFF;
//    PBOUT &= ~0xFFFF;
//}



//#include <msp430.h>
//void init_GPIO(void);
//void high_GPIO(void);
//void low_GPIO(void);
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    init_GPIO();
//    while(1){
//        high_GPIO();
//        low_GPIO();
//        high_GPIO();
//    }
//}
//
//void init_GPIO(void){
//    /* Initialize Port A and B GPIO to output*/
//    P1DIR |= 0xFF;
//    P2DIR |= 0xFF;
//    P3DIR |= 0xFF;
//    P4DIR |= 0xFF;
//
//    /* Initialize Port A and B GPIO to output low*/
//    P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;
//}
//
//void high_GPIO(void){
//    P1OUT |= 0xFF;
//    P2OUT |= 0xFF;
//    P3OUT |= 0xFF;
//    P4OUT |= 0xFF;
//}
//
//void low_GPIO(void){
//    P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;
//}



//#include "driverlib.h"
//#include <msp430fr2355.h>
//void init_GPIO(void);
//void high_GPIO(void);
//void low_GPIO(void);
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    init_GPIO();
//    while(1){
//        high_GPIO();
//        low_GPIO();
//        high_GPIO();
//    }
//}
//
//void init_GPIO(void){
//    /* Initialize Port A and B GPIO to output*/
//    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setAsOutputPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setAsOutputPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setAsOutputPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//
//    /* Initialize Port A and B GPIO to output*/
//    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//
//
//}
//
//void high_GPIO(void){
//    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setOutputHighOnPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setOutputHighOnPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setOutputHighOnPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//}
//
//void low_GPIO(void){
//    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//}
