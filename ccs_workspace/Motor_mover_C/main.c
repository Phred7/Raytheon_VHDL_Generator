#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    PM5CTL0 &=  ~LOCKLPM5; // turn on pins!

    P1DIR |= BIT4;


    while(1){

        P1OUT |= BIT4; //This is setting bit4 high
        int i;
        int i2;

        for(i = 0x0fff; i <0; i--){
            for(i2 = 0x0fff; i2 <0; i2--){


            }
        }

        P1OUT &= ~BIT4; //This clears bit4 low

        for(i = 0x0fff; i <0; i--){
            for(i2 = 0x0fff; i2 <0; i2--){


            }
        }
    }

	
	return 0;
}
