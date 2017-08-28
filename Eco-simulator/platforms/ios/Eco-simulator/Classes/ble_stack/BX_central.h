//
//  BX_central.h
//  Eco-simulator
//
//  Created by backman on 2015/5/6.
//
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
@interface BX_central : NSObject <CBCentralManagerDelegate>{



 CBPeripheral *activePeripheral;





}

@property(strong,nonatomic) CBCentralManager* CM;




+(BX_central*)GetInstance;
-(void)Setup;



@end
