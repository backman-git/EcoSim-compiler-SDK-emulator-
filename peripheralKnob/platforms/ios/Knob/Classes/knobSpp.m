//
//  knobSpp.m
//  LCD
//
//  Created by backman on 2015/5/25.
//
//

#import "knobSpp.h"
#import <cordova/CDV.h>
#
@implementation knobSpp




- (void)pluginInitialize{

    NSLog(@"plug init");


    //BLE
    
    bleSpp = [BX_peripheral GetInstance];
    bleSpp.sppDelegate=self;
    
    [bleSpp Setup];
    
    //should change to callback
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(SPPSetup) userInfo:nil repeats:NO];
    
  


    int i=0;
    
    
    
    
}





-(void)SPPSetup{

    [bleSpp SPPSetup:@"0xba00" Name:@"Knob"];



}




-(void)SPP_Rx:(NSString*)data{


  
    
    
    
}






- (void)sendValue:(CDVInvokedUrlCommand*)command{
    


    
    NSString* knobValue=[command.arguments objectAtIndex:0];
    
    NSInteger knobV = [knobValue integerValue];
    
    
    //NSLog(@"Knob send");
    
    
 //   NSLog(@"value: %d",knobV);
    
    const unsigned char tmp = (char)knobV  ;
    
    [bleSpp SPP_Tx:&tmp];
    

    
    
    NSMutableDictionary* result=[[NSMutableDictionary alloc]initWithCapacity:10];
    
    
    
    
    CDVPluginResult* pluginResult = nil;
    
    

    
    
    
    
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
  //  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];








}














@end
