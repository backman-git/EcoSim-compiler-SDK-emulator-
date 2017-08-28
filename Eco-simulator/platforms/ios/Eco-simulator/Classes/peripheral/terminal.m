//
//  terminal.m
//  EcoBT-simulator
//
//  Created by BX on 2015/2/19.
//  Copyright (c) 2015年 BX. All rights reserved.
//

#import "terminal.h"

@implementation terminal{


}

@synthesize buffer;



static terminal *instance =nil;


+(terminal*)getInstance{
    
    
    @synchronized(self)
    
    {
        
        if(instance == nil){
            
            
            instance=[terminal new];
            
            
            [instance init_hardware];
            
        }
        
        
        
        
    }
    
    
    
    return instance;
    
}





-(void) init_hardware{


    buffer=[[NSMutableString alloc] init];


}


-(void)show{

    printf("\n=======uart=======\n");

    printf([buffer UTF8String]);
    
    printf("\n=======end========\n");


}







@end
