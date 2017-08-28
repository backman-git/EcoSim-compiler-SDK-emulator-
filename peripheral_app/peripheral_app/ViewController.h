//
//  ViewController.h
//  peripheral_APP
//
//  Created by backman on 2015/5/14.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BLE/BX_peripheral.h"
@interface ViewController : UIViewController{

    BX_peripheral* BLEP;



}
@property (weak, nonatomic) IBOutlet UIButton *send;

@property (weak, nonatomic) IBOutlet UITextView *rxMessage;
@property (weak, nonatomic) IBOutlet UITextField *txMessage;

@end

