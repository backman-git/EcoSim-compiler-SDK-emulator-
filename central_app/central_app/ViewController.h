//
//  ViewController.h
//  central_app
//
//  Created by backman on 2015/5/13.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BX_central.h"
@interface ViewController : UIViewController{

    BX_central* bleC;
    
    



}
@property (weak, nonatomic) IBOutlet UITextView *rxMessage;

@property (weak, nonatomic) IBOutlet UITextField *txMessage;
@property (weak, nonatomic) IBOutlet UIButton *send;

@end

