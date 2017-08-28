/********* Echo.h Cordova Plugin Header *******/

#import <Cordova/CDV.h>
#import "cc2540.h"



@interface UiPort : CDVPlugin{


    cc2540* SoC;



}

- (void)checker:(CDVInvokedUrlCommand*)command;




@end