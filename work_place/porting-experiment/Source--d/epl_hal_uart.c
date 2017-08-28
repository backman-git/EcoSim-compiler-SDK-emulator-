#include "ioCC2540.h"
#include "epl_hal_uart.h"

void uartInit(int BaudRate)
{
  PERCFG &= ~0x01;
  P0SEL |=0x0C;
  U0CSR |=0xC0;
  switch(BaudRate)
  {
  case HAL_UART_BR_9600:
    U0GCR |=0x08;
    U0BAUD = 0x3B;
    break;
  case HAL_UART_BR_19200:
    U0GCR |=0x09;
    U0BAUD = 0x3B;
    break;
  case HAL_UART_BR_38400:
    U0GCR |=0x0A;
    U0BAUD = 0x3B;
    break;
  case HAL_UART_BR_57600:
    U0GCR |=0x0A;
    U0BAUD = 0xD8;
    break;
  case HAL_UART_BR_115200:
    U0GCR |=0x0B;
    U0BAUD = 0xD8;
    break;
  default:
    break;
  }

  
}
void uartWriteByte(char write)
{
  U0DBUF = write;
  while((U0CSR&0x01) || !(U0CSR&0x02));
  U0CSR&=~0x02;
}
void uartReadByte(char *read)
{
  while((U0CSR&0x01) || !(U0CSR&0x04));
  *read=U0DBUF;
}
void uartWriteString(char *str)
{
  while(*str != 0)
  {
    uartWriteByte(*str++);
  }
}
void uartReadString(char *str)
{
  do{
    uartReadByte(str);
  }while(*str++ != '\r');
}



//  backman design
uint16 uartWriteU16(uint16 x){

uint8 out;

      uartWriteByte('0');
      uartWriteByte('X');          


      out = (0xf000&x)>>12;
	  out=N_to_ascii(out);
	  uartWriteByte(out);
	  
	  out = (0x0f00&x)>>8;
	  out=N_to_ascii(out);
	  uartWriteByte(out);
	  
	  out = (0x00f0&x)>>4;
	  out=N_to_ascii(out);
	  uartWriteByte(out);
	  
	  out = 0x000f&x;
	  out=N_to_ascii(out);
	  uartWriteByte(out);
	  
	  
	  
	  
	  
	  



      



 return x;
}

uint8 N_to_ascii(uint8 x){

      
		
	 	if ( (x <= 0x09) )
	        return x+0x30; 
	    else if( 0x0a<=x &&x <=0x0f )
	        return x+0x37;
	    else
		    return 0xff;
	  
	         


}




