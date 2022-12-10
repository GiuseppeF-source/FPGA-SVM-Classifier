#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "sleep.h"
#include "xaxidma.h"
#include "xgpio.h"

#include "PCV_pkt_32b.h" // PCV[]

#define DMA_MAIN_ID					XPAR_AXI_DMA_0_DEVICE_ID
#define CDMA_ID						XPAR_AXI_CDMA_0_DEVICE_ID

/********* Instances DMA Test *********/
XAxiDma_Config *CfgPtr_DMA_MAIN;   				 /* Pointer to the configuration of DMA */
XAxiDma DMA_MAIN;

/********* GPIO *********/
XGpio Gpio; 					/* The Instance of the GPIO Driver */
/* The following constant is used to determine which channel of the GPIO is used. */
#define START 1


int main()
{
    init_platform();
    Xil_DCacheDisable();
    Xil_DCacheFlush();

    xil_printf("Avvio Programma\n\r");
	/*********** Initialize the GPIO driver ***********/

	int Status_Gpio = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);

	if (Status_Gpio != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}else xil_printf("Gpio Initialized \r\n");

	/* Set the direction for all signals  */
	XGpio_SetDataDirection(&Gpio, START, 0); // channel 1 -> start -> output
	xil_printf("GPIO per controllo FSM  settato in output \r\n");

	/* Send combination 0 -> STATE IDLE to PL */
	XGpio_DiscreteWrite(&Gpio, START, 0);
	xil_printf("START = 0 ,  -> IDLE MODE\r\n");

	/*********** END Initialize GPIO ***********/


	/*********** TEST the DMA driver ***********/
	/////// DMA_MAIN ///////
	CfgPtr_DMA_MAIN = XAxiDma_LookupConfig(DMA_MAIN_ID);
	if (!CfgPtr_DMA_MAIN) {
		xil_printf("No config found for %d\r\n", DMA_MAIN_ID);
		return XST_FAILURE;
	}

	int Status_DMA = XAxiDma_CfgInitialize(&DMA_MAIN, CfgPtr_DMA_MAIN);
	if (Status_DMA != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status_DMA);
		return XST_FAILURE;
	}else xil_printf("DMA_MAIN -> Inizializzato \r\n");

	/* Disable interrupts,  use polling mode */
	XAxiDma_IntrDisable(&DMA_MAIN, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&DMA_MAIN, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/* Try to start the DMA transfer
		  */
	Xil_DCacheFlushRange((u32)PCV,(15*13)*sizeof(u32));


	sleep(2);
	XGpio_DiscreteWrite(&Gpio, START, 1);
	xil_printf("START = 1 ,  -> SETUP MODE\r\n");


	// INVIO
	int Status_send = XAxiDma_SimpleTransfer(&DMA_MAIN, (u32)PCV, (15*13)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

			if (Status_send != XST_SUCCESS) {
				xil_printf("Config Transfer Failed \r\n");
				return XST_FAILURE;
			}
	xil_printf("AXI MAIN DMA -> Configurato per Inviare a PL \r\n");



	while ( (XAxiDma_Busy(&DMA_MAIN,XAXIDMA_DMA_TO_DEVICE))) {
			/* Attesa completamento operazione del DMA */
			xil_printf("DMA MAIN sta inviando... \r\n");
			sleep(1);
	}
	xil_printf("AXI MAIN DMA -> Invio e Ricezione eseguiti con successo \r\n");

    cleanup_platform();
    return 0;
}