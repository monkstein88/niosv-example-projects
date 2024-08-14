#include <stdio.h>
#include <unistd.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>



int main(void)
{
	uint8_t count = 0;
    printf("\nHello from NIOS-V running on DE0-NANO!\n");
	fflush(stdout);
    while(1)
    {
    	IOWR_ALTERA_AVALON_PIO_DATA(GPO2_LEDG_BASE, count++);
        usleep(100000);
    }

    return 0;
}
