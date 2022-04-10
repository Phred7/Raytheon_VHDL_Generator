
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
    