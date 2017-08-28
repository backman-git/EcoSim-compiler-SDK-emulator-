//
//  LCDspp.m
//  LCD
//
//  Created by backman on 2015/5/25.
//
//

#import "LCDspp.h"
#import <cordova/CDV.h>
#
@implementation LCDspp




- (void)pluginInitialize{

    NSLog(@"plug init");


    //BLE
    
    bleSpp = [BX_peripheral GetInstance];
    bleSpp.sppDelegate=self;
    
    [bleSpp Setup];
    
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(SPPSetup) userInfo:nil repeats:NO];
    
    L1 = [NSMutableString stringWithCapacity:17];
    L2 = [NSMutableString stringWithCapacity:17];
    L3 = [NSMutableString stringWithCapacity:17];
    L4 = [NSMutableString stringWithCapacity:17];
    
    index =0;


    
    
    
}

-(void)SPPSetup{

    [bleSpp SPPSetup:@"0xba00"];



}




-(void)SPP_Rx:(NSString*)data{


  
    
    
    
    
    
    
    if(index>=68){
        
        index=51;
        
        // move one line
        
        [L1 setString:L2];
        [L2 setString:L3];
        [L3 setString:L4];
        [L4 setString:@""];
        
        
        
        
        
    }

    
    
    
    switch (index/17) {
        case 0:{
        
            
            if([data isEqualToString:@"\n"]){
              //  [L1 appendString:@"\n"];
                
                [L2 stringByPaddingToLength:[L1 length] withString:@" " startingAtIndex:0];
                
                index=17+[L1 length];
                
                
                
            }
            else if([data isEqualToString:@"\r"]){
              //  [L1 appendString:@"\r"];
                index=-(int)[L1 length];
            }
            else
            [L1 appendString:data];
            
        
        }
        
            break;
        case 1:{
        
            if([data isEqualToString:@"\n"]){
              //  [L2 appendString:@"\n"];
                [L3 stringByPaddingToLength:[L2 length]withString:@" " startingAtIndex:0];
                 index=17*2+[L1 length];
                
            }
            else if([data isEqualToString:@"\r"]){
                // [L2 appendString:@"\r"];
            
            }
            else
             [L2 appendString:data];
        
        }
            break;
        case 2:{
            
            if([data isEqualToString:@"\n"]){
              //  [L3 appendString:@"\n"];
                [L4 stringByPaddingToLength:[L3 length]withString:@" " startingAtIndex:0];
                 index=17*3+[L1 length];
            }
            else if([data isEqualToString:@"\r"]){
              //  [L3 appendString:@"\r"];
                
            }

            else
             [L3 appendString:data];
        
        }
            
            break;
            
        case 3:{
            
            if([data isEqualToString:@"\n"]){
              //  [L4 appendString:@"\n"];
                [L1 stringByPaddingToLength:[L4 length]withString:@" " startingAtIndex:0];
                 index=17*4+[L1 length];

            }
            else if([data isEqualToString:@"\r"]){
             //   [L4 appendString:@"\r"];
                
            }

            else
             [L4 appendString:data];
        
        }
            break;
        default:
            break;
    }
   /*
    if([data isEqualToString:@"\n"]){
        
        index+=16;
        
    }
    */
    /*
    if([data isEqualToString:@"\r"]){
        
        index-= ((index%17)+1);
        
    }
    */
    
    
    

    index++;
    
    

   // [bleSpp SPP_Tx:"K"];

}






- (void)checker:(CDVInvokedUrlCommand*)command{

    
    NSMutableDictionary* result=[[NSMutableDictionary alloc]initWithCapacity:10];
    
    
    
    
    CDVPluginResult* pluginResult = nil;
    
    

    
    
    
    
    [result setObject:L1 forKey:@"L1"];
    [result setObject:L2 forKey:@"L2"];
    [result setObject:L3 forKey:@"L3"];
    [result setObject:L4 forKey:@"L4"];
    
    
    
    
    
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];








}














@end
