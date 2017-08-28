/**************************************************************************************************
  Filename:       hal_irgenHw_NEC.h
  Revised:        $Date: 2010-07-01 16:45:41 -0700 (Thu, 01 Jul 2010) $
  Revision:       $Revision: 22877 $

  Description:    This file contains the interface of the IR signal generation driver for the
                  NEC format. The driver is capable of generating non-modulated and modulated
                  signals. The driver is leveraging special hardware for IR signal generation in CC253x.

                  The module requires HAL_IRGEN compile flag to be set to TRUE to be built in. It also
                  requires the HAL_IRGEN_CARRIER to be set to generate a modulated signal

                  The distinct feature of this driver is that it minimizes interaction with CPU
                  by relying on DMA to reprogram a timer to generate signals.

                  The output signal will be generated onto Port 1 Pin 1.
                  The driver will use two DMA channels, Timer 1 and also Timer 3 for modulated signals,
                  and hence it will have conflict with any other drivers that uses the same
                  resources. (Note that AES driver must not be configured to use DMA).

                  Timer 3 is used to generate carrier pulse signals while
                  Timer 1 is used to generate bit signals on top of the carrier signals.

  Copyright 2009 Texas Instruments Incorporated. All rights reserved.

  IMPORTANT: Your use of this Software is limited to those specific rights
  granted under the terms of a software license agreement between the user
  who downloaded the software, his/her employer (which must be your employer)
  and Texas Instruments Incorporated (the "License").  You may not use this
  Software unless you agree to abide by the terms of the License. The License
  limits your use, and you acknowledge, that the Software may not be modified,
  copied or distributed unless embedded on a Texas Instruments microcontroller
  or used solely and exclusively in conjunction with a Texas Instruments radio
  frequency transceiver, which is integrated into your product.  Other than for
  the foregoing purpose, you may not use, reproduce, copy, prepare derivative
  works of, modify, distribute, perform, display or sell this Software and/or
  its documentation for any purpose.

  YOU FURTHER ACKNOWLEDGE AND AGREE THAT THE SOFTWARE AND DOCUMENTATION ARE
  PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, 
  INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, 
  NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL
  TEXAS INSTRUMENTS OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER CONTRACT,
  NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER
  LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
  INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
  OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT
  OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
  (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

  Should you have any questions regarding your right to use this Software,
  contact Texas Instruments Incorporated at www.TI.com. 
**************************************************************************************************/

#ifndef HAL_IRGENHW_NEC_H
#define HAL_IRGENHW_NEC_H

/*********************************************************************
 * INCLUDES
 */
#include "hal_types.h"
#include "hal_irgen.h"

/******************************************************************************
 * MACROS
 */
#define HAL_IRGEN_CMD_NEC(_addr,_cmd) \
  (((uint32)((~(_cmd))&0xFF) << 24) | \
    ((uint32)(_cmd) << 16) | \
      ((uint32)((~(_addr))&0xFF) << 8) | \
        (uint32)(_addr))


/******************************************************************************
 * CONSTANTS
 */
// Signal repeat interval
#define HAL_IRGEN_NEC_REPEAT_INTERVAL  110 // ms

/******************************************************************************
 * TYPEDEFS
 */

/******************************************************************************
 * LOCAL VARIABLES
 */

/******************************************************************************
 * GLOBAL VARIABLES
 */

/******************************************************************************
 * FUNCTION PROTOTYPES
 */


/******************************************************************************
 * @fn      HalIrGenInitNec
 *
 * @brief   Initialize driver
 *
 * input parameters
 *
 * None.
 *
 * output parameters
 *
 * None.
 *
 * @return  None.
 *
 */
extern void HalIrGenInitNec(void);


/******************************************************************************
 * @fn      HalIrGenCommandNec
 *
 * @brief   Generate IR signal corresponding to a command
 *
 * input parameters
 *
 * @param   command - upto 32 bit command. Note that the type of this parameter
 *          is determined at compile time according to the HAL_IRGEN_CMD_LENGTH
 *
 * output parameters
 *
 * None.
 *
 * @return  None.
 *
 */
extern void HalIrGenCommandNec(uint32 command);

/******************************************************************************
 * @fn      HalIrGenRepeatNec
 *
 * @brief   Generate repeat IR signal corresponding to NEC protocol
 *
 * input parameters
 *
 * @param   command - upto 32 bit command. Note that the type of this parameter
 *          is determined at compile time according to the HAL_IRGEN_CMD_LENGTH
 *
 * output parameters
 *
 * None.
 *
 * @return  None.
 *
 */
extern void HalIrGenRepeatNec(void);


#endif // HAL_IRGENHW_NEC_H
/**************************************************************************************************
 **************************************************************************************************/
