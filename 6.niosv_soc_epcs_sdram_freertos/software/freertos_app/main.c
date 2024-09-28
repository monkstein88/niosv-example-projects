#include <stdio.h>
#include <unistd.h>
#include <system.h>
#include <io.h>
#include <sys/alt_irq.h>
#include <altera_avalon_pio_regs.h>
#include <FreeRTOS.h>
#include <task.h>

void task1(void* p);
void task2(void* p);

int main(void)
{
	printf("\n\t\t\tHello from NIOS-V CPU, running FreeRTOS on DE0-NANO Board.\n");
	printf("\tFPGA configuration stored and loaded from EPCS, NIOS-V booting from EPCS and then executing from SDRAM\n");
    xTaskCreate(task1, "Task 1", 512, NULL, 2, NULL);
    xTaskCreate(task2, "Task 2", 512, NULL, 2, NULL);

    vTaskStartScheduler();

    return 0;
}

void task1(void* p)
{
	static uint32_t count = 0;
	while(1)
	{
		//printf("Hello from Task #1!\n");
		if((count++) & (1<<0))
		{
			IOWR_ALTERA_AVALON_PIO_SET_BITS(GPO2_LEDG_BASE,1<<0);
		}
		else
		{
			IOWR_ALTERA_AVALON_PIO_CLEAR_BITS(GPO2_LEDG_BASE,1<<0);
		}

		vTaskDelay(1000);
	}
}

void task2(void* p)
{
	static uint32_t count = 0;
    while(1)
    {
    	//printf("\tHello from Task #2!\n");
		if((count++) & (1<<0))
		{
			IOWR_ALTERA_AVALON_PIO_SET_BITS(GPO2_LEDG_BASE,1<<7);
		}
		else
		{
			IOWR_ALTERA_AVALON_PIO_CLEAR_BITS(GPO2_LEDG_BASE,1<<7);
		}

		vTaskDelay(5000);
    }
}
