//
//  ViewController.m
//  peripheral_APP
//
//  Created by backman on 2015/5/14.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import "ViewController.h"
#import "sppProtocol.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txMessage,rxMessage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BLEP = [BX_peripheral GetInstance];
    
    BLEP.sppDelegate=self;
    
    [BLEP Setup];
    
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(SPPSetup) userInfo:nil repeats:NO];

    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)SPPSetup{




    [BLEP SPPSetup:@"0xba00"];




}


-(void)SPP_Rx:(NSString*)data{
    
    
    
    
    
    [rxMessage setText:[rxMessage.text stringByAppendingString:data]     ];
    
    
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)send:(id)sender {
    
 [BLEP SPP_Tx:[txMessage.text UTF8String] ];
    
    
    
    
}

@end
