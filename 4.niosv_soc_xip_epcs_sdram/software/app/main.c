#include <stdio.h>
#include <unistd.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>



int main(void)
{

    printf("\nHello from NIOS-V on DE0-NANO: booting and running from EPCS. Variables, data and exceptions stored in external SDRAM!\n");
    fflush(stdout);
	uint8_t count = 0;
    while(1)
    {
    	IOWR_ALTERA_AVALON_PIO_DATA(GPO2_LEDG_BASE, count++);
        usleep(100000);
    }

    return 0;
}
