//
//  sppProtocol.h
//  central_app
//
//  Created by backman on 2015/5/15.
//  Copyright (c) 2015年 backman. All rights reserved.
//



@protocol sppProtocol <NSObject>


-(void)SPP_Rx:(NSString*)data;

-(void)SPP_TxSuccess;



@end