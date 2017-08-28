//
//  bulbSpp.m
//  LCD
//
//  Created by backman on 2015/5/25.
//
//

#import "bulbSpp.h"
#import <cordova/CDV.h>
#
@implementation bulbSpp




- (void)pluginInitialize{

    NSLog(@"plug init");


    //BLE
    
    bleSpp = [BX_peripheral GetInstance];
    bleSpp.sppDelegate=self;
    
    [bleSpp Setup];
    
    //should change to callback
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(SPPSetup) userInfo:nil repeats:NO];
    
  
    lightLevel=0.0;
   

    
    
    
}

-(void)SPPSetup{

    [bleSpp SPPSetup:@"0xba00" Name:@"Bulb"];



}




-(void)SPP_Rx:(NSData*)data{

   
    
    unsigned char *bytePtr = (unsigned char *)[data bytes];
    
    
    lightLevel=bytePtr[0]/100.0;
   // NSLog(@"value: %f",lightLevel);

  
    
    
    
}







- (void)checker:(CDVInvokedUrlCommand*)command{
    
    
    NSMutableDictionary* result=[[NSMutableDictionary alloc]initWithCapacity:10];
    
    
    
    
    CDVPluginResult* pluginResult = nil;
    
    [result setObject:[NSNumber numberWithFloat:lightLevel] forKey:@"lightLevel"];
    
    
    
    
    
    
    
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
    
    
    
    
    
    
    
}













@end
