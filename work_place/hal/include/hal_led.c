
#include "bcomdef.h"

#include "hal_led.h"

static bool State_flag= false;
uint8 HalLedSet( uint8 led, uint8 mode ){



	if(HAL_LED_1 == led && mode == HAL_LED_MODE_BLINK){


		if(State_flag==true){

			State_flag=false;
			P0_1|=0x01;



		}
		else{


			State_flag=true;
			P0_1&=~0x01;

	

		}


	}


}