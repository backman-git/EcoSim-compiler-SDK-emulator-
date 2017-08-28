//
//  knobSpp.h
//  LCD
//
//  Created by backman on 2015/5/25.
//
//

#import <Cordova/CDV.h>
#import "BX_peripheral.h"
@interface knobSpp : CDVPlugin{

    BX_peripheral* bleSpp;
    
    int i;
  

}


- (void)sendValue:(CDVInvokedUrlCommand*)command;

@end

