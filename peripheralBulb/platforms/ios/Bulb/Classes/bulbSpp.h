//
//  bulbSpp.h
//  LCD
//
//  Created by backman on 2015/5/25.
//
//

#import <Cordova/CDV.h>
#import "BX_peripheral.h"
@interface bulbSpp : CDVPlugin{

    BX_peripheral* bleSpp;
    
    float lightLevel;
    
    
  

}
- (void)checker:(CDVInvokedUrlCommand*)command;
@end

