/**	
 *  @ingroup HAL
 *	@defgroup UART
 *	@{
 *	@file 	epl_hal_uart.h
 *	@brief 	create software uart to write or read
 *	
 *	@author	
 *	@date	
 *  @copyright Copyright 2013 EPLAB National Tsing Hua University. All rights reserved.\n
 *  The information contained herein is confidential property of NTHU. 
 *      The material may be used for a personal and non-commercial use only in connection with 
 *      a legitimate academic research purpose.  
 *      Any attempt to copy, modify, and distribute any portion of this source code or derivative thereof for commercial, 
 *      political, or propaganda purposes is strictly prohibited.  
 *      All other uses require explicit written permission from the authors and copyright holders. 
 *      This copyright statement must be retained in its entirety and displayed 
 *      in the copyright statement of derived source code or systems.
 */

#include "hal_types.h"
 
#ifndef EPL_UATR_H
#define EPL_UATR_H



#define HAL_UART_BR_9600   0x00
#define HAL_UART_BR_19200  0x01
#define HAL_UART_BR_38400  0x02
#define HAL_UART_BR_57600  0x03
#define HAL_UART_BR_115200 0x04

// Function prototypes
void osillator(void);
void uartInit(int BaudRate);
void uartWriteByte(char write);
void uartReadByte(char *read);
void uartWriteString(char *str);
void uartReadString(char *str);
uint8 N_to_ascii(uint8 x);
uint16 uartWriteU16(uint16 x);

     
#endif

/**
* @}
*/