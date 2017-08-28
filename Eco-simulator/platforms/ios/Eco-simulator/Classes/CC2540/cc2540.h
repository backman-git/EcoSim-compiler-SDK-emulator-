//
//  cc2540.h
//  EcoBT-simulator
//
//  Created by BX on 2015/2/6.
//  Copyright (c) 2015年 BX. All rights reserved.
//


#define A RAM[0XE0]
#define B RAM[0xF0]
#define PSW RAM[0XD0]
#define SP RAM[0X81]
#define DPL RAM[0X82]
#define DPH RAM[0X83]
#define P0 RAM[0X80]
#define P1 RAM[0X90]
#define P2 RAM[0XA0]
#define P3 RAM[0XB0]
#define IP RAM[0XB8]
#define IE RAM[0XA8]
#define TMOD RAM[0X89]
#define TCON RAM[0X88]
#define TH0 RAM[0X8C]
#define TL0 RAM[0X8A]
#define TH1 RAM[0X8D]
#define TL1 RAM[0X8B]
#define SCON RAM[0X98]
#define SBUF RAM[0X99]
#define PCON RAM[0X87]




struct instruct
{
    int hex_code;
    const char *mnemonic;
    int nobytes;
    int clock;
    //int noperands;
    SEL ins_ptr;
};




@interface cc2540 : NSObject {
   
    
    
    unsigned char *ROM;
    unsigned char *XDATA;
    int PC;
    
    
    struct instruct* instructions;
    unsigned char* RAM;
    char flag;
    
    unsigned char c1_line;
    
    int D_i;
    
    bool D_t;
   
  
    
    
}
@property unsigned char *ROM;
@property unsigned char *RAM;
@property unsigned char *XDATA;
// hardware uart check
@property unsigned char c1_line;



+(cc2540*)getInstance;

-(void) load_hex_file:(char*) hex_file;


-(void) decode_and_simulate;
@end





