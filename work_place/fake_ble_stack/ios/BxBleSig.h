#include <compiler.h>


SFR(BleOpr,       0xaa); // ble operation 
SFR(BleFeedback,  0x8e); // ios ble feedback  //   phreipheral only can be connected once at a time!

SFR(ServNH,       0xb0); // number of service H
SFR(ServNL,		  0xb7); // number of service L



//for fun

SFR(FlashLed,		  0xc0);
SFR(MusicCtl,		  0xc2);