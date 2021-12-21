#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer


    P1DIR &= ~BIT4;             // Clear P1.4 dir = in
    P1REN |= BIT4;              // Enable pull up/down res
    P1OUT |= BIT4;              // Make res pull up
    // P1IES |= BIT4;              // Config IRQ H->L

    PM5CTL0 &=  ~LOCKLPM5; // turn on pins!

    P1DIR |= BIT4;



    int input_counter = 0;
    int input;


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

        input = P1IN;             // Read P4 and into SW1
        input &= BIT4;            // Clear bits in SW1 except BIT1

        if (input == 0) {
            input_counter += 1;
        }

    }


    return 0;
}
