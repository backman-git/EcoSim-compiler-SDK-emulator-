//********* Echo.m Cordova Plugin Implementation *******/

#import "UiPort.h"
#import <Cordova/CDV.h>

@implementation UiPort




- (void)checker:(CDVInvokedUrlCommand*)command
{
    NSMutableDictionary* result=[[NSMutableDictionary alloc]initWithCapacity:10];
    
    SoC = [cc2540 getInstance];

    
    
    CDVPluginResult* pluginResult = nil;

    
    
    
    //GPIO check
    
    unsigned char GpioP0;
    
    
    GpioP0=SoC.RAM[0x80];
    
    
    [result setObject:[NSNumber numberWithInt:GpioP0]  forKey:@"P0"];
    
    
    

   
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];

    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
  
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end