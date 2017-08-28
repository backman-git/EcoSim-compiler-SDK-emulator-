//
//  commander.m
//  Eco-simulator
//
//  Created by backman on 2015/6/10.
//
//

#import "commander.h"

@implementation commander




- (void)pluginInitialize{
    
    NSLog(@"plug init");
    
    initMCUThread = [[NSThread alloc] initWithTarget:self selector:@selector(init_mcu) object:nil];
    
    fileManager = [NSFileManager defaultManager];
    
    NSArray   *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString  *documentsDirectory = [paths objectAtIndex:0];
    
    filePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory,@"main.hex"];

    
    
}

-(void)init_mcu{

    
    
    while (!([fileManager fileExistsAtPath:filePath]==YES)    ) {
        NSLog(@"File not exists");

        
        
        [NSThread sleepForTimeInterval:.5];
    }
    NSLog(@"File exists");



    [[NSNotificationCenter defaultCenter] postNotificationName:@"firmwareDownload" object:nil userInfo:nil];

    
 


}




- (void)RUN:(CDVInvokedUrlCommand*)command
{
    

    
    CDVPluginResult* pluginResult = nil;
    
    
    if([fileManager fileExistsAtPath:filePath]==YES){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SYSTEM_START" object:nil userInfo:nil];
    }
    else
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)PAUSE:(CDVInvokedUrlCommand*)command{



    CDVPluginResult* pluginResult = nil;
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SYSTEM_PAUSE" object:nil userInfo:nil];
   
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];


}


- (void)RESUME:(CDVInvokedUrlCommand*)command{
    
    
    
    CDVPluginResult* pluginResult = nil;
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SYSTEM_RESUME" object:nil userInfo:nil];
    
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
    
}











- (void)DOWNLOAD:(CDVInvokedUrlCommand*)command
{
    
    NSString* fileName=[command.arguments objectAtIndex:0];
    CDVPluginResult* pluginResult = nil;
    NSMutableDictionary* result=[[NSMutableDictionary alloc]initWithCapacity:10];

    
    NSLog(fileName);
    
   
    
    NSString *stringURL = [NSString stringWithFormat:@"http://169.254.24.45:4000/firmware/%@",fileName];
    NSURL  *url = [NSURL URLWithString:stringURL];
    NSData *urlData = [NSData dataWithContentsOfURL:url];
    if ( urlData )
    {
        
        NSLog(@"firmware downloaded!");
        
        NSLog(filePath);
        
        [urlData writeToFile:filePath atomically:YES];
        [initMCUThread start];
        [result setObject:fileName forKey:@"fileName"];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];

    }
    else
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR  messageAsDictionary:result];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}



- (void)CONNECT_peripheral:(CDVInvokedUrlCommand*)command
{


    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SPP_INIT" object:nil userInfo:nil];

    
    
    
    
    CDVPluginResult* pluginResult = nil;
    
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];


}



@end
