
#include <msp430.h> 
#include <stdio.h>
#include <string.h>
/**
 * main.c
  */
  int main(void)
  {

    	WDTCTL = WDTPW | WDTHOLD;
	// stop watchdog timer
        char message1[5] = "GOOD";

        char message2[5] = "BAD";

        char output[20];

        int status = 1;

        if (status == 0) {

            strncpy(output, message1,status);

        }
 else {

                strncpy(output, message2,status);

        }

        printf(output);

        return 0;

}
