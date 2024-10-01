#include <stdio.h>
#include <unistd.h>
#include <system.h>
#include <io.h>
#include <sys/alt_irq.h>
#include <altera_avalon_pio_regs.h>
#include <FreeRTOS.h>
#include <task.h>

static void task1(void* p);
static void task2(void* p);

/* Declare a global variable to holds the edge capture value
Declaring a variable as volatile tells the compiler that
the value of the variable may change at any time without
any action being taken by the code the compiler finds nearby.
This variable will be connected to the interrupt register which
is controlled from HW and not SW. The compile will therefor not
find any code that controls this variable, and if not declared as
volatile, the compile may decided to optimize and remove this variable. */
volatile int key1_edge_capture;
static TaskHandle_t key1EventTaskHandle = NULL;

/* This is the ISR which will be called when the system signals an interrupt - this is a (common) funnel for all ISRs */
static void allISRHandler(void* context)
{
	/* Section for KEY1 (active-low) push-button */

    //Cast context to edge_capture's type
    //Volatile to avoid compiler optimization
    //this will point to the edge_capture variable.
    volatile int* edge_capture_ptr = (volatile int*) context;

    //Read the edge capture register on the PIO and store the value
    //The value will be stored in the edge_capture variable and accessible
    //from other parts of the code.
    *edge_capture_ptr = IORD_ALTERA_AVALON_PIO_EDGE_CAP(GPI0_BUTN_BASE);


    if(*edge_capture_ptr)
    {
      BaseType_t checkIfYieldRequired = xTaskResumeFromISR(key1EventTaskHandle);
      portYIELD_FROM_ISR(checkIfYieldRequired);
    }

    //Write '1' to edge capture register bit, to reset it
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(GPI0_BUTN_BASE,1<<0);

    /* Read the PIO to delay ISR exit. This is done to prevent a
    spurious interrupt in systems with high processor -> pio
    latency and fast interrupts. */
    IORD_ALTERA_AVALON_PIO_EDGE_CAP(GPI0_BUTN_BASE);
}

/* This function is used to initializes and registers the interrupt handler - for KEY1 (button) */
static void key1ISRInit()
{
	/* Section for KEY1 (active-low) push-button */
    //Recast the edge_capture point to match the
    //alt_irq_register() function prototypo
    void* edge_capture_ptr = (void*)&key1_edge_capture;

    //Enable a single interrupt input by writing a one to the corresponding interruptmask bit locations
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(GPI0_BUTN_BASE,1<<0);

    //Reset the edge capture register
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(GPI0_BUTN_BASE,1<<0);

    //Register the interrupt handler in the system
    //The ID and PIO_IRQ number is available from the system.h file.
    alt_ic_isr_register(GPI0_BUTN_IRQ_INTERRUPT_CONTROLLER_ID,
    		GPI0_BUTN_IRQ, allISRHandler, edge_capture_ptr, 0x0);

    /* In order to keep the impact of interrupts on the execution of the main program to a minimum,
    it is important to keep interrupt routines short. If additional processing is necessary for a
    particular interrupt, it is better to do this outside of the ISR. E.g., checking the value
    of the edge_capture variable.*/
}


/*
 * This is the task, that is to be associated and run after a KEY1 (button) press event occurs
 * Note: This is not the (direct) ISR Handler for this periphery, which is supposed to execute
 * immediately and handle the HW event as it happens. That is handled by the allISRHandler().
 * In here, the entailed (higher-level) after-events, following the ISR, that need to be performed.
 */
static void key1EventTask()
{
  while(1)
  {
    vTaskSuspend(NULL); // suspend itself, wait for external signal for the task to resume
    if(IORD_ALTERA_AVALON_PIO_DATA(GPO2_LEDG_BASE) & (1<<4))
    {
      IOWR_ALTERA_AVALON_PIO_CLEAR_BITS(GPO2_LEDG_BASE, 1<<4);
	}
	else
	{
      IOWR_ALTERA_AVALON_PIO_SET_BITS(GPO2_LEDG_BASE, 1<<4);
	}
  }
}


int main(void)
{
	printf("\n\t\t\tHello from NIOS-V CPU, running FreeRTOS on DE0-NANO Board.\n");
	printf("\tFPGA configuration stored and loaded from EPCS, NIOS-V booting from EPCS and then executing from SDRAM\n");
	key1ISRInit();
    xTaskCreate(task1, "Task 1", 512, NULL, 2, NULL);
    xTaskCreate(task2, "Task 2", 512, NULL, 2, NULL);
    xTaskCreate(key1EventTask, "Key 1 Event Task ", 512, NULL, 2, &key1EventTaskHandle);
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



