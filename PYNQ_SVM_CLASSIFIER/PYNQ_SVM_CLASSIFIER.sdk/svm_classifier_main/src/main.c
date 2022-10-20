#include "stdio.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "sleep.h"
#include "xbram.h"
#include "xaxidma.h"
#include "Attribute_Test_ddr32.h"
#include "Bias_ddr32.h"
#include "Kernel_Scale_ddr32.h"
#include "Acc_SVxAlphaxSVLabel_ddr32.h"

/********* GPIO *********/
XGpio Gpio; 					/* The Instance of the GPIO Driver */
/* The following constant is used to determine which channel of the GPIO is used. */
#define START 1
#define CLASSIFICATION 2

/********* BRAM CONTROLLER *********/
XBram_Config *ConfigPtr_BRAM_PCV;  			/* Pointer to the configuration of BRAM CONTROLLER */
XBram_Config *ConfigPtr_BRAM_Kernel_Scale;
XBram_Config *ConfigPtr_BRAM_Bias;
XBram BRAM_PCV;							   /* The Instance of the BRAM Driver */
XBram BRAM_Kernel_Scale;
XBram BRAM_Bias;

/********* DMA *********/
XAxiDma_Config *CfgPtr_DMA; /* Pointer to the configuration of DMA */
XAxiDma AxiDma;				/* The Instance of the DMA */

/********* Variable Allocation *********/
#define n_SVM  15
//u32 Bias[n_SVM];          // dei 32 bit solo i   7 meno significativi  sono effettivi
//u32 Kernel_Scale[n_SVM];  // dei 32 bit solo i  12 meno significativi  sono effettivi
//u32 PCV[34*n_SVM];        // dei 32 bit solo i  12 meno significativi  sono effettivi
//u32 esempio_Attribute_Test[9*36]; // ogni u32 contiene 4 Attributi da 8bit, per un totale di 36 query da classificare ( da 34 attributi)
u32 Result[36];           // risultati della classificazione, i 3bit meno significativi sono effettivi

int main()
{
    init_platform();
    Xil_DCacheDisable();
    xil_printf("Avvio Programma\n\r");

	/* Initialize the GPIO driver */
    int Status_Gpio;

    Status_Gpio = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);

	if (Status_Gpio != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	/* Set the direction for all signals  */
	XGpio_SetDataDirection(&Gpio, START         , 0); // channel start -> output
	XGpio_SetDataDirection(&Gpio, CLASSIFICATION, 0); // channel classification -> output
	xil_printf("GPIO per controllo FSM  settati in output \r\n");

	/* Send combination 00 -> STATE IDLE to PL */
	XGpio_DiscreteWrite(&Gpio, START         , 0);
	XGpio_DiscreteWrite(&Gpio, CLASSIFICATION, 0);
	xil_printf("START = 0 , CLASSIFICATION = 0 \r\n");

	sleep(1); // wait for 1sec

	/* Send combination 10 -> STATE SETUP to PL */
	XGpio_DiscreteWrite(&Gpio, START         , 1);
	XGpio_DiscreteWrite(&Gpio, CLASSIFICATION, 0);
	xil_printf("START = 1 , CLASSIFICATION = 0 \r\n");

	sleep(1); // wait for 1sec

	/* Initialize the BRAM CONTROLLER driver */
	int Status_BRAMC;

	/* Configuration BRAM Pre-Computed Vector */
	ConfigPtr_BRAM_PCV = XBram_LookupConfig( XPAR_AXI_BRAM_CTRL_0_DEVICE_ID );
	if (ConfigPtr_BRAM_PCV == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}
	Status_BRAMC = XBram_CfgInitialize(&BRAM_PCV, ConfigPtr_BRAM_PCV, ConfigPtr_BRAM_PCV->CtrlBaseAddress);
	if (Status_BRAMC != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("Controller BRAM_PCV -> Inizializzato \r\n");

	/* Configuration BRAM Kernel Scale */
	ConfigPtr_BRAM_Kernel_Scale = XBram_LookupConfig( XPAR_AXI_BRAM_CTRL_1_DEVICE_ID );
	if (ConfigPtr_BRAM_Kernel_Scale == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}
	Status_BRAMC = XBram_CfgInitialize(&BRAM_Kernel_Scale, ConfigPtr_BRAM_Kernel_Scale, ConfigPtr_BRAM_Kernel_Scale->CtrlBaseAddress);
	if (Status_BRAMC != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("Controller BRAM_Kernel_Scale -> Inizializzato \r\n");

	/* Configuration BRAM Bias */
	ConfigPtr_BRAM_Bias = XBram_LookupConfig( XPAR_AXI_BRAM_CTRL_2_DEVICE_ID );
	if (ConfigPtr_BRAM_Bias == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}
	Status_BRAMC = XBram_CfgInitialize(&BRAM_Bias, ConfigPtr_BRAM_Bias, ConfigPtr_BRAM_Bias->CtrlBaseAddress);
	if (Status_BRAMC != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("Controller BRAM_Bias -> Inizializzato \r\n");

	/* Caricamento BRAM */


	////////////// SCRITTURA IN DDR DEI COEFFICIENTI /////////////////
	xil_printf("Indirizzo memoria Bias: 0x%0x\r\n",Bias);
	xil_printf("Indirizzo memoria Kernel_Scale: 0x%0x\r\n",Kernel_Scale);
	xil_printf("Indirizzo memoria PCV: 0x%0x\r\n",PCV);
	xil_printf("Indirizzo memoria Attribute_Test: 0x%0x\r\n",Attribute_Test);
	xil_printf("Invia qualsiasi carattere:");
	char c;
	scanf("%c",&c);

	/* Initialize the XAxiDma device */
	int Status_DMA;

	CfgPtr_DMA = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
	if (!CfgPtr_DMA) {
		xil_printf("No config found for %d\r\n", XPAR_AXI_DMA_0_DEVICE_ID);
		return XST_FAILURE;
	}

	Status_DMA = XAxiDma_CfgInitialize(&AxiDma, CfgPtr_DMA);
	if (Status_DMA != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status_DMA);
		return XST_FAILURE;
	}
	xil_printf("AXI DMA -> Inizializzato \r\n");

	/* Disable interrupts,  use polling mode */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/* Send combination 11 -> STATE PROCESSING to PL */
	XGpio_DiscreteWrite(&Gpio, START         , 1);
	XGpio_DiscreteWrite(&Gpio, CLASSIFICATION, 1);
	xil_printf("START = 1 , CLASSIFICATION = 1 -> PROCESSING \r\n");

	/* Invio istanze da classificare */
	u32 Status;
	Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)Result, 36*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
	xil_printf("AXI DMA -> Configurato per ricevere da PL \r\n");

	Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)Attribute_Test, (9*36)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
	xil_printf("AXI DMA -> Configurato per inviare a PL \r\n");

	while ((XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE))) {
			/* Attesa completamento operazione del DMA */
	}
	xil_printf("AXI DMA -> Invio e Ricezione eseguiti con successo \r\n");

	for (u32 i=0; i<36; i=i+1) {
		xil_printf("Classe dell'istanza %d : %x\n\r",i,(Result[i])&0x7); // maschero i primi 3bit
	}

    cleanup_platform();
    return 0;
}