//
//  ble_protocol.h
//  EcoBT-simulator
//
//  Created by backman on 2015/3/29.
//  Copyright (c) 2015年 BX. All rights reserved.
//



@protocol ble_protocol <NSObject>
@optional
-(void) didSetup;
-(void) didAdv;
-(void) didAddService;
-(bool) readRequest:(CBUUID*) req offset:(NSUInteger) len;
-(bool) writeRequest:(CBUUID*) req value:(NSData*) v;



@end
