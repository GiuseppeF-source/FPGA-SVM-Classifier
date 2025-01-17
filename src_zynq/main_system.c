#include "stdio.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "sleep.h"
#include "xaxidma.h"
#include "Attribute_Test_ddr32.h"
#include "PCV_pkt_32b.h" // PCV[]
#include "Kernel_Scale_pkt_32b.h" // Kernel_Scale[]
#include "Bias_pkt_32b.h"  // Bias[]

#include "xaxicdma.h" // test
#include "xbram.h"   // test


/********* GPIO *********/
XGpio Gpio; 					/* The Instance of the GPIO Driver */
/* The following constant is used to determine which channel of the GPIO is used. */
#define START 1
#define CLASSIFICATION 2



/********* Instances DMA *********/
#define DMA_MAIN_ID					XPAR_AXI_DMA_0_DEVICE_ID
#define DMA_load_PCV_ID 			XPAR_AXI_DMA_1_DEVICE_ID
#define DMA_load_Kernel_Scale_ID 	XPAR_AXI_DMA_2_DEVICE_ID
#define DMA_load_Bias_ID 			XPAR_AXI_DMA_3_DEVICE_ID
#define CDMA_ID						XPAR_AXI_CDMA_0_DEVICE_ID

XAxiDma_Config *CfgPtr_DMA_MAIN;   				 /* Pointer to the configuration of DMA */
XAxiDma DMA_MAIN;								 /* The Instance of the DMA */

XAxiDma_Config *CfgPtr_DMA_load_PCV; 			 /* Pointer to the configuration of DMA */
XAxiDma DMA_load_PCV;				 			 /* The Instance of the DMA */

XAxiDma_Config *CfgPtr_DMA_load_Kernel_Scale;    /* Pointer to the configuration of DMA */
XAxiDma DMA_load_Kernel_Scale;							 /* The Instance of the DMA */

XAxiDma_Config *CfgPtr_DMA_load_Bias; 		     /* Pointer to the configuration of DMA */
XAxiDma DMA_load_Bias;							 /* The Instance of the DMA */

/********* Instances CDMA Test *********/
XAxiCdma AxiCdmaInstance;						/* Instance of the XAxiCdma */
XAxiCdma_Config *CfgPtr;
/********* Instances BRAM_CTRL Test *********/
XBram Bram;										/* The Instance of the BRAM Driver */
XBram_Config *ConfigPtr;


/********* Variable Allocation *********/
#define n_SVM  15
u32 Result[36];           // risultati della classificazione, i 3bit meno significativi sono effettivi

int main()
{
    init_platform();
    Xil_DCacheDisable();
    Xil_DCacheFlush();
    xil_printf("Avvio Programma\n\r");


    /************ TEST BRAM CTRL **************/


    ConfigPtr = XBram_LookupConfig(XPAR_AXI_BRAM_CTRL_0_DEVICE_ID);
    	if (ConfigPtr == (XBram_Config *) NULL) {
    		return XST_FAILURE;
    	}

    int Status_bram = XBram_CfgInitialize(&Bram, ConfigPtr,
    				     ConfigPtr->CtrlBaseAddress);
    	if (Status_bram != XST_SUCCESS) {
    		return XST_FAILURE;
    	} else xil_printf("BRAM CTRL inizializzato\r\n");


    /******************************************/

    /*********** TEST  CDMA Driver ***********/
	/* Initialize the XAxiCdma device.
	 */
	CfgPtr = XAxiCdma_LookupConfig(CDMA_ID);
	if (!CfgPtr) {
		return XST_FAILURE;
	}

	int Status_cdma = XAxiCdma_CfgInitialize(&AxiCdmaInstance, CfgPtr, CfgPtr->BaseAddress);
	if (Status_cdma != XST_SUCCESS) {
		return XST_FAILURE;
	} else xil_printf("CDMA inizializzato\r\n");
	/* Disable interrupts, we use polling mode
	 */
	XAxiCdma_IntrDisable(&AxiCdmaInstance, XAXICDMA_XR_IRQ_ALL_MASK);

	/* Try to start the DMA transfer
	  */
//		Xil_DCacheFlushRange((u32)PCV,(15*13)*sizeof(u32));
//
//		Status_cdma = XAxiCdma_SimpleTransfer(&AxiCdmaInstance, (u32)PCV, 0x62000000  , (15*13)*sizeof(u32) , NULL, NULL);  // dest << BRAM_CTRL ConfigPtr->MemBaseAddress
//		if (Status_cdma == XST_SUCCESS) {
//			xil_printf("CDMA Failed \r\n");
//			return XST_FAILURE;
//		}else xil_printf("CDMA programmato....\r\n");


	/* Wait until the DMA transfer is done
	 */
//	while (XAxiCdma_IsBusy(&AxiCdmaInstance)) {
//		/* Wait */
//		xil_printf("CDMA sta inviando....\r\n");
//		sleep(2);
//	}
//	xil_printf("CDMA ha trasferito i dati con successo!!! \r\n");
    /*************************************************/

	/*********** Initialize the GPIO driver ***********/
    int Status_Gpio;

		Status_Gpio = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);

		if (Status_Gpio != XST_SUCCESS) {
			xil_printf("Gpio Initialization Failed\r\n");
			return XST_FAILURE;
		}else xil_printf("Gpio Initialized \r\n");

		/* Set the direction for all signals  */
		XGpio_SetDataDirection(&Gpio, START         , 0); // channel 1 -> start -> output
		XGpio_SetDataDirection(&Gpio, CLASSIFICATION, 0); // channel 2 -> classification -> output
		xil_printf("GPIO per controllo FSM  settati in output \r\n");

		/* Send combination 00 -> STATE IDLE to PL */
		XGpio_DiscreteWrite(&Gpio, START         , 0);
		XGpio_DiscreteWrite(&Gpio, CLASSIFICATION, 0);
		xil_printf("START = 0 , CLASSIFICATION = 0  -> IDLE MODE\r\n");

	/*********** END Initialize GPIO ***********/


	/*********** Initialize the DMA driver ***********/
	int Status_DMA;

	/////// DMA_MAIN ///////
		CfgPtr_DMA_MAIN = XAxiDma_LookupConfig(DMA_MAIN_ID);
		if (!CfgPtr_DMA_MAIN) {
			xil_printf("No config found for %d\r\n", DMA_MAIN_ID);
			return XST_FAILURE;
		}

		Status_DMA = XAxiDma_CfgInitialize(&DMA_MAIN, CfgPtr_DMA_MAIN);
		if (Status_DMA != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status_DMA);
			return XST_FAILURE;
		}else xil_printf("DMA_MAIN -> Inizializzato \r\n");

		/* Disable interrupts,  use polling mode */
		XAxiDma_IntrDisable(&DMA_MAIN, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&DMA_MAIN, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/////// DMA_load_PCV ///////
		CfgPtr_DMA_load_PCV = XAxiDma_LookupConfig(DMA_load_PCV_ID);
		if (!CfgPtr_DMA_load_PCV) {
			xil_printf("No config found for %d\r\n", DMA_load_PCV_ID);
			return XST_FAILURE;
		}

		Status_DMA = XAxiDma_CfgInitialize(&DMA_load_PCV, CfgPtr_DMA_load_PCV);
		if (Status_DMA != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status_DMA);
			return XST_FAILURE;
		} else  xil_printf("DMA_load_PCV -> Inizializzato \r\n");

		/* Disable interrupts,  use polling mode */
		XAxiDma_IntrDisable(&DMA_load_PCV, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&DMA_load_PCV, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/////// DMA_load_PCV ///////
		CfgPtr_DMA_load_Kernel_Scale = XAxiDma_LookupConfig(DMA_load_Kernel_Scale_ID);
		if (!CfgPtr_DMA_load_Kernel_Scale) {
			xil_printf("No config found for %d\r\n", DMA_load_Kernel_Scale_ID);
			return XST_FAILURE;
		}

		Status_DMA = XAxiDma_CfgInitialize(&DMA_load_Kernel_Scale, CfgPtr_DMA_load_Kernel_Scale);
		if (Status_DMA != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status_DMA);
			return XST_FAILURE;
		} else  xil_printf("DMA_load_Kernel_Scale -> Inizializzato \r\n");

		/* Disable interrupts,  use polling mode */
		XAxiDma_IntrDisable(&DMA_load_Kernel_Scale, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&DMA_load_Kernel_Scale, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/////// DMA_load_Bias ///////
		CfgPtr_DMA_load_Bias = XAxiDma_LookupConfig(DMA_load_Bias_ID);
		if (!CfgPtr_DMA_load_Bias) {
			xil_printf("No config found for %d\r\n", DMA_load_Bias_ID);
			return XST_FAILURE;
		}

		Status_DMA = XAxiDma_CfgInitialize(&DMA_load_Bias, CfgPtr_DMA_load_Bias);
		if (Status_DMA != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status_DMA);
			return XST_FAILURE;
		} else  xil_printf("DMA_load_Bias -> Inizializzato \r\n");

		/* Disable interrupts,  use polling mode */
		XAxiDma_IntrDisable(&DMA_load_Bias, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&DMA_load_Bias, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/*********** END Initialize DMA ***********/


	/*********** Impostazione stato SETUP ***********/

		sleep(5); // wait for 1sec

		/* Send combination 10 -> STATE SETUP of PL */
		XGpio_DiscreteWrite(&Gpio, START         , 1);
		XGpio_DiscreteWrite(&Gpio, CLASSIFICATION, 0);
		xil_printf("START = 1 , CLASSIFICATION = 0 -> SETUP MODE\r\n");

		sleep(1); // wait for 1sec
	/************************************************/


	/*********** Caricamento BRAM tramite DMA ***********/
		u32 Status = 0;

///////// LOAD PCV
		Xil_DCacheFlushRange((u32)PCV,(15*13)*sizeof(u32));
		xil_printf("Start Transfer from DMA_load_PCV ( Address PCV on DDR -> 0x%0x) \r\n",&PCV);
		Status = XAxiDma_SimpleTransfer(&DMA_load_PCV, (u32)&PCV, (15*13)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

				if (Status != XST_SUCCESS) {
					xil_printf("Transfer Failed on DMA_load_PCV  \r\n");
					return XST_FAILURE;
				}else xil_printf("DMA_load_PCV -> Configurato per inviare ad axis_to_BRAM_PCV \r\n");

		while ( XAxiDma_Busy(&DMA_load_PCV,XAXIDMA_DMA_TO_DEVICE) ) {
				/* Attesa completamento operazione del DMA */
				xil_printf("DMA_load_PCV sta inviando... \r\n");
				sleep(5);
		}
		xil_printf("DMA_load_PCV -> Invio eseguito con successo \r\n");

///////// LOAD KERNEL SCALE
		Xil_DCacheFlushRange( (u32)Kernel_Scale,(15)*sizeof(u32) );
		xil_printf("Start Transfer from DMA_load_Kernel_Scale ( Address Kernel_Scale on DDR -> 0x%0x) \r\n",&Kernel_Scale);
		Status = XAxiDma_SimpleTransfer(&DMA_load_Kernel_Scale,(u32)Kernel_Scale, (15)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

				if (Status != XST_SUCCESS) {
					xil_printf("Transfer Failed on DMA_load_Kernel_Scale  \r\n");
					return XST_FAILURE;
				}else xil_printf("DMA_load_Kernel_Scale-> Configurato per inviare ad axis_to_BRAM_Kernel \r\n");

		while ( XAxiDma_Busy(&DMA_load_Kernel_Scale,XAXIDMA_DMA_TO_DEVICE) ) {
				/* Attesa completamento operazione del DMA */
				xil_printf("DMA_load_Kernel_Scale sta inviando... \r\n");
				sleep(1);
		}
		xil_printf("DMA_load_Kernel_Scale -> Invio eseguito con successo \r\n");

/////////// LOAD Bias
		Xil_DCacheFlushRange( (u32)Bias, (15)*sizeof(u32) );
		xil_printf("Start Transfer from DMA_load_Bias ( Address Bias on DDR -> 0x%0x) \r\n",&Bias);
		Status = XAxiDma_SimpleTransfer(&DMA_load_Bias,(u32)Bias, (15)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

				if (Status != XST_SUCCESS) {
					xil_printf("Transfer Failed on DMA_load_Bias  \r\n");
					return XST_FAILURE;
				}else xil_printf("DMA_load_Bias-> Configurato per inviare ad axis_to_BRAM_Bias \r\n");

		while ( XAxiDma_Busy(&DMA_load_Bias,XAXIDMA_DMA_TO_DEVICE) ) {
				/* Attesa completamento operazione del DMA */
				xil_printf("DMA_load_Bias sta inviando... \r\n");
				sleep(1);
		}
		xil_printf("DMA_load_Bias -> Invio eseguito con successo \r\n");
	/****************************************************/


	/***********Configure PL to PROCESSING  ***********/

	// Send combination 11 -> STATE PROCESSING to PL
	XGpio_DiscreteWrite(&Gpio, START         , 1);
	XGpio_DiscreteWrite(&Gpio, CLASSIFICATION, 1);
	xil_printf("START = 1 , CLASSIFICATION = 1 -> PROCESSING \r\n");
	/****************************************************/

	/*********** Send 36 Istances to Classifier ( PL )  ***********/
	// Invio istanze da classificare

	Xil_DCacheFlushRange( (u32)Result, 36*sizeof(u32) );
	Xil_DCacheFlushRange( (u32)Attribute_Test, (9*36)*sizeof(u32) );

	Status = XAxiDma_SimpleTransfer(&DMA_MAIN,(u32)Result, 36*sizeof(u32),XAXIDMA_DEVICE_TO_DMA);

			if (Status != XST_SUCCESS) {
				xil_printf("Transfer Failed on DMA_MAIN  \r\n");
				return XST_FAILURE;
			}
	xil_printf("AXI MAIN DMA -> Configurato per ricevere da PL \r\n");

	Status = XAxiDma_SimpleTransfer(&DMA_MAIN,(u32)Attribute_Test, (9*36)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

			if (Status != XST_SUCCESS) {
				xil_printf("Config Transfer Failed \r\n");
				return XST_FAILURE;
			}
	xil_printf("AXI MAIN DMA -> Configurato per inviare a PL \r\n");

	while ((XAxiDma_Busy(&DMA_MAIN,XAXIDMA_DEVICE_TO_DMA)) && (XAxiDma_Busy(&DMA_MAIN,XAXIDMA_DMA_TO_DEVICE))) {
			/* Attesa completamento operazione del DMA */
			xil_printf("DMA MAIN sta inviando... \r\n");
			sleep(1);
	}
	xil_printf("AXI MAIN DMA -> Invio e Ricezione eseguiti con successo \r\n");

	for (u32 i=0; i<36; i=i+1) {
		xil_printf("Classe della istanza %d : %x\n\r",i,(Result[i])&0x7); // maschero i primi 3bit
	}
	sleep(30);
    cleanup_platform();
    return 0;
}
