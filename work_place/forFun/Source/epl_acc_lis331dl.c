/**************************************************************************************************
  Filename:       cma3000d.c
  Revised:        $Date: 2010-09-29 11:12:58 -0700 (Wed, 29 Sep 2010) $
  Revision:       $Revision: 23938 $

  Description:    Control of the accelerometer on the keyfob board in the CC2540DK-mini
                  kit.

  Copyright 2009 - 2010 Texas Instruments Incorporated. All rights reserved.

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

#include <ioCC2540.h>
#include "OSAL.h"
#include "epl_acc_lis331dl.h"
#include "epl_hal_spi.h"


#define spiWriteByte spi1WriteByte
#define spiReadByte spi1ReadByte



/** \brief	Initialize SPI interface and LIS331DL-H accelerometer
*
* This will initialize the SPI interface and LIS331DL-H accelerometer
*
*/
void accInit(void)
{
    //*** Setup USART 1 SPI at alternate location 2 ***

    // USART 1 at alternate location 2 p1_4-7
    PERCFG |= 0x02;
    // Peripheral function on SCK, MISO and MOSI (P1_5-7)
    P1SEL |= 0xE0;
    
      
    
    
    //  P0DIR |=0x80;
    
    // Configure CS (P1_1) as output
    P1DIR |= 0x02;

    CS = CS_DISABLED;

    //*** Setup the SPI interface ***
    // SPI master mode
    U1CSR = 0x00;
    // Negative clock polarity, Phase: data out on CPOL -> CPOL-inv
    //                                 data in on CPOL-inv -> CPOL
    // MSB first
    U1GCR = 0x20;
   
   //SCK frequency = 1MHz
    U1GCR |= 0x0F;
    U1BAUD = 0x00;
 

 // SCK frequency = 4MHz
//    U1GCR |= 0x11;
  //  U1BAUD = 0x00;


    // Turn LIS331DL into active mode (0X40) ,enable X,Y,Z (0X07) and setup measurement scale 2G and output data rate 100Hz.
    accWriteReg(ACC_LIS331DL_CTRL_REG1, 0x3F | (ACC_LIS331DL_2G_SCALE<<5) | (ACC_LIS331DL_DATA_RATE_100HZ <<7));
    // Assigned INT1 as data ready pin.
    accWriteReg(ACC_LIS331DL_CTRL_REG3, 0x02);	
}

/** \brief	Write one byte to a sensor register
*
* Write one byte to a sensor register
*
* \param[in]       reg
*     Register address
* \param[in]       val
*     Value to write
*/
void accWriteReg(uint8 reg, uint8 val)
{
    CS = CS_ENABLED;
    bx_spiWriteByte(reg);
    bx_spiWriteByte(val);
    CS = CS_DISABLED;
}


/** \brief	Read one byte from a sensor register
*
* Read one byte from a sensor register
*
* \param[in]       reg
*     Register address
* \param[in]       *pVal
*     Pointer to variable to put read out value
*/
void accReadReg(uint8 reg, uint8 *pVal)
{
    CS = CS_ENABLED;
    WAIT_1_3US(2);
    bx_spiWriteByte(reg | 0x80);
    
    bx_spiReadByte(pVal, 0xFF);
    CS = CS_DISABLED;
}

/** \brief	Read multi byte from a sensor register
*
* Read multi byte from a sensor register
*
* \param[in]       reg
*     Register address
* \param[in]       *pVal
*     Pointer to variable to put read out value
* \param[in]       count
*     read bytes count
*/
void accReadMultiReg(uint8 reg, uint8 *pVal, uint8 count)
{
    CS = CS_ENABLED;
    WAIT_1_3US(2);
    bx_spiWriteByte(reg | 0xC0);
    while(count--){
	bx_spiReadByte(pVal++, 0xFF);
    }
    CS = CS_DISABLED;
}

/** \brief	Read x, y and z acceleration data
*
* Read x, y and z acceleration data in one operation.
* NOTE: No sensor access must be made immidiately folloing this operation
* without enabling the last Wait call.
*
* \param[in]       *pXVal
*     Pointer to variable to put read out X acceleration
* \param[in]       *pYVal
*     Pointer to variable to put read out Y acceleration
* \param[in]       *pZVal
*     Pointer to variable to put read out Z acceleration
*/

void accReadAcc(int16 *pXVal, int16 *pYVal, int16 *pZVal)
{

    int8 XH,XL;
    // X
    accReadReg(ACC_LIS331DL_OUT_XH, (uint8*)&XH);
    WAIT_1_3US(80);
    accReadReg(ACC_LIS331DL_OUT_XL, (uint8*)&XL);
    WAIT_1_3US(80);
    *pXVal = (uint16)((XL & 0x00FF) + ((XH & 0x00FF) << 8));

    // Y
    accReadReg(ACC_LIS331DL_OUT_YH, (uint8*)&XH);
    WAIT_1_3US(80);
    accReadReg(ACC_LIS331DL_OUT_YL, (uint8*)&XL);
    WAIT_1_3US(80);
    *pYVal = (uint16)((XL & 0x00FF) + ((XH & 0x00FF) << 8));

    //Z
    accReadReg(ACC_LIS331DL_OUT_ZH, (uint8*)&XH);
    WAIT_1_3US(80);
    accReadReg(ACC_LIS331DL_OUT_ZL, (uint8*)&XL);
    WAIT_1_3US(80);
    *pZVal = (uint16)((XL & 0x00FF) + ((XH & 0x00FF) << 8));
}

/** \brief	Read x, y and z acceleration data
*
* Read x, y and z acceleration data in one operation.
* NOTE: No sensor access must be made immidiately folloing this operation
* without enabling the last Wait call.
*
* \param[in]       *pXVal
*     Pointer to variable to put read out X,Y and Z acceleration
*/

void accReadAllAcc(uint8 *pVal)
{
    accReadMultiReg(ACC_LIS331DL_OUT_XL, (uint8*)pVal, 6);
}



