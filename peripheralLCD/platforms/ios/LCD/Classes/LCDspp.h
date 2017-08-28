//
//  LCDspp.h
//  LCD
//
//  Created by backman on 2015/5/25.
//
//

#import <Cordova/CDV.h>
#import "BX_peripheral.h"
@interface LCDspp : CDVPlugin{

    BX_peripheral* bleSpp;
    
    NSMutableString* L1,*L2,*L3,*L4;
    
    int index;

}


- (void)checker:(CDVInvokedUrlCommand*)command;

@end

