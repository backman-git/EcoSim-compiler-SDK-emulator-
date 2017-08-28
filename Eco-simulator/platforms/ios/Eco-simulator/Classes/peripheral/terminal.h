//
//  terminal.h
//  EcoBT-simulator
//
//  Created by BX on 2015/2/19.
//  Copyright (c) 2015年 BX. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface terminal : NSObject{

    
    NSMutableString* buffer;
    

}

@property NSMutableString* buffer;


+(terminal*)getInstance;
-(void)show;





@end
