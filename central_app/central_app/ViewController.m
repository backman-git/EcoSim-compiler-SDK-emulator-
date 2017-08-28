//
//  ViewController.m
//  central_app
//
//  Created by backman on 2015/5/13.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize rxMessage,txMessage;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    bleC =[BX_central GetInstance];
    
    bleC.sppDelegate=self;
    
    
    [bleC Setup];
    
    
    // 3 seconds
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(scan) userInfo:nil repeats:NO];
    

    
    
    
    
    
    
    
}

-(void)scan{

    

[bleC establishSPP:@"0xba00"];

}




- (IBAction)send:(id)sender {
    
    
    
    [bleC SPP_Tx:[txMessage.text UTF8String] ];
    
    
    
}

-(void)SPP_Rx:(NSString*)data{
    
    
    

    [rxMessage setText:[rxMessage.text stringByAppendingString:data]     ];
    


}

-(void)SPP_TxSuccess{


    NSLog(@"Tx success");






}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
