//
//  cc2540.m
//  EcoBT-simulator
//
//  Created by BX on 2015/2/6.
//  Copyright (c) 2015年 BX. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "cc2540.h"



@implementation cc2540{


}

@synthesize ROM,XDATA,RAM,c1_line;




static cc2540 *instance =nil;


+(cc2540*)getInstance{
    
    
    @synchronized(self)
    
    {
        
        if(instance == nil){
            
            
            instance=[cc2540 new];
            
            
            [instance init_hardboard];
            
            
        }
        
        
        
        
    }
    
    
    
    return instance;
    
}








-(void)init_hardboard{

    PC=0;
    flag=0;
    
    c1_line=0;
    
    
    
    RAM = (unsigned char *)malloc(sizeof(char)*256);
    XDATA = (unsigned char *)malloc(sizeof(char)*64*1024);
    
    for(int i=0;i<256;i++)
        RAM[i]=0;
    
    
    
    
    
    
    
    
    
    
    
    ROM = (unsigned char *)malloc(64 * 1024 * sizeof(unsigned char));
    memset((unsigned char*)ROM,0x00,0x1000);

    
    //NSBundle *mainBundle = [NSBundle mainBundle];
   //NSString *myFile = [mainBundle pathForResource: @"SimpleBLEPeripheral_Main" ofType: @"hex"];
    
    
    
  
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"main.hex"];
    
    NSLog(filePath);
    
    
    
    [self load_hex_file:[filePath UTF8String]];
    
    // show ROM
    /*
    printf("ROM:\n");
    for(int i=0;i<64*1024;i++){
    
        ;//printf("%X:%X ",i,ROM[i]);
        if(i%1024==0)
            ;//printf("\n");
    
    }*/
    ;//printf("\n======================\n");

// init instruction

    instructions= malloc(sizeof(struct instruct)*257);
    
    
    instructions[0].hex_code=0X0;
    instructions[0].mnemonic="NOP";
    instructions[0].nobytes=1;
    instructions[0].clock=12;
    instructions[0].ins_ptr=@selector(nop_isr:);
    
    
    instructions[1].hex_code=0X1;
    instructions[1].mnemonic="AJMP ";
    instructions[1].nobytes=2;
    instructions[1].clock=24;
    instructions[1].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[2].hex_code=0X2;
    instructions[2].mnemonic="LJMP";
    instructions[2].nobytes=3;
    instructions[2].clock=24;
    instructions[2].ins_ptr=@selector(ljmp_isr:);
    
    
    instructions[3].hex_code=0X3;
    instructions[3].mnemonic="RR A";
    instructions[3].nobytes=1;
    instructions[3].clock=12;
    instructions[3].ins_ptr=@selector(rr_isr:);
    
    
    instructions[4].hex_code=0X4;
    instructions[4].mnemonic="INC A";
    instructions[4].nobytes=1;
    instructions[4].clock=12;
    instructions[4].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[5].hex_code=0X5;
    instructions[5].mnemonic="INC ";
    instructions[5].nobytes=2;
    instructions[5].clock=12;
    instructions[5].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[6].hex_code=0X6;
    instructions[6].mnemonic="INC @R0";
    instructions[6].nobytes=1;
    instructions[6].clock=12;
    instructions[6].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[7].hex_code=0X7;
    instructions[7].mnemonic="INC @R1";
    instructions[7].nobytes=1;
    instructions[7].clock=12;
    instructions[7].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[8].hex_code=0X8;
    instructions[8].mnemonic="INC R0";
    instructions[8].nobytes=1;
    instructions[8].clock=12;
    instructions[8].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[9].hex_code=0X9;
    instructions[9].mnemonic="INC R1";
    instructions[9].nobytes=1;
    instructions[9].clock=12;
    instructions[9].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[10].hex_code=0XA;
    instructions[10].mnemonic="INC R2";
    instructions[10].nobytes=1;
    instructions[10].clock=12;
    instructions[10].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[11].hex_code=0XB;
    instructions[11].mnemonic="INC R3";
    instructions[11].nobytes=1;
    instructions[11].clock=12;
    instructions[11].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[12].hex_code=0XC;
    instructions[12].mnemonic="INC R4";
    instructions[12].nobytes=1;
    instructions[12].clock=12;
    instructions[12].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[13].hex_code=0XD;
    instructions[13].mnemonic="INC R5";
    instructions[13].nobytes=1;
    instructions[13].clock=12;
    instructions[13].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[14].hex_code=0XE;
    instructions[14].mnemonic="INC R6";
    instructions[14].nobytes=1;
    instructions[14].clock=12;
    instructions[14].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[15].hex_code=0XF;
    instructions[15].mnemonic="INC R7";
    instructions[15].nobytes=1;
    instructions[15].clock=12;
    instructions[15].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[16].hex_code=0X10;
    instructions[16].mnemonic="JBC ";
    instructions[16].nobytes=3;
    instructions[16].clock=24;
    instructions[16].ins_ptr=@selector(jbc_isr:);
    
    
    instructions[17].hex_code=0X11;
    instructions[17].mnemonic="ACALL ";
    instructions[17].nobytes=2;
    instructions[17].clock=24;
    instructions[17].ins_ptr=@selector(acall_isr:);
    
    
    instructions[18].hex_code=0X12;
    instructions[18].mnemonic="LCALL";
    instructions[18].nobytes=3;
    instructions[18].clock=24;
    instructions[18].ins_ptr=@selector(lcall_isr:);
    
    
    instructions[19].hex_code=0X13;
    instructions[19].mnemonic="RRC A";
    instructions[19].nobytes=1;
    instructions[19].clock=12;
    instructions[19].ins_ptr=@selector(rrc_isr:);
    
    
    instructions[20].hex_code=0X14;
    instructions[20].mnemonic="DEC A";
    instructions[20].nobytes=1;
    instructions[20].clock=12;
    instructions[20].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[21].hex_code=0X15;
    instructions[21].mnemonic="DEC ";
    instructions[21].nobytes=2;
    instructions[21].clock=12;
    instructions[21].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[22].hex_code=0X16;
    instructions[22].mnemonic="DEC @R0";
    instructions[22].nobytes=1;
    instructions[22].clock=12;
    instructions[22].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[23].hex_code=0X17;
    instructions[23].mnemonic="DEC @R1";
    instructions[23].nobytes=1;
    instructions[23].clock=12;
    instructions[23].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[24].hex_code=0X18;
    instructions[24].mnemonic="DEC R0";
    instructions[24].nobytes=1;
    instructions[24].clock=12;
    instructions[24].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[25].hex_code=0X19;
    instructions[25].mnemonic="DEC R1";
    instructions[25].nobytes=1;
    instructions[25].clock=12;
    instructions[25].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[26].hex_code=0X1A;
    instructions[26].mnemonic="DEC R2";
    instructions[26].nobytes=1;
    instructions[26].clock=12;
    instructions[26].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[27].hex_code=0X1B;
    instructions[27].mnemonic="DEC R3";
    instructions[27].nobytes=1;
    instructions[27].clock=12;
    instructions[27].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[28].hex_code=0X1C;
    instructions[28].mnemonic="DEC R4";
    instructions[28].nobytes=1;
    instructions[28].clock=12;
    instructions[28].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[29].hex_code=0X1D;
    instructions[29].mnemonic="DEC R5";
    instructions[29].nobytes=1;
    instructions[29].clock=12;
    instructions[29].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[30].hex_code=0X1E;
    instructions[30].mnemonic="DEC R6";
    instructions[30].nobytes=1;
    instructions[30].clock=12;
    instructions[30].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[31].hex_code=0X1F;
    instructions[31].mnemonic="DEC R7";
    instructions[31].nobytes=1;
    instructions[31].clock=12;
    instructions[31].ins_ptr=@selector(inc_dec_isr:);
    
    
    instructions[32].hex_code=0X20;
    instructions[32].mnemonic="JB ";
    instructions[32].nobytes=3;
    instructions[32].clock=24;
    instructions[32].ins_ptr=@selector(jb_isr:);
    
    
    instructions[33].hex_code=0X21;
    instructions[33].mnemonic="AJMP ";
    instructions[33].nobytes=2;
    instructions[33].clock=24;
    instructions[33].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[34].hex_code=0X22;
    instructions[34].mnemonic="RET";
    instructions[34].nobytes=1;
    instructions[34].clock=24;
    instructions[34].ins_ptr=@selector(ret_isr:);
    
    
    instructions[35].hex_code=0X23;
    instructions[35].mnemonic="RL A";
    instructions[35].nobytes=1;
    instructions[35].clock=12;
    instructions[35].ins_ptr=@selector(rl_isr:);
    
    
    instructions[36].hex_code=0X24;
    instructions[36].mnemonic="ADD A,#";
    instructions[36].nobytes=2;
    instructions[36].clock=12;
    instructions[36].ins_ptr=@selector(add_isr:);
    
    
    instructions[37].hex_code=0X25;
    instructions[37].mnemonic="ADD A,";
    instructions[37].nobytes=2;
    instructions[37].clock=12;
    instructions[37].ins_ptr=@selector(add_isr:);
    
    
    instructions[38].hex_code=0X26;
    instructions[38].mnemonic="ADD A,@R0 ";
    instructions[38].nobytes=1;
    instructions[38].clock=12;
    instructions[38].ins_ptr=@selector(add_isr:);
    
    
    instructions[39].hex_code=0X27;
    instructions[39].mnemonic="ADD A,@R1 ";
    instructions[39].nobytes=1;
    instructions[39].clock=12;
    instructions[39].ins_ptr=@selector(add_isr:);
    
    
    instructions[40].hex_code=0X28;
    instructions[40].mnemonic="ADD A,R0";
    instructions[40].nobytes=1;
    instructions[40].clock=12;
    instructions[40].ins_ptr=@selector(add_isr:);
    
    
    instructions[41].hex_code=0X29;
    instructions[41].mnemonic="ADD A,R1";
    instructions[41].nobytes=1;
    instructions[41].clock=12;
    instructions[41].ins_ptr=@selector(add_isr:);
    
    
    instructions[42].hex_code=0X2A;
    instructions[42].mnemonic="ADD A,R2";
    instructions[42].nobytes=1;
    instructions[42].clock=12;
    instructions[42].ins_ptr=@selector(add_isr:);
    
    
    instructions[43].hex_code=0X2B;
    instructions[43].mnemonic="ADD A,R3";
    instructions[43].nobytes=1;
    instructions[43].clock=12;
    instructions[43].ins_ptr=@selector(add_isr:);
    
    
    instructions[44].hex_code=0X2C;
    instructions[44].mnemonic="ADD A,R4";
    instructions[44].nobytes=1;
    instructions[44].clock=12;
    instructions[44].ins_ptr=@selector(add_isr:);
    
    
    instructions[45].hex_code=0X2D;
    instructions[45].mnemonic="ADD A,R5";
    instructions[45].nobytes=1;
    instructions[45].clock=12;
    instructions[45].ins_ptr=@selector(add_isr:);
    
    
    instructions[46].hex_code=0X2E;
    instructions[46].mnemonic="ADD A,R6";
    instructions[46].nobytes=1;
    instructions[46].clock=12;
    instructions[46].ins_ptr=@selector(add_isr:);
    
    
    instructions[47].hex_code=0X2F;
    instructions[47].mnemonic="ADD A,R7";
    instructions[47].nobytes=1;
    instructions[47].clock=12;
    instructions[47].ins_ptr=@selector(add_isr:);
    
    
    instructions[48].hex_code=0X30;
    instructions[48].mnemonic="JNB ";
    instructions[48].nobytes=3;
    instructions[48].clock=24;
    instructions[48].ins_ptr=@selector(jnb_isr:);
    
    
    instructions[49].hex_code=0X31;
    instructions[49].mnemonic="ACALL ";
    instructions[49].nobytes=2;
    instructions[49].clock=24;
    instructions[49].ins_ptr=@selector(acall_isr:);
    
    
    instructions[50].hex_code=0X32;
    instructions[50].mnemonic="RETI";
    instructions[50].nobytes=1;
    instructions[50].clock=24;
    instructions[50].ins_ptr=@selector(reti_isr:);
    
    
    instructions[51].hex_code=0X33;
    instructions[51].mnemonic="RLC A";
    instructions[51].nobytes=1;
    instructions[51].clock=12;
    instructions[51].ins_ptr=@selector(rlc_isr:);
    
    
    instructions[52].hex_code=0X34;
    instructions[52].mnemonic="ADDC A,#";
    instructions[52].nobytes=2;
    instructions[52].clock=12;
    instructions[52].ins_ptr=@selector(add_isr:);
    
    
    instructions[53].hex_code=0X35;
    instructions[53].mnemonic="ADDC A,";
    instructions[53].nobytes=1;
    instructions[53].clock=12;
    instructions[53].ins_ptr=@selector(add_isr:);
    
    
    instructions[54].hex_code=0X36;
    instructions[54].mnemonic="ADDC A,@R0 ";
    instructions[54].nobytes=1;
    instructions[54].clock=12;
    instructions[54].ins_ptr=@selector(add_isr:);
    
    
    instructions[55].hex_code=0X37;
    instructions[55].mnemonic="ADDC A,@R1 ";
    instructions[55].nobytes=1;
    instructions[55].clock=12;
    instructions[55].ins_ptr=@selector(add_isr:);
    
    
    instructions[56].hex_code=0X38;
    instructions[56].mnemonic="ADDC A,R0";
    instructions[56].nobytes=1;
    instructions[56].clock=12;
    instructions[56].ins_ptr=@selector(add_isr:);
    
    
    instructions[57].hex_code=0X39;
    instructions[57].mnemonic="ADDC A,R1";
    instructions[57].nobytes=1;
    instructions[57].clock=12;
    instructions[57].ins_ptr=@selector(add_isr:);
    
    
    instructions[58].hex_code=0X3A;
    instructions[58].mnemonic="ADDC A,R2";
    instructions[58].nobytes=1;
    instructions[58].clock=12;
    instructions[58].ins_ptr=@selector(add_isr:);
    
    
    instructions[59].hex_code=0X3B;
    instructions[59].mnemonic="ADDC A,R3";
    instructions[59].nobytes=1;
    instructions[59].clock=12;
    instructions[59].ins_ptr=@selector(add_isr:);
    
    
    instructions[60].hex_code=0X3C;
    instructions[60].mnemonic="ADDC A,R4";
    instructions[60].nobytes=1;
    instructions[60].clock=12;
    instructions[60].ins_ptr=@selector(add_isr:);
    
    
    instructions[61].hex_code=0X3D;
    instructions[61].mnemonic="ADDC A,R5";
    instructions[61].nobytes=1;
    instructions[61].clock=12;
    instructions[61].ins_ptr=@selector(add_isr:);
    
    
    instructions[62].hex_code=0X3E;
    instructions[62].mnemonic="ADDC A,R6";
    instructions[62].nobytes=1;
    instructions[62].clock=12;
    instructions[62].ins_ptr=@selector(add_isr:);
    
    
    instructions[63].hex_code=0X3F;
    instructions[63].mnemonic="ADDC A,R7";
    instructions[63].nobytes=1;
    instructions[63].clock=12;
    instructions[63].ins_ptr=@selector(add_isr:);
    
    
    instructions[64].hex_code=0X40;
    instructions[64].mnemonic="JC ";
    instructions[64].nobytes=2;
    instructions[64].clock=24;
    instructions[64].ins_ptr=@selector(jc_isr:);
    
    
    instructions[65].hex_code=0X41;
    instructions[65].mnemonic="AJMP ";
    instructions[65].nobytes=2;
    instructions[65].clock=24;
    instructions[65].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[66].hex_code=0X42;
    instructions[66].mnemonic="ORL ";
    instructions[66].nobytes=2;
    instructions[66].clock=12;
    instructions[66].ins_ptr=@selector(orl_isr:);
    
    
    instructions[67].hex_code=0X43;
    instructions[67].mnemonic="ORL ";
    instructions[67].nobytes=3;
    instructions[67].clock=12;
    instructions[67].ins_ptr=@selector(orl_isr:);
    
    
    instructions[68].hex_code=0X44;
    instructions[68].mnemonic="ORL A,#";
    instructions[68].nobytes=2;
    instructions[68].clock=12;
    instructions[68].ins_ptr=@selector(orl_isr:);
    
    
    instructions[69].hex_code=0X45;
    instructions[69].mnemonic="ORL A,";
    instructions[69].nobytes=2;
    instructions[69].clock=12;
    instructions[69].ins_ptr=@selector(orl_isr:);
    
    
    instructions[70].hex_code=0X46;
    instructions[70].mnemonic="ORL A,@R0 ";
    instructions[70].nobytes=1;
    instructions[70].clock=12;
    instructions[70].ins_ptr=@selector(orl_isr:);
    
    
    instructions[71].hex_code=0X47;
    instructions[71].mnemonic="ORL A,@R1 ";
    instructions[71].nobytes=1;
    instructions[71].clock=12;
    instructions[71].ins_ptr=@selector(orl_isr:);
    
    
    instructions[72].hex_code=0X48;
    instructions[72].mnemonic="ORL A,R0";
    instructions[72].nobytes=1;
    instructions[72].clock=12;
    instructions[72].ins_ptr=@selector(orl_isr:);
    
    
    instructions[73].hex_code=0X49;
    instructions[73].mnemonic="ORL A,R1";
    instructions[73].nobytes=1;
    instructions[73].clock=12;
    instructions[73].ins_ptr=@selector(orl_isr:);
    
    
    instructions[74].hex_code=0X4A;
    instructions[74].mnemonic="ORL A,R2";
    instructions[74].nobytes=1;
    instructions[74].clock=12;
    instructions[74].ins_ptr=@selector(orl_isr:);
    
    
    instructions[75].hex_code=0X4B;
    instructions[75].mnemonic="ORL A,R3";
    instructions[75].nobytes=1;
    instructions[75].clock=12;
    instructions[75].ins_ptr=@selector(orl_isr:);
    
    
    instructions[76].hex_code=0X4C;
    instructions[76].mnemonic="ORL A,R4";
    instructions[76].nobytes=1;
    instructions[76].clock=12;
    instructions[76].ins_ptr=@selector(orl_isr:);
    
    
    instructions[77].hex_code=0X4D;
    instructions[77].mnemonic="ORL A,R5";
    instructions[77].nobytes=1;
    instructions[77].clock=12;
    instructions[77].ins_ptr=@selector(orl_isr:);
    
    
    instructions[78].hex_code=0X4E;
    instructions[78].mnemonic="ORL A,R6";
    instructions[78].nobytes=1;
    instructions[78].clock=12;
    instructions[78].ins_ptr=@selector(orl_isr:);
    
    
    instructions[79].hex_code=0X4F;
    instructions[79].mnemonic="ORL A,R7";
    instructions[79].nobytes=1;
    instructions[79].clock=12;
    instructions[79].ins_ptr=@selector(orl_isr:);
    
    
    instructions[80].hex_code=0X50;
    instructions[80].mnemonic="JNC ";
    instructions[80].nobytes=2;
    instructions[80].clock=24;
    instructions[80].ins_ptr=@selector(jnc_isr:);
    
    
    instructions[81].hex_code=0X51;
    instructions[81].mnemonic="ACALL ";
    instructions[81].nobytes=2;
    instructions[81].clock=24;
    instructions[81].ins_ptr=@selector(acall_isr:);
    
    
    instructions[82].hex_code=0X52;
    instructions[82].mnemonic="ANL ";
    instructions[82].nobytes=2;
    instructions[82].clock=12;
    instructions[82].ins_ptr=@selector(anl_isr:);
    
    
    instructions[83].hex_code=0X53;
    instructions[83].mnemonic="ANL ";
    instructions[83].nobytes=3;
    instructions[83].clock=24;
    instructions[83].ins_ptr=@selector(anl_isr:);
    
    
    instructions[84].hex_code=0X54;
    instructions[84].mnemonic="ANL A,#";
    instructions[84].nobytes=2;
    instructions[84].clock=12;
    instructions[84].ins_ptr=@selector(anl_isr:);
    
    
    instructions[85].hex_code=0X55;
    instructions[85].mnemonic="ANL A,";
    instructions[85].nobytes=2;
    instructions[85].clock=12;
    instructions[85].ins_ptr=@selector(anl_isr:);
    
    
    instructions[86].hex_code=0X56;
    instructions[86].mnemonic="ANL A,@R0  ";
    instructions[86].nobytes=1;
    instructions[86].clock=12;
    instructions[86].ins_ptr=@selector(anl_isr:);
    
    
    instructions[87].hex_code=0X57;
    instructions[87].mnemonic="ANL A,@R1  ";
    instructions[87].nobytes=1;
    instructions[87].clock=12;
    instructions[87].ins_ptr=@selector(anl_isr:);
    
    
    instructions[88].hex_code=0X58;
    instructions[88].mnemonic="ANL A,R0";
    instructions[88].nobytes=1;
    instructions[88].clock=12;
    instructions[88].ins_ptr=@selector(anl_isr:);
    
    
    instructions[89].hex_code=0X59;
    instructions[89].mnemonic="ANL A,R1";
    instructions[89].nobytes=1;
    instructions[89].clock=12;
    instructions[89].ins_ptr=@selector(anl_isr:);
    
    
    instructions[90].hex_code=0X5A;
    instructions[90].mnemonic="ANL A,R2";
    instructions[90].nobytes=1;
    instructions[90].clock=12;
    instructions[90].ins_ptr=@selector(anl_isr:);
    
    
    instructions[91].hex_code=0X5B;
    instructions[91].mnemonic="ANL A,R3";
    instructions[91].nobytes=1;
    instructions[91].clock=12;
    instructions[91].ins_ptr=@selector(anl_isr:);
    
    
    instructions[92].hex_code=0X5C;
    instructions[92].mnemonic="ANL A,R4";
    instructions[92].nobytes=1;
    instructions[92].clock=12;
    instructions[92].ins_ptr=@selector(anl_isr:);
    
    
    instructions[93].hex_code=0X5D;
    instructions[93].mnemonic="ANL A,R5";
    instructions[93].nobytes=1;
    instructions[93].clock=12;
    instructions[93].ins_ptr=@selector(anl_isr:);
    
    
    instructions[94].hex_code=0X5E;
    instructions[94].mnemonic="ANL A,R6";
    instructions[94].nobytes=1;
    instructions[94].clock=12;
    instructions[94].ins_ptr=@selector(anl_isr:);
    
    
    instructions[95].hex_code=0X5F;
    instructions[95].mnemonic="ANL A,R7";
    instructions[95].nobytes=1;
    instructions[95].clock=12;
    instructions[95].ins_ptr=@selector(anl_isr:);
    
    
    instructions[96].hex_code=0X60;
    instructions[96].mnemonic="JZ ";
    instructions[96].nobytes=2;
    instructions[96].clock=24;
    instructions[96].ins_ptr=@selector(jz_isr:);
    
    
    instructions[97].hex_code=0X61;
    instructions[97].mnemonic="AJMP ";
    instructions[97].nobytes=2;
    instructions[97].clock=24;
    instructions[97].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[98].hex_code=0X62;
    instructions[98].mnemonic="XRL ";
    instructions[98].nobytes=2;
    instructions[98].clock=12;
    instructions[98].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[99].hex_code=0X63;
    instructions[99].mnemonic="XRL ";
    instructions[99].nobytes=3;
    instructions[99].clock=24;
    instructions[99].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[100].hex_code=0X64;
    instructions[100].mnemonic="XRL A,#";
    instructions[100].nobytes=2;
    instructions[100].clock=12;
    instructions[100].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[101].hex_code=0X65;
    instructions[101].mnemonic="XRL A,";
    instructions[101].nobytes=2;
    instructions[101].clock=12;
    instructions[101].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[102].hex_code=0X66;
    instructions[102].mnemonic="XRL A,@R0";
    instructions[102].nobytes=1;
    instructions[102].clock=12;
    instructions[102].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[103].hex_code=0X67;
    instructions[103].mnemonic="XRL A,@R1";
    instructions[103].nobytes=1;
    instructions[103].clock=12;
    instructions[103].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[104].hex_code=0X68;
    instructions[104].mnemonic="XRL A,R0";
    instructions[104].nobytes=1;
    instructions[104].clock=12;
    instructions[104].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[105].hex_code=0X69;
    instructions[105].mnemonic="XRL A,R1";
    instructions[105].nobytes=1;
    instructions[105].clock=12;
    instructions[105].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[106].hex_code=0X6A;
    instructions[106].mnemonic="XRL A,R2";
    instructions[106].nobytes=1;
    instructions[106].clock=12;
    instructions[106].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[107].hex_code=0X6B;
    instructions[107].mnemonic="XRL A,R3";
    instructions[107].nobytes=1;
    instructions[107].clock=12;
    instructions[107].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[108].hex_code=0X6C;
    instructions[108].mnemonic="XRL A,R4";
    instructions[108].nobytes=1;
    instructions[108].clock=12;
    instructions[108].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[109].hex_code=0X6D;
    instructions[109].mnemonic="XRL A,R5";
    instructions[109].nobytes=1;
    instructions[109].clock=12;
    instructions[109].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[110].hex_code=0X6E;
    instructions[110].mnemonic="XRL A,R6";
    instructions[110].nobytes=1;
    instructions[110].clock=12;
    instructions[110].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[111].hex_code=0X6F;
    instructions[111].mnemonic="XRL A,R7";
    instructions[111].nobytes=1;
    instructions[111].clock=12;
    instructions[111].ins_ptr=@selector(xrl_isr:);
    
    
    instructions[112].hex_code=0X70;
    instructions[112].mnemonic="JNZ ";
    instructions[112].nobytes=2;
    instructions[112].clock=24;
    instructions[112].ins_ptr=@selector(jnz_isr:);
    
    
    instructions[113].hex_code=0X71;
    instructions[113].mnemonic="ACALL ";
    instructions[113].nobytes=2;
    instructions[113].clock=24;
    instructions[113].ins_ptr=@selector(acall_isr:);
    
    
    instructions[114].hex_code=0X72;
    instructions[114].mnemonic="ORL C,";
    instructions[114].nobytes=2;
    instructions[114].clock=24;
    instructions[114].ins_ptr=@selector(orlc_isr:);
    
    
    instructions[115].hex_code=0X73;
    instructions[115].mnemonic="JMP @A+DPTR";
    instructions[115].nobytes=1;
    instructions[115].clock=24;
    instructions[115].ins_ptr=@selector(jmpdptr_isr:);
    
    
    instructions[116].hex_code=0X74;
    instructions[116].mnemonic="MOV A,#";
    instructions[116].nobytes=2;
    instructions[116].clock=12;
    instructions[116].ins_ptr=@selector(mov_isr:);
    
    
    instructions[117].hex_code=0X75;
    instructions[117].mnemonic="MOV ";
    instructions[117].nobytes=3;
    instructions[117].clock=24;
    instructions[117].ins_ptr=@selector(mov_isr:);
    
    
    instructions[118].hex_code=0X76;
    instructions[118].mnemonic="MOV @R0,#";
    instructions[118].nobytes=2;
    instructions[118].clock=12;
    instructions[118].ins_ptr=@selector(mov_isr:);
    
    
    instructions[119].hex_code=0X77;
    instructions[119].mnemonic="MOV @R1,#";
    instructions[119].nobytes=2;
    instructions[119].clock=12;
    instructions[119].ins_ptr=@selector(mov_isr:);
    
    
    instructions[120].hex_code=0X78;
    instructions[120].mnemonic="MOV R0,#";
    instructions[120].nobytes=2;
    instructions[120].clock=12;
    instructions[120].ins_ptr=@selector(mov_isr:);
    
    
    instructions[121].hex_code=0X79;
    instructions[121].mnemonic="MOV R1,#";
    instructions[121].nobytes=2;
    instructions[121].clock=12;
    instructions[121].ins_ptr=@selector(mov_isr:);
    
    
    instructions[122].hex_code=0X7A;
    instructions[122].mnemonic="MOV R2,#";
    instructions[122].nobytes=2;
    instructions[122].clock=12;
    instructions[122].ins_ptr=@selector(mov_isr:);
    
    
    instructions[123].hex_code=0X7B;
    instructions[123].mnemonic="MOV R3,#";
    instructions[123].nobytes=2;
    instructions[123].clock=12;
    instructions[123].ins_ptr=@selector(mov_isr:);
    
    
    instructions[124].hex_code=0X7C;
    instructions[124].mnemonic="MOV R4,#";
    instructions[124].nobytes=2;
    instructions[124].clock=12;
    instructions[124].ins_ptr=@selector(mov_isr:);
    
    
    instructions[125].hex_code=0X7D;
    instructions[125].mnemonic="MOV R5,#";
    instructions[125].nobytes=2;
    instructions[125].clock=12;
    instructions[125].ins_ptr=@selector(mov_isr:);
    
    
    instructions[126].hex_code=0X7E;
    instructions[126].mnemonic="MOV R6,#";
    instructions[126].nobytes=2;
    instructions[126].clock=12;
    instructions[126].ins_ptr=@selector(mov_isr:);
    
    
    instructions[127].hex_code=0X7F;
    instructions[127].mnemonic="MOV R7,#";
    instructions[127].nobytes=2;
    instructions[127].clock=12;
    instructions[127].ins_ptr=@selector(mov_isr:);
    
    
    instructions[128].hex_code=0X80;
    instructions[128].mnemonic="SJMP ";
    instructions[128].nobytes=2;
    instructions[128].clock=24;
    instructions[128].ins_ptr=@selector(sjmp_isr:);
    
    
    instructions[129].hex_code=0X81;
    instructions[129].mnemonic="AJMP ";
    instructions[129].nobytes=2;
    instructions[129].clock=24;
    instructions[129].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[130].hex_code=0X82;
    instructions[130].mnemonic="ANL C,";
    instructions[130].nobytes=2;
    instructions[130].clock=24;
    instructions[130].ins_ptr=@selector(anlc_isr:);
    
    
    instructions[131].hex_code=0X83;
    instructions[131].mnemonic="MOVC A,@A+PC ";
    instructions[131].nobytes=1;
    instructions[131].clock=24;
    instructions[131].ins_ptr=@selector(mov_isr:);
    
    
    instructions[132].hex_code=0X84;
    instructions[132].mnemonic="DIV AB";
    instructions[132].nobytes=1;
    instructions[132].clock=48;
    instructions[132].ins_ptr=@selector(divab_isr:);
    
    
    instructions[133].hex_code=0X85;
    instructions[133].mnemonic="MOV";
    instructions[133].nobytes=3;
    instructions[133].clock=24;
    instructions[133].ins_ptr=@selector(mov_isr:);
    
    
    instructions[134].hex_code=0X86;
    instructions[134].mnemonic="MOV ";
    instructions[134].nobytes=2;
    instructions[134].clock=24;
    instructions[134].ins_ptr=@selector(mov_isr:);
    
    
    instructions[135].hex_code=0X87;
    instructions[135].mnemonic="MOV ";
    instructions[135].nobytes=2;
    instructions[135].clock=24;
    instructions[135].ins_ptr=@selector(mov_isr:);
    
    
    instructions[136].hex_code=0X88;
    instructions[136].mnemonic="MOV ";
    instructions[136].nobytes=2;
    instructions[136].clock=24;
    instructions[136].ins_ptr=@selector(mov_isr:);
    
    
    instructions[137].hex_code=0X89;
    instructions[137].mnemonic="MOV ";
    instructions[137].nobytes=2;
    instructions[137].clock=24;
    instructions[137].ins_ptr=@selector(mov_isr:);
    
    
    instructions[138].hex_code=0X8A;
    instructions[138].mnemonic="MOV ";
    instructions[138].nobytes=2;
    instructions[138].clock=24;
    instructions[138].ins_ptr=@selector(mov_isr:);
    
    
    instructions[139].hex_code=0X8B;
    instructions[139].mnemonic="MOV ";
    instructions[139].nobytes=2;
    instructions[139].clock=24;
    instructions[139].ins_ptr=@selector(mov_isr:);
    
    
    instructions[140].hex_code=0X8C;
    instructions[140].mnemonic="MOV ";
    instructions[140].nobytes=2;
    instructions[140].clock=24;
    instructions[140].ins_ptr=@selector(mov_isr:);
    
    
    instructions[141].hex_code=0X8D;
    instructions[141].mnemonic="MOV ";
    instructions[141].nobytes=2;
    instructions[141].clock=24;
    instructions[141].ins_ptr=@selector(mov_isr:);
    
    
    instructions[142].hex_code=0X8E;
    instructions[142].mnemonic="MOV ";
    instructions[142].nobytes=2;
    instructions[142].clock=24;
    instructions[142].ins_ptr=@selector(mov_isr:);
    
    
    instructions[143].hex_code=0X8F;
    instructions[143].mnemonic="MOV ";
    instructions[143].nobytes=2;
    instructions[143].clock=24;
    instructions[143].ins_ptr=@selector(mov_isr:);
    
    
    instructions[144].hex_code=0X90;
    instructions[144].mnemonic="MOV DPTR,#";
    instructions[144].nobytes=3;
    instructions[144].clock=24;
    instructions[144].ins_ptr=@selector(mov_isr:);
    
    
    instructions[145].hex_code=0X91;
    instructions[145].mnemonic="ACALL ";
    instructions[145].nobytes=2;
    instructions[145].clock=24;
    instructions[145].ins_ptr=@selector(acall_isr:);
    
    
    instructions[146].hex_code=0X92;
    instructions[146].mnemonic="MOV ";
    instructions[146].nobytes=2;
    instructions[146].clock=24;
    instructions[146].ins_ptr=@selector(mov_isr:);
    
    
    instructions[147].hex_code=0X93;
    instructions[147].mnemonic="MOVC A,@A+DPTR";
    instructions[147].nobytes=1;
    instructions[147].clock=24;
    instructions[147].ins_ptr=@selector(mov_isr:);
    
    
    instructions[148].hex_code=0X94;
    instructions[148].mnemonic="SUBB A,#";
    instructions[148].nobytes=2;
    instructions[148].clock=12;
    instructions[148].ins_ptr=@selector(subb_isr:);
    
    
    instructions[149].hex_code=0X95;
    instructions[149].mnemonic="SUBB A,";
    instructions[149].nobytes=2;
    instructions[149].clock=12;
    instructions[149].ins_ptr=@selector(subb_isr:);
    
    
    instructions[150].hex_code=0X96;
    instructions[150].mnemonic="SUBB A,@R0 ";
    instructions[150].nobytes=1;
    instructions[150].clock=12;
    instructions[150].ins_ptr=@selector(subb_isr:);
    
    
    instructions[151].hex_code=0X97;
    instructions[151].mnemonic="SUBB A,@R1 ";
    instructions[151].nobytes=1;
    instructions[151].clock=12;
    instructions[151].ins_ptr=@selector(subb_isr:);
    
    
    instructions[152].hex_code=0X98;
    instructions[152].mnemonic="SUBB A,R0";
    instructions[152].nobytes=1;
    instructions[152].clock=12;
    instructions[152].ins_ptr=@selector(subb_isr:);
    
    
    instructions[153].hex_code=0X99;
    instructions[153].mnemonic="SUBB A,R1";
    instructions[153].nobytes=1;
    instructions[153].clock=12;
    instructions[153].ins_ptr=@selector(subb_isr:);
    
    
    instructions[154].hex_code=0X9A;
    instructions[154].mnemonic="SUBB A,R2";
    instructions[154].nobytes=1;
    instructions[154].clock=12;
    instructions[154].ins_ptr=@selector(subb_isr:);
    
    
    instructions[155].hex_code=0X9B;
    instructions[155].mnemonic="SUBB A,R3";
    instructions[155].nobytes=1;
    instructions[155].clock=12;
    instructions[155].ins_ptr=@selector(subb_isr:);
    
    
    instructions[156].hex_code=0X9C;
    instructions[156].mnemonic="SUBB A,R4";
    instructions[156].nobytes=1;
    instructions[156].clock=12;
    instructions[156].ins_ptr=@selector(subb_isr:);
    
    
    instructions[157].hex_code=0X9D;
    instructions[157].mnemonic="SUBB A,R5";
    instructions[157].nobytes=1;
    instructions[157].clock=12;
    instructions[157].ins_ptr=@selector(subb_isr:);
    
    
    instructions[158].hex_code=0X9E;
    instructions[158].mnemonic="SUBB A,R6";
    instructions[158].nobytes=1;
    instructions[158].clock=12;
    instructions[158].ins_ptr=@selector(subb_isr:);
    
    
    instructions[159].hex_code=0X9F;
    instructions[159].mnemonic="SUBB A,R7";
    instructions[159].nobytes=1;
    instructions[159].clock=12;
    instructions[159].ins_ptr=@selector(subb_isr:);
    
    
    instructions[160].hex_code=0XA0;
    instructions[160].mnemonic="ORL C,/";
    instructions[160].nobytes=2;
    instructions[160].clock=24;
    instructions[160].ins_ptr=@selector(orlc_isr:);
    
    
    instructions[161].hex_code=0XA1;
    instructions[161].mnemonic="AJMP ";
    instructions[161].nobytes=2;
    instructions[161].clock=24;
    instructions[161].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[162].hex_code=0XA2;
    instructions[162].mnemonic="MOV C,";
    instructions[162].nobytes=2;
    instructions[162].clock=12;
    instructions[162].ins_ptr=@selector(mov_isr:);
    
    
    instructions[163].hex_code=0XA3;
    instructions[163].mnemonic="INC DPTR";
    instructions[163].nobytes=1;
    instructions[163].clock=24;
    instructions[163].ins_ptr=@selector(incdptr_isr:);
    
    
    instructions[164].hex_code=0XA4;
    instructions[164].mnemonic="MUL AB";
    instructions[164].nobytes=1;
    instructions[164].clock=48;
    instructions[164].ins_ptr=@selector(mulab_isr:);
    
    
    instructions[165].hex_code=0XA5;
    instructions[165].mnemonic=" ";
    instructions[165].nobytes=1;
    instructions[165].clock=12;
    instructions[165].ins_ptr=@selector(dummy_isr:);
    
    
    instructions[166].hex_code=0XA6;
    instructions[166].mnemonic="MOV @R0,";
    instructions[166].nobytes=2;
    instructions[166].clock=24;
    instructions[166].ins_ptr=@selector(mov_isr:);
    
    
    instructions[167].hex_code=0XA7;
    instructions[167].mnemonic="MOV @R1,";
    instructions[167].nobytes=2;
    instructions[167].clock=24;
    instructions[167].ins_ptr=@selector(mov_isr:);
    
    
    instructions[168].hex_code=0XA8;
    instructions[168].mnemonic="MOV R0,";
    instructions[168].nobytes=2;
    instructions[168].clock=24;
    instructions[168].ins_ptr=@selector(mov_isr:);
    
    
    instructions[169].hex_code=0XA9;
    instructions[169].mnemonic="MOV R1,";
    instructions[169].nobytes=2;
    instructions[169].clock=24;
    instructions[169].ins_ptr=@selector(mov_isr:);
    
    
    instructions[170].hex_code=0XAA;
    instructions[170].mnemonic="MOV R2,";
    instructions[170].nobytes=2;
    instructions[170].clock=24;
    instructions[170].ins_ptr=@selector(mov_isr:);
    
    
    instructions[171].hex_code=0XAB;
    instructions[171].mnemonic="MOV R3,";
    instructions[171].nobytes=2;
    instructions[171].clock=24;
    instructions[171].ins_ptr=@selector(mov_isr:);
    
    
    instructions[172].hex_code=0XAC;
    instructions[172].mnemonic="MOV R4,";
    instructions[172].nobytes=2;
    instructions[172].clock=24;
    instructions[172].ins_ptr=@selector(mov_isr:);
    
    
    instructions[173].hex_code=0XAD;
    instructions[173].mnemonic="MOV R5,";
    instructions[173].nobytes=2;
    instructions[173].clock=24;
    instructions[173].ins_ptr=@selector(mov_isr:);
    
    
    instructions[174].hex_code=0XAE;
    instructions[174].mnemonic="MOV R6,";
    instructions[174].nobytes=2;
    instructions[174].clock=24;
    instructions[174].ins_ptr=@selector(mov_isr:);
    
    
    instructions[175].hex_code=0XAF;
    instructions[175].mnemonic="MOV R7,";
    instructions[175].nobytes=2;
    instructions[175].clock=24;
    instructions[175].ins_ptr=@selector(mov_isr:);
    
    
    instructions[176].hex_code=0XB0;
    instructions[176].mnemonic="ANL C,/";
    instructions[176].nobytes=2;
    instructions[176].clock=24;
    instructions[176].ins_ptr=@selector(anlc_isr:);
    
    
    instructions[177].hex_code=0XB1;
    instructions[177].mnemonic="ACALL ";
    instructions[177].nobytes=2;
    instructions[177].clock=24;
    instructions[177].ins_ptr=@selector(acall_isr:);
    
    
    instructions[178].hex_code=0XB2;
    instructions[178].mnemonic="CPL ";
    instructions[178].nobytes=2;
    instructions[178].clock=12;
    instructions[178].ins_ptr=@selector(cpl_isr:);
    
    
    instructions[179].hex_code=0XB3;
    instructions[179].mnemonic="CPL C";
    instructions[179].nobytes=1;
    instructions[179].clock=12;
    instructions[179].ins_ptr=@selector(cpl_isr:);
    
    
    instructions[180].hex_code=0XB4;
    instructions[180].mnemonic="CJNE A,#";
    instructions[180].nobytes=3;
    instructions[180].clock=24;
    instructions[180].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[181].hex_code=0XB5;
    instructions[181].mnemonic="CJNE A,";
    instructions[181].nobytes=3;
    instructions[181].clock=24;
    instructions[181].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[182].hex_code=0XB6;
    instructions[182].mnemonic="CJNE @R0,#";
    instructions[182].nobytes=3;
    instructions[182].clock=24;
    instructions[182].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[183].hex_code=0XB7;
    instructions[183].mnemonic="CJNE @R1,#";
    instructions[183].nobytes=3;
    instructions[183].clock=24;
    instructions[183].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[184].hex_code=0XB8;
    instructions[184].mnemonic="CJNE R0,#";
    instructions[184].nobytes=3;
    instructions[184].clock=24;
    instructions[184].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[185].hex_code=0XB9;
    instructions[185].mnemonic="CJNE R1,#";
    instructions[185].nobytes=3;
    instructions[185].clock=24;
    instructions[185].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[186].hex_code=0XBA;
    instructions[186].mnemonic="CJNE R2,#";
    instructions[186].nobytes=3;
    instructions[186].clock=24;
    instructions[186].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[187].hex_code=0XBB;
    instructions[187].mnemonic="CJNE R3,#";
    instructions[187].nobytes=3;
    instructions[187].clock=24;
    instructions[187].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[188].hex_code=0XBC;
    instructions[188].mnemonic="CJNE R4,#";
    instructions[188].nobytes=3;
    instructions[188].clock=24;
    instructions[188].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[189].hex_code=0XBD;
    instructions[189].mnemonic="CJNE R5,#";
    instructions[189].nobytes=3;
    instructions[189].clock=24;
    instructions[189].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[190].hex_code=0XBE;
    instructions[190].mnemonic="CJNE R6,#";
    instructions[190].nobytes=3;
    instructions[190].clock=24;
    instructions[190].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[191].hex_code=0XBF;
    instructions[191].mnemonic="CJNE R7,#";
    instructions[191].nobytes=3;
    instructions[191].clock=24;
    instructions[191].ins_ptr=@selector(cjne_isr:);
    
    
    instructions[192].hex_code=0XC0;
    instructions[192].mnemonic="PUSH ";
    instructions[192].nobytes=2;
    instructions[192].clock=24;
    instructions[192].ins_ptr=@selector(push_isr:);
    
    
    instructions[193].hex_code=0XC1;
    instructions[193].mnemonic="AJMP ";
    instructions[193].nobytes=2;
    instructions[193].clock=24;
    instructions[193].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[194].hex_code=0XC2;
    instructions[194].mnemonic="CLR ";
    instructions[194].nobytes=2;
    instructions[194].clock=12;
    instructions[194].ins_ptr=@selector(clr_isr:);
    
    
    instructions[195].hex_code=0XC3;
    instructions[195].mnemonic="CLR C";
    instructions[195].nobytes=1;
    instructions[195].clock=12;
    instructions[195].ins_ptr=@selector(clr_isr:);
    
    
    instructions[196].hex_code=0XC4;
    instructions[196].mnemonic="SWAP A";
    instructions[196].nobytes=1;
    instructions[196].clock=12;
    instructions[196].ins_ptr=@selector(swapa_isr:);
    
    
    instructions[197].hex_code=0XC5;
    instructions[197].mnemonic="XCH A,";
    instructions[197].nobytes=2;
    instructions[197].clock=12;
    instructions[197].ins_ptr=@selector(xch_isr:);
    
    
    instructions[198].hex_code=0XC6;
    instructions[198].mnemonic="XCH A,@R0";
    instructions[198].nobytes=1;
    instructions[198].clock=12;
    instructions[198].ins_ptr=@selector(xch_isr:);
    
    
    instructions[199].hex_code=0XC7;
    instructions[199].mnemonic="XCH A,@R1";
    instructions[199].nobytes=1;
    instructions[199].clock=12;
    instructions[199].ins_ptr=@selector(xch_isr:);
    
    
    instructions[200].hex_code=0XC8;
    instructions[200].mnemonic="XCH A,R0";
    instructions[200].nobytes=1;
    instructions[200].clock=12;
    instructions[200].ins_ptr=@selector(xch_isr:);
    
    
    instructions[201].hex_code=0XC9;
    instructions[201].mnemonic="XCH A,R1";
    instructions[201].nobytes=1;
    instructions[201].clock=12;
    instructions[201].ins_ptr=@selector(xch_isr:);
    
    
    instructions[202].hex_code=0XCA;
    instructions[202].mnemonic="XCH A,R2";
    instructions[202].nobytes=1;
    instructions[202].clock=12;
    instructions[202].ins_ptr=@selector(xch_isr:);
    
    
    instructions[203].hex_code=0XCB;
    instructions[203].mnemonic="XCH A,R3";
    instructions[203].nobytes=1;
    instructions[203].clock=12;
    instructions[203].ins_ptr=@selector(xch_isr:);
    
    
    instructions[204].hex_code=0XCC;
    instructions[204].mnemonic="XCH A,R4";
    instructions[204].nobytes=1;
    instructions[204].clock=12;
    instructions[204].ins_ptr=@selector(xch_isr:);
    
    
    instructions[205].hex_code=0XCD;
    instructions[205].mnemonic="XCH A,R5";
    instructions[205].nobytes=1;
    instructions[205].clock=12;
    instructions[205].ins_ptr=@selector(xch_isr:);
    
    
    instructions[206].hex_code=0XCE;
    instructions[206].mnemonic="XCH A,R6";
    instructions[206].nobytes=1;
    instructions[206].clock=12;
    instructions[206].ins_ptr=@selector(xch_isr:);
    
    
    instructions[207].hex_code=0XCF;
    instructions[207].mnemonic="XCH A,R7";
    instructions[207].nobytes=1;
    instructions[207].clock=12;
    instructions[207].ins_ptr=@selector(xch_isr:);
    
    
    instructions[208].hex_code=0XD0;
    instructions[208].mnemonic="POP ";
    instructions[208].nobytes=2;
    instructions[208].clock=24;
    instructions[208].ins_ptr=@selector(pop_isr:);
    
    
    instructions[209].hex_code=0XD1;
    instructions[209].mnemonic="ACALL ";
    instructions[209].nobytes=2;
    instructions[209].clock=24;
    instructions[209].ins_ptr=@selector(acall_isr:);
    
    
    instructions[210].hex_code=0XD2;
    instructions[210].mnemonic="SETB ";
    instructions[210].nobytes=2;
    instructions[210].clock=12;
    instructions[210].ins_ptr=@selector(setb_isr:);
    
    
    instructions[211].hex_code=0XD3;
    instructions[211].mnemonic="SETB C";
    instructions[211].nobytes=1;
    instructions[211].clock=12;
    instructions[211].ins_ptr=@selector(setb_isr:);
    
    
    instructions[212].hex_code=0XD4;
    instructions[212].mnemonic="DA A";
    instructions[212].nobytes=1;
    instructions[212].clock=12;
    instructions[212].ins_ptr=@selector(daa_isr:);
    
    
    instructions[213].hex_code=0XD5;
    instructions[213].mnemonic="DJNZ ";
    instructions[213].nobytes=3;
    instructions[213].clock=24;
    instructions[213].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[214].hex_code=0XD6;
    instructions[214].mnemonic="XCHD A,@R0";
    instructions[214].nobytes=1;
    instructions[214].clock=12;
    instructions[214].ins_ptr=@selector(xchd_isr:);
    
    
    instructions[215].hex_code=0XD7;
    instructions[215].mnemonic="XCHD A,@R1";
    instructions[215].nobytes=1;
    instructions[215].clock=12;
    instructions[215].ins_ptr=@selector(xchd_isr:);
    
    
    instructions[216].hex_code=0XD8;
    instructions[216].mnemonic="DJNZ R0,";
    instructions[216].nobytes=2;
    instructions[216].clock=24;
    instructions[216].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[217].hex_code=0XD9;
    instructions[217].mnemonic="DJNZ R1,";
    instructions[217].nobytes=2;
    instructions[217].clock=24;
    instructions[217].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[218].hex_code=0XDA;
    instructions[218].mnemonic="DJNZ R2,";
    instructions[218].nobytes=2;
    instructions[218].clock=24;
    instructions[218].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[219].hex_code=0XDB;
    instructions[219].mnemonic="DJNZ R3,";
    instructions[219].nobytes=2;
    instructions[219].clock=24;
    instructions[219].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[220].hex_code=0XDC;
    instructions[220].mnemonic="DJNZ R4,";
    instructions[220].nobytes=2;
    instructions[220].clock=24;
    instructions[220].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[221].hex_code=0XDD;
    instructions[221].mnemonic="DJNZ R5,";
    instructions[221].nobytes=2;
    instructions[221].clock=24;
    instructions[221].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[222].hex_code=0XDE;
    instructions[222].mnemonic="DJNZ R6,";
    instructions[222].nobytes=2;
    instructions[222].clock=24;
    instructions[222].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[223].hex_code=0XDF;
    instructions[223].mnemonic="DJNZ R7,";
    instructions[223].nobytes=2;
    instructions[223].clock=24;
    instructions[223].ins_ptr=@selector(djnz_isr:);
    
    
    instructions[224].hex_code=0XE0;
    instructions[224].mnemonic="MOVX A,@DPTR";
    instructions[224].nobytes=1;
    instructions[224].clock=24;
    instructions[224].ins_ptr=@selector(mov_isr:);
    
    
    instructions[225].hex_code=0XE1;
    instructions[225].mnemonic="AJMP ";
    instructions[225].nobytes=2;
    instructions[225].clock=24;
    instructions[225].ins_ptr=@selector(ajmp_isr:);
    
    
    instructions[226].hex_code=0XE2;
    instructions[226].mnemonic="MOVX A,@R0";
    instructions[226].nobytes=1;
    instructions[226].clock=24;
    instructions[226].ins_ptr=@selector(mov_isr:);
    
    
    instructions[227].hex_code=0XE3;
    instructions[227].mnemonic="MOVX A,@R1";
    instructions[227].nobytes=1;
    instructions[227].clock=24;
    instructions[227].ins_ptr=@selector(mov_isr:);
    
    
    instructions[228].hex_code=0XE4;
    instructions[228].mnemonic="CLR A";
    instructions[228].nobytes=1;
    instructions[228].clock=12;
    instructions[228].ins_ptr=@selector(clra_isr:);
    
    
    instructions[229].hex_code=0XE5;
    instructions[229].mnemonic="MOV A,";
    instructions[229].nobytes=2;
    instructions[229].clock=12;
    instructions[229].ins_ptr=@selector(mov_isr:);
    
    
    instructions[230].hex_code=0XE6;
    instructions[230].mnemonic="MOV A,@R0";
    instructions[230].nobytes=1;
    instructions[230].clock=12;
    instructions[230].ins_ptr=@selector(mov_isr:);
    
    
    instructions[231].hex_code=0XE7;
    instructions[231].mnemonic="MOV A,@R1";
    instructions[231].nobytes=1;
    instructions[231].clock=12;
    instructions[231].ins_ptr=@selector(mov_isr:);
    
    
    instructions[232].hex_code=0XE8;
    instructions[232].mnemonic="MOV A,R0";
    instructions[232].nobytes=1;
    instructions[232].clock=12;
    instructions[232].ins_ptr=@selector(mov_isr:);
    
    
    instructions[233].hex_code=0XE9;
    instructions[233].mnemonic="MOV A,R1";
    instructions[233].nobytes=1;
    instructions[233].clock=12;
    instructions[233].ins_ptr=@selector(mov_isr:);
    
    
    instructions[234].hex_code=0XEA;
    instructions[234].mnemonic="MOV A,R2";
    instructions[234].nobytes=1;
    instructions[234].clock=12;
    instructions[234].ins_ptr=@selector(mov_isr:);
    
    
    instructions[235].hex_code=0XEB;
    instructions[235].mnemonic="MOV A,R3";
    instructions[235].nobytes=1;
    instructions[235].clock=12;
    instructions[235].ins_ptr=@selector(mov_isr:);
    
    
    instructions[236].hex_code=0XEC;
    instructions[236].mnemonic="MOV A,R4";
    instructions[236].nobytes=1;
    instructions[236].clock=12;
    instructions[236].ins_ptr=@selector(mov_isr:);
    
    
    instructions[237].hex_code=0XED;
    instructions[237].mnemonic="MOV A,R5";
    instructions[237].nobytes=1;
    instructions[237].clock=12;
    instructions[237].ins_ptr=@selector(mov_isr:);
    
    
    instructions[238].hex_code=0XEE;
    instructions[238].mnemonic="MOV A,R6";
    instructions[238].nobytes=1;
    instructions[238].clock=12;
    instructions[238].ins_ptr=@selector(mov_isr:);
    
    
    instructions[239].hex_code=0XEF;
    instructions[239].mnemonic="MOV A,R7";
    instructions[239].nobytes=1;
    instructions[239].clock=12;
    instructions[239].ins_ptr=@selector(mov_isr:);
    
   /*
    instructions[240].hex_code=0XF0;
    instructions[240].mnemonic="MOVX @DPTR,A";
    instructions[240].nobytes=1;
    instructions[240].clock=24;
    instructions[240].ins_ptr=@selector(dummy_isr:);
    */
    
    instructions[240].hex_code=0XF0;
    instructions[240].mnemonic="MOVX @DPTR,A";
    instructions[240].nobytes=1;
    instructions[240].clock=24;
    instructions[240].ins_ptr=@selector(bx_mov_isr:);
    
    
    instructions[241].hex_code=0XF1;
    instructions[241].mnemonic="ACALL ";
    instructions[241].nobytes=2;
    instructions[241].clock=24;
    instructions[241].ins_ptr=@selector(acall_isr:);
    
    
    instructions[242].hex_code=0XF2;
    instructions[242].mnemonic="MOVX @R0,A";
    instructions[242].nobytes=1;
    instructions[242].clock=24;
    instructions[242].ins_ptr=@selector(mov_isr:);
    
    
    instructions[243].hex_code=0XF3;
    instructions[243].mnemonic="MOVX @R1,A";
    instructions[243].nobytes=1;
    instructions[243].clock=24;
    instructions[243].ins_ptr=@selector(mov_isr:);
    
    
    instructions[244].hex_code=0XF4;
    instructions[244].mnemonic="CPL A";
    instructions[244].nobytes=1;
    instructions[244].clock=12;
    instructions[244].ins_ptr=@selector(cpla_isr:);
    
    
    instructions[245].hex_code=0XF5;
    instructions[245].mnemonic="MOV ";
    instructions[245].nobytes=2;
    instructions[245].clock=12;
    instructions[245].ins_ptr=@selector(mov_isr:);
    
    
    instructions[246].hex_code=0XF6;
    instructions[246].mnemonic="MOV @R0,A";
    instructions[246].nobytes=1;
    instructions[246].clock=12;
    instructions[246].ins_ptr=@selector(mov_isr:);
    
    
    instructions[247].hex_code=0XF7;
    instructions[247].mnemonic="MOV @R1,A";
    instructions[247].nobytes=1;
    instructions[247].clock=12;
    instructions[247].ins_ptr=@selector(mov_isr:);
    
    
    instructions[248].hex_code=0XF8;
    instructions[248].mnemonic="MOV R0,A";
    instructions[248].nobytes=1;
    instructions[248].clock=12;
    instructions[248].ins_ptr=@selector(mov_isr:);
    
    
    instructions[249].hex_code=0XF9;
    instructions[249].mnemonic="MOV R1,A";
    instructions[249].nobytes=1;
    instructions[249].clock=12;
    instructions[249].ins_ptr=@selector(mov_isr:);
    
    
    instructions[250].hex_code=0XFA;
    instructions[250].mnemonic="MOV R2,A";
    instructions[250].nobytes=1;
    instructions[250].clock=12;
    instructions[250].ins_ptr=@selector(mov_isr:);
    
    
    instructions[251].hex_code=0XFB;
    instructions[251].mnemonic="MOV R3,A";
    instructions[251].nobytes=1;
    instructions[251].clock=12;
    instructions[251].ins_ptr=@selector(mov_isr:);
    
    
    instructions[252].hex_code=0XFC;
    instructions[252].mnemonic="MOV R4,A";
    instructions[252].nobytes=1;
    instructions[252].clock=12;
    instructions[252].ins_ptr=@selector(mov_isr:);
    
    
    instructions[253].hex_code=0XFD;
    instructions[253].mnemonic="MOV R5,A";
    instructions[253].nobytes=1;
    instructions[253].clock=12;
    instructions[253].ins_ptr=@selector(mov_isr:);
    
    
    instructions[254].hex_code=0XFE;
    instructions[254].mnemonic="MOV R6,A";
    instructions[254].nobytes=1;
    instructions[254].clock=12;
    instructions[254].ins_ptr=@selector(mov_isr:);
    
    
    instructions[255].hex_code=0XFF;
    instructions[255].mnemonic="MOV R7,A";
    instructions[255].nobytes=1;
    instructions[255].clock=12;
    instructions[255].ins_ptr=@selector(mov_isr:);
    
    
    instructions[256].hex_code=0X100;
    instructions[256].mnemonic=" ";
    instructions[256].nobytes=1;
    instructions[256].clock=12;
    instructions[256].ins_ptr=@selector(dummy_isr:);
    
    

    
    
    
    
   
    
    
}



-(void) load_hex_file: (char*)hex_file
{
		  
    unsigned char format,mode,*line,c;//,hex_val;
    unsigned int addr,hex_val;
    char inp_line[80]={0},str[5]={0};
    FILE *fp;
    int org=0,code,temp,count,type,code_byte,cksum_byte,chr,i=0;//,j=0;
    
    if((fp=fopen(hex_file,"r"))==NULL)
    {
        printf("\nError: File doesn't exist!!\n");
    }
    
    else
    {
        while(  (fgets(inp_line,80,fp)))// || chr!='\n\r')
        {
            sscanf(inp_line,":%2X%4X%2X",&count,&addr,&type);
            
            for(i=0;i<=2*(count-1);i+=2)
            {
                str[0]=inp_line[9+i];
                str[1]=inp_line[9+i+1];
                str[2]='\0';
                sscanf(str,"%2X",&hex_val);
                
                ROM[addr]=hex_val;
                addr++;
            }
	       }
        printf("\nHex file \'%s\' loaded!!\n",hex_file);
        
    }
    
    
    
    
    fclose(fp);
// BX--
		//  for(i=0;i<256;i++)   // ad hoc procedure to set all RAM
        //      RAM[i]=0;     // locations to zero before start...
		//  RAM[0x81]=7;  // in case of loadparm module...call it
				//only after this RAM is set...as
				//some registers may have to be changed..
    // better find out a new way out of this...
    //  soon!!!   -seemanta..  ;)
    
 
    
     D_i=0x54A8 ;
    D_t=false;
        
}


-(void) decode_and_simulate
{
    
  
    
    
    if(instructions[ROM[PC]].hex_code>=0x04 && instructions[ROM[PC]].hex_code<=0x0f)
        flag=1;  //flag=+1 means INC operation...
    if(instructions[ROM[PC]].hex_code>=0x14 && instructions[ROM[PC]].hex_code<=0x1f)
        flag=-1;  //flag=-1 means DEC operation...
    
    
    
    
   
    // uart hard line
    if( instructions[ROM[PC]].hex_code == 0xf5 && instructions[ ROM[PC+1] ].hex_code==0xc1 ){
        c1_line=1;
        
    }

    
   
    
   // printf("%x\n",PC);
   
    if(PC==D_i){
        
        
        
      //  printf("->out: %X",XDATA[0x11b1]);
        
       // printf("-->W: %x",XDATA[0x74]);
        
    
       /*

        printf("ROM=========\n\r");
        for(int i=0;i<1024*64;i++)
            printf("%X:%X  ",i,ROM[i]);
        printf("\n");
     
    
        printf("%X\r\n",A);
        
        
    
        printf("IRAM=========\n\r");
        for(int i=0;i<256;i++)
            printf("%X:%X  ",i,RAM[i]);
        printf("\n");
    
    
       
        printf("XRAM===========\n\r");
        for(int i=0;i<1024*64;i++)
            printf("%x: %x  ",i,XDATA[i]);
        printf("\n\n\n");
      
      */
        
        
        
        
  
        
        
         // while(1){}
      
    }
    
    
    
    
    
    
  
   

    
   
    [self performSelector: instructions[ROM[PC]].ins_ptr withObject:[NSNumber numberWithInteger: instructions[ROM[PC]].hex_code ]   ];
    
    
    
    
   
    
    
    
    PC++;
    
    
    
    
    

  
    
    if(([self count_no_of_ones: A]%2)==0)
        PSW=PSW & 0xfe;
    
    else if( ([self count_no_of_ones:A]%2)!=0  )
        PSW=PSW |0x01;
    
    
    
    
    
    
    
    
    
    
    
    
    
   }



-(void) nop_isr: (NSNumber*) op
{
   
    
    
    ;//printf("nop\n");
    
}


-(void) ajmp_isr:(NSNumber*) op
{
    
    
    int opcode= [op intValue];
    unsigned int tempPC,abs_addr,final_addr,curr_page_addr;
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
    // gotta find the current page and add the 11-bit address from
    //ajmp to get the absolute address within the current of the following
    // adress...
    
    switch(opcode)
    {
            
        case 0x01:
            abs_addr = 0x000 + ROM[++PC];  // these are the 11 bit abs addresses..
            break;
            
        case 0x21:
            abs_addr = 0x100 + ROM[++PC];
            break;
            
        case 0x41:
            abs_addr = 0x200 + ROM[++PC];
            break;
            
        case 0x61:
            abs_addr = 0x300 + ROM[++PC];
            break;
            
        case 0x81:
            abs_addr = 0x400 + ROM[++PC];
            break;
            
        case 0xa1:
            abs_addr = 0x500 + ROM[++PC];
            break;
            
        case 0xc1:
            abs_addr = 0x600 + ROM[++PC];
            break;
            
        case 0xe1:
            abs_addr = 0x700 + ROM[++PC];
            break;
    }
    
    
    tempPC = PC + 1;   //pointing to the next instruction...
    curr_page_addr =  tempPC & 0xf800;
    final_addr =   curr_page_addr + abs_addr;
    PC = final_addr - 1;  // to compensate for the extra 'PC++'...
    
    
    //opcode++; //just to remove warning for the time being....
    //;//printf("inside ajmp_isr!!\n\r");
}


-(void) sjmp_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
    
    if(ROM[PC+1] & 0x80)
    {
        PC = PC - (0xff - ROM[PC+1] + 1);
        //PC++;
        //PC--;
        //PC-=2;
    }
    else
    {
        PC = PC + ROM[PC+1];
        //PC++;
    }
    
    PC++; //so that offset is counted from next instruction..
    //PC--;
    //}
    
    //else
    // PC++;
    
    opcode++;    //just to remove warnings...
    
    
    
}





-(void) ljmp_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    int temp;
    ;//printf("%s %.2X%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
    ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
    temp=ROM[PC+1]*256+ROM[PC+2];
    //optimize this...
    PC=temp-1;
    //PC+=2;
    //PC=ROM[++PC]*256+ROM[++PC]-1;
    //;//printf("inside ljmp_isr!!\n\r");
    opcode++; //just to remove warning for the time being....
}

-(void) jmpdptr_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    //unsigned int tempDPTR;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
    PC = A + (DPH * 0x100 + DPL);
    PC--;     	   // to compensate for the 'PC++' at
    //the end of this function call..
    
    opcode++; //just to remove warning for the time being....
}

-(void) rr_isr:(NSNumber*) op
{
    unsigned char lsb;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
    int opcode= [op intValue];
    //truncA;
    lsb=A&1;
    A=A>>1;
    if(lsb==1)
        A=A|128;
    //;//printf("inside rr_isr!!\n\r");
    opcode++; //just to remove warning for the time being....
}

-(void) inc_dec_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    //;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    int current_bank=0;
    //RAM[0]=36; //just testting!!
    //RAM[1]=17;
    //switch (opcode)
    //{
    if(opcode==0x04 || opcode==0x14)             // INC or DEC A
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
        A+=flag;
        //break;
    }
    //case(0x05 || 0x15):
    if(opcode==0x05 || opcode==0x15)
    {
        ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        RAM[ROM[++PC]]+=flag;
        //break;
    }
    if(opcode==0x06 || opcode==0x16)
    {
        //case(0x06):
        ;//printf("%s \n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X \n\r",PC,ROM[PC]);
        current_bank=[self get_current_reg_bank ];   //confirm this from as51..
        RAM[RAM[current_bank*8]]+=flag;
        //break;
    }
    if(opcode==0x07 || opcode==0x17)
    {
        //case(0x07):
        ;//printf("%s \n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC]);
        current_bank=[self get_current_reg_bank ];
        RAM[RAM[current_bank*8+1]]+=flag;
        //break;
    }
    //default:
    //  break;
    
    //;//printf("inside inc_isr!!");
    if((opcode>=0x8 && opcode<=0x0f) || (opcode>=0x18 && opcode<=0x1f))
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X \n\r",PC,ROM[PC]);
        current_bank=[self get_current_reg_bank ];
        ;//printf("current reg bank is:%d",current_bank);
        if(flag==1)
            RAM[current_bank*8+(opcode-0x08)]++;
        else
            if(flag==-1)
                RAM[current_bank*8+(opcode-0x18)]--;
        
    }
    
}



-(void) jbc_isr:(NSNumber*) op{
    int opcode= [op intValue];
    ;//printf("%s %.2X,%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
    ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
    
    if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
	   {
           if( RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) ));
           {          //clearing bit before making the jump....
               RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] & ~(unsigned char) pow(2,(ROM[PC+1] % 8) );
               if(ROM[PC+2] & 0x80)
               {
                   PC = PC - (0xff - ROM[PC+2] + 1);
                   //PC++;
                   //PC--;
                   //PC-=2;
               }
               else
               {
                   PC = PC + ROM[PC+2];
                   //PC++;
               }
               
               //PC++; //so that offset is counted from next instruction..
               //PC++;
           }
           PC+=2;	//;//printf("bit is set!!\n\r");
           //RAM[0x20 + (ROM[PC + 1] /8)] =  RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) );
           
       }
    
    else   // for SFR bits.....
        if( ROM[PC+1] >0x7f )
        {
            //offset = ROM[PC+1] % 8;
            //loc = 8 * ( ROM[PC +1] /8 );
            //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
            //RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] | (unsigned char)(pow (2,ROM[PC+1] % 8));
            if(  RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))
            {           //clearing bit before making the jump....
                RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] & ~(unsigned char)(pow (2,ROM[PC+1] % 8));
                if(ROM[PC+2] & 0x80)
                {
                    PC = PC - (0xff - ROM[PC+2] + 1);
                    //PC++;
                    //PC--;
                    //PC-=2;
                }
                else
                {
                    PC = PC + ROM[PC+2];
                    //PC++;
                }
                
                //PC++; //so that offset is counted from next instruction..
                //PC++;
            }
            
            PC+=2;	      //;//printf("bit is set!!");
            
        }
    
    //PC+=2;
    opcode++; //just to remove warning for the time being....
    //;//printf("inside jbc_isr!!\n\r");
}

-(void) acall_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned char PCL,PCH;
    unsigned int tempPC,abs_addr,final_addr,curr_page_addr;
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
    // gotta find the current page and add the 11-bit address from
    //ajmp to get the absolute address within the current of the following
    // adress...
    
    switch(opcode)
    {
            
        case 0x11:
            abs_addr = 0x000 + ROM[++PC];  // these are the 11 bit abs addresses..
            break;
            
        case 0x31:
            abs_addr = 0x100 + ROM[++PC];
            break;
            
        case 0x51:
            abs_addr = 0x200 + ROM[++PC];
            break;
            
        case 0x71:
            abs_addr = 0x300 + ROM[++PC];
            break;
            
        case 0x91:
            abs_addr = 0x400 + ROM[++PC];
            break;
            
        case 0xb1:
            abs_addr = 0x500 + ROM[++PC];
            break;
            
        case 0xd1:
            abs_addr = 0x600 + ROM[++PC];
            break;
            
        case 0xf1:
            abs_addr = 0x700 + ROM[++PC];
            break;
    }
    
    
    tempPC = PC + 1;   //pointing to the next instruction...
    PCL = (unsigned char) (tempPC &0xff);
    PCH = (unsigned char) ((tempPC>>8)&0xff);
    RAM[++SP] = PCL;
    RAM[++SP] = PCH;
    
    curr_page_addr =  tempPC & 0xf800;
    final_addr =   curr_page_addr + abs_addr;
    PC = final_addr - 1;  // to compensate for the extra 'PC++'...
    //opcode++; //just to remove warning for the time being....
    //;//printf("inside acall_isr!!\n\r");
}

-(void) lcall_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned int tempPC;
    unsigned char PCL,PCH;
    ;//printf("%s %.2X%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
    ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
    
    
    
    
    tempPC = PC+3;
    PCL = (unsigned char) (tempPC &0xff);
    PCH = (unsigned char) ((tempPC>>8)&0xff);
    ;//printf("BX:lcall L> %X\n",PCL);
    ;//printf("BX:lcall H> %X\n",PCH);
    
    
    RAM[++SP] = PCL;
    RAM[++SP] = PCH;
  
    
   // ;//printf("BX:::%x  %x\n",PCH,PCL);
   // ;//printf("BX:::%x  %x\n",RAM[8],RAM[9]);
    PC = ROM[PC+2] +  ROM[PC+1] * 256 ;  //just hoping that msb first...
    PC--;  	//to compensate for the 'PC++' at the end of this isr..
    //PC+=2;
    opcode++; //just to remove warning for the time being....
    //;//printf("inside lcall_isr!!\n\r");
}


-(void) rrc_isr:(NSNumber*) op
{
    
    int opcode= [op intValue];
    unsigned char lsb;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    //truncA;
    lsb=A&1;
    A=A>>1;
    if( PSW & 0x80)
        A = A | 0x80;
    
    
    if(lsb==1)
        PSW = PSW | 128;
    if(lsb==0)
        PSW = PSW & 0x7f;
    
    //;//printf("inside rr_isr!!\n\r");
    opcode++; //just to remove warning for the time being....
    
    //opcode++; //just to remove warning for the time being....
    //;//printf("inside rrc_isr!!\n\r");
}


-(void) rlc_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned char msb;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    //truncA;
    msb=A & 0x80;
    A=A<<1;
    if( PSW & 0x80)
        A = A | 0x01;
    
    
    if(msb==0x80)
        PSW = PSW | 128;
    if(msb==0)
        PSW = PSW & 0x7f;
    
    //;//printf("inside rr_isr!!\n\r");
    opcode++; //just to remove warning for the time being....
    
    //opcode++; //just to remove warning for the time being....
    //;//printf("inside rrc_isr!!\n\r");
}




-(void) jb_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %.2X,%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
    ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
     
    if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
	   {
           if( RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) ));
           {          //clearing bit before making the jump....
               //RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] & ~(unsigned char) pow(2,(ROM[PC+1] % 8) );
               if(ROM[PC+2] & 0x80)
               {
                   PC = PC - (0xff - ROM[PC+2] + 1);
                   //PC++;
                   //PC--;
                   //PC-=2;
               }
               else
               {
                   PC = PC + ROM[PC+2];
                   //PC++;
               }
               
               //PC++; //so that offset is counted from next instruction..
               //PC++;
           }
           PC+=2;	//;//printf("bit is set!!\n\r");
           //RAM[0x20 + (ROM[PC + 1] /8)] =  RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) );
           
       }
    
    else   // for SFR bits.....
        if( ROM[PC+1] >0x7f )
        {
            //offset = ROM[PC+1] % 8;
            //loc = 8 * ( ROM[PC +1] /8 );
            //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
            //RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] | (unsigned char)(pow (2,ROM[PC+1] % 8));
            if(  RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))
            {           //clearing bit before making the jump....
                //RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] & ~(unsigned char)(pow (2,ROM[PC+1] % 8));
                if(ROM[PC+2] & 0x80)
                {
                    PC = PC - (0xff - ROM[PC+2] + 1);
                    //PC++;
                    //PC--;
                    //PC-=2;
                }
                else
                {
                    PC = PC + ROM[PC+2];
                    //PC++;
                }
                
                //PC++; //so that offset is counted from next instruction..
                //PC++;
            }
            
            PC+=2;	      //;//printf("bit is set!!");
            
        }
    opcode++; //just to remove warning for the time being....
    //;//printf("inside jbc_isr!!\n\r");
    
    //PC+=2;
    
    //opcode++; //just to remove warning for the time being....
    //;//printf("inside jb_isr!!\n\r");
}

-(void) jnb_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %.2X,%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
    ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
     
    if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
	   {
           if(! (RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) ))   );
           {          //clearing bit before making the jump....
               //RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] & ~(unsigned char) pow(2,(ROM[PC+1] % 8) );
               if(ROM[PC+2] & 0x80)
               {
                   PC = PC - (0xff - ROM[PC+2] + 1);
                   //PC++;
                   //PC--;
                   //PC-=2;
               }
               else
               {
                   PC = PC + ROM[PC+2];
                   //PC++;
               }
               
               //PC++; //so that offset is counted from next instruction..
               //PC++;
           }
           PC+=2;	//;//printf("bit is set!!\n\r");
           //RAM[0x20 + (ROM[PC + 1] /8)] =  RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) );
           
           //PC+=2;
       }
    
    else   // for SFR bits.....
        if( ROM[PC+1] >0x7f )
        {
            //offset = ROM[PC+1] % 8;
            //loc = 8 * ( ROM[PC +1] /8 );
            //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
            //RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] | (unsigned char)(pow (2,ROM[PC+1] % 8));
            if(! (RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))  )
            {           //clearing bit before making the jump....
                //RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] & ~(unsigned char)(pow (2,ROM[PC+1] % 8));
                if(ROM[PC+2] & 0x80)
                {
                    PC = PC - (0xff - ROM[PC+2] + 1);
                    //PC++;
                    //PC--;
                    //PC-=2;
                }
                else
                {
                    PC = PC + ROM[PC+2];
                    //PC++;
                }
                
                //PC++; //so that offset is counted from next instruction..
                //PC++;
            }
            
            //;//printf("bit is set!!");
            PC+=2;
        }
    opcode++; //just to remove warning for the time being....
    //;//printf("inside jbc_isr!!\n\r");
    
}


-(void) jc_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    if( PSW & 0x80 )
    {
        if(ROM[PC+1] & 0x80)
        {
            PC = PC - (0xff - ROM[PC+1] + 1);
            //PC++;
            //PC--;
            //PC-=2;
        }
        else
        {
            PC = PC + ROM[PC+1];
            //PC++;
        }
        
        PC++; //so that offset is counted from next instruction..
        //PC--;
    }
    
    else
        PC++;
    
    opcode++;    //just to remove warnings...
    
}


-(void) jnc_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    if( !(PSW & 0x80) )
    {
        if(ROM[PC+1] & 0x80)
        {
            PC = PC - (0xff - ROM[PC+1] + 1);
            //PC++;
            //PC--;
            //PC-=2;
        }
        else
        {
            PC = PC + ROM[PC+1];
            //PC++;
        }
        
        PC++; //so that offset is counted from next instruction..
        //PC--;
    }
    
    else
        PC++;
    
    opcode++;    //just to remove warnings...
    
    
    
    
    
}



-(void) ret_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned char PCL,PCH;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    PCH = RAM[SP--];
    
    ;//printf("BX>PCH:%d\n",PCH);
    
    PCL = RAM[SP--];
    
    ;//printf("BX>PCL:%d\n",PCL);

    
    
    
    PC = PCH * 256 + PCL;
    PC--;    //to compensate for the 'PC++' after this function...
    opcode++; //just to remove warning for the time being....
    //;//printf("inside ret_isr!!\n\r");
}


-(void) reti_isr:(NSNumber*) op
{   int opcode= [op intValue];                       // same as ret_isr....enable interrupts later..
    unsigned char PCL,PCH;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    PCH = RAM[SP--];
    PCL = RAM[SP--];
    PC = PCH * 256 + PCL;
    PC--;    //to compensate for the 'PC++' after this function...
    opcode++; //just to remove warning for the time being....
    //;//printf("inside ret_isr!!\n\r");
}


-(void) rl_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned char msb;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    msb=A&128;
    A=A<<1;
    if(msb==128)
        A=A|1;
    //;//printf("inside rl_isr!!\n\r");
    opcode++; //just to remove warning for the time being....
}


-(void) incdptr_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned int tempDPTR;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    tempDPTR = DPH *0x100 + DPL;
    tempDPTR++;
    
    DPL = (unsigned char)(tempDPTR & 0x00ff);
    DPH = (unsigned char)( (tempDPTR >> 8) & 0x00ff);
    opcode++; //just to remove warning for the time being....
}

-(void) mulab_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned int result;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    result = A * B;
    A = (unsigned char) (result & 0x00ff );
    B = (unsigned char) ( (result>>8) & 0x00ff );
    if(result > 0xff)
        PSW = PSW | 0x04; // setting OV flag if result > 0xff...
    
    else
        PSW = PSW & 0xfb;  //else resetting OV flag...
    
    
    PSW = PSW & 0x7f;    //resetting CY flag...unconditionally
    
    opcode++;    //just to remove warnings...
    
}

-(void) divab_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned char num_r, denom_r;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    num_r = A;
    denom_r = B;
    
    if(B!=0)
    {
        A = num_r / denom_r;
        B = num_r % denom_r;
        PSW = PSW & 0xfb ; // resetting OV flag if denom_r!=0 and division
        // proceeds....
    }
    else
        PSW = PSW | 0x04; // setting OV flag if B=0...
    
    
    PSW = PSW % 0x7f;  //resetting CY flag...unconditionally
    
    opcode++;    //just to remove warnings...
}


-(void) add_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    int current_bank,mycarry=0,tempA;
    //;//printf("%s%x\n\r",instructions[ROM[PC]].mnemonic);
    //;//printf("%.4x:%.2x\n\r",PC,ROM[PC]);
    if(opcode>=0x34 && opcode <=0x3f )
        mycarry=((PSW & 0x80)>>7);
    else
        if(opcode >=0x24 && opcode <=0x2f)
            mycarry=0;
    
    if(opcode==0x24 || opcode==0x34)
    {
        
        tempA=A;
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        tempA=A+ROM[PC+1]+mycarry;
        //set_flags(tempA,A,ROM[PC+1],0xc5);
     //   [self set_flags:tempA OP1:A OP2:ROM[PC+1] MASK:0xc5];
        [self add_set_flags: A OP2:ROM[PC+1]  ];
        
        
        
        A=tempA&0x00ff;
        /*      if(A & 0xff00)
         A=A & 0x00ff;   // to check for 9 bit or more values and
         //truncate the extra bits..     */
        PC++;
        
    }
    else
        if(opcode==0x25 || opcode==0x35)
        {
            ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
            ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
             
            tempA=A+RAM[ROM[PC+1]]+mycarry;
            
            //set_flags(tempA,A,RAM[ROM[PC+1]],0xc5);
          //  [self set_flags:tempA OP1:A OP2:RAM[ROM[PC+1]] MASK:0xc5];
            [self add_set_flags:A OP2:RAM[ROM[PC+1]]];
            
            A=tempA&0x00ff;
            PC++;
            
        }
        else
            if(opcode==0x26 || opcode==0x36)
            {
                ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                 
                current_bank=[self get_current_reg_bank ];
                tempA=A+RAM[RAM[current_bank*8]]+mycarry;
                
                //set_flags(tempA,A,RAM[RAM[current_bank*8]],0xc5);
             //   [self set_flags:tempA OP1:A OP2:RAM[RAM[current_bank*8]] MASK:0xc5];
                [self add_set_flags:A OP2:RAM[RAM[current_bank*8]]];
                A=tempA&0x00ff;
                
            }
            else
                if(opcode==0x27 || opcode==0x37)
                {
                    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                     
                    current_bank=[self get_current_reg_bank ];
                    tempA=A+RAM[RAM[current_bank*8+1]]+mycarry;
                    
                  //  set_flags(tempA,A,RAM[RAM[current_bank*8+1]],0xc5);
                 //   [self set_flags:tempA OP1:A OP2:RAM[RAM[current_bank*8+1]] MASK:0xc5];
                    [self add_set_flags:A OP2:RAM[RAM[current_bank*8+1]]];
                    
                    A=tempA&0x00ff;
                    
                    
                }
                else
                    if(   ((opcode>=0x28) && (opcode<=0x2f)) || ((opcode>=0x38) && (opcode<=0x3f))   )
                    {
                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                         
                        current_bank=[self get_current_reg_bank ];
                        
                        //if(opcode>=0x28) && (opcode<=2
                        
                        tempA=A+RAM[current_bank*8+(   (opcode>=0x28)&&(opcode<=0x2f)? \
                                                    (opcode-0x28 ):( opcode-0x38 )  )  ]+mycarry;
                        
                      //  set_flags(tempA,A,RAM[current_bank*8+(   (opcode>=0x28)&&(opcode<=0x2f)? (opcode-0x28 ):( opcode-0x38 )  )  ],0xc5);
                     //   [self set_flags:tempA OP1:A OP2:RAM[current_bank*8+(   (opcode>=0x28)&&(opcode<=0x2f)? (opcode-0x28 ):( opcode-0x38 )  )  ] MASK:0xc5];
                        [self add_set_flags:A OP2:RAM[current_bank*8+(   (opcode>=0x28)&&(opcode<=0x2f)? (opcode-0x28 ):( opcode-0x38 )  )  ]];
                        A=tempA&0x00ff;
                        
                        
                    }
    // extracting the correct reg from the opcode information.....
    //;//printf("inside add_isr!!\n\r");
    
		  //set_flags(tempA,A,RAM[current_bank*8+(   (opcode>=0x28)&&(opcode<=0x2f)? (opcode-0x28 ):( opcode-0x38 )  )  ],0xc5);
		  //A=tempA&0x00ff;
    
    
}


-(void) daa_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    
    if(   (A & 0x0f)>9 || ( PSW & 0x04)   )
        A = A + 0x06;
    
    
    if (	 ((A>>4) & 0x0f)>9 || ( PSW & 0x80)  )
        A = A + 0x60;
    
    opcode++; //just to remove warning for the time being....
    
}


-(void) subb_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    int current_bank,mycarry;
    unsigned char tmp;
    
    
    
    
    if(opcode==0x94)// || opcode==0x34)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        
        mycarry= PSW>>7;
        
        tmp=ROM[++PC];
        
        [self sub_set_flags:A OP2: tmp+mycarry];
        A-=tmp+mycarry;
        
        
    }
    else
        if(opcode==0x95)// || opcode==0x35)
        {
            ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
            ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
            
            //tempA=A+RAM[ROM[++PC]]+mycarry;
            //set_flags(tempA,A,tempB,0xc5);
            
             mycarry= PSW>>7;
            
            tmp=RAM[ROM[++PC]];
            
            [self sub_set_flags:A OP2: tmp+mycarry];
            A-=tmp+mycarry;
          
          
          
        }
        else
            if(opcode==0x96)// || opcode==0x36)
            {
                ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                
                mycarry= PSW>>7;
                current_bank = [self get_current_reg_bank ];
                tmp=RAM[RAM[current_bank*8]];
                
                [self sub_set_flags:A OP2: tmp+mycarry];
                A-=tmp+mycarry;
                 
                
            }
            else
                if(opcode==0x97)// || opcode==0x37)
                {
                    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                    
                    mycarry= PSW>>7;
                    current_bank=[self get_current_reg_bank ];
                    tmp=RAM[RAM[current_bank * 8 + 1]];
                    
                    [self sub_set_flags:A OP2: tmp+mycarry];
                    A-=tmp+mycarry;
                    
                }
                else
                    if(   ((opcode>=0x98) && (opcode<=0x9f))  )// || ((opcode>=0x38) && (opcode<=0x3f))   )
                    {
                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                        
                        mycarry= PSW>>7;
                        current_bank=[self get_current_reg_bank ];
                        tmp=RAM[ current_bank * 8 + (opcode-0x98)];
                        
                        [self sub_set_flags:A OP2: tmp+mycarry];
                        A-=tmp+mycarry;
                        
                        
                        
                    }
    // extracting the correct reg from the opcode information.....
    //;//printf("inside add_isr!!\n\r");
		  //set_flags(tempA,0xc5);
		  //A=tempA&0x00ff;
}

-(void) clra_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    A = A ^ A; 	       // clearing all the bits of the accumulator...
    opcode++;  		//just to remove warning...
}


-(void) cpla_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    A = ~A;          // toggling all the bits of the accumulator...
    opcode++;  		//just to remove warning...
}

-(void) swapa_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    int count=0;
    unsigned char lsb;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    
    
    for(;count<4;count++)    // iterate 4 times to swap nibbles...
    {
        lsb=A&1;
        A=A>>1;        // rotating right 4 times to swap ls-nibble and
        if(lsb==1)     // rs-nibble..................
            A=A|128;
    }
    opcode++; //just to remove warning for the time being....
}


-(void) setb_isr:(NSNumber*) op
{
    //int loc,bit,offset;
    //unsigned char mask;
    int opcode= [op intValue];
    if(opcode==0xd3)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        PSW=PSW | 128;  //setting carry flag for 'SETB C' instruction..
    }
    else
        if(opcode==0xd2)
        {
            ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
            ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
             
            //offset = ROM[PC+1] / 8;
            //loc = 0x20 + offset;
            //bit = ROM[PC+1] % 8;
            //mask = (unsigned char) pow(2,bit);
            //RAM[loc] = RAM[loc] | mask;
            
            //RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] | (unsigned char) pow(2,(ROM[PC+1] % 8) );
            
            if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
                RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] | (unsigned char) pow(2,(ROM[PC+1] % 8) );
            else   // for SFR bits.....
                if( ROM[PC+1] >0x7f )
                {
                    //offset = ROM[PC+1] % 8;
                    //loc = 8 * ( ROM[PC +1] /8 );
                    //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
                    RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] | (unsigned char)(pow (2,ROM[PC+1] % 8));
                    
                }
            
            PC++;
        }
    opcode++; //just to remove warning for the time being....
    
}



-(void) clr_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    //int loc,bit,offset;
    //unsigned char mask;
    if(opcode==0xc3)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        PSW=PSW & 127;  //setting carry flag for 'SETB C' instruction..
    }
    else
        if(opcode==0xc2)
        {
            ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
            ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
             
            //offset = ROM[PC+1] / 8;
            //loc = 0x20 + offset;
            //bit = ROM[PC+1] % 8;
            //mask = (unsigned char) pow(2,bit);
            //RAM[loc] = RAM[loc] | mask;
            if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
                RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] & ~(unsigned char) pow(2,(ROM[PC+1] % 8) );
            else   // for SFR bits.....
                if( ROM[PC+1] >0x7f )
                {
                    //offset = ROM[PC+1] % 8;
                    //loc = 8 * ( ROM[PC +1] /8 );
                    //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
                    RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] & ~(unsigned char)(pow (2,ROM[PC+1] % 8));
                    
                }
            
            
            PC++;
        }
    opcode++; //just to remove warning for the time being....
    
}



-(void) cpl_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    //int loc,bit,offset;
    //unsigned char mask;
    if(opcode==0xb3)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        PSW=PSW ^ 128;  //setting carry flag for 'SETB C' instruction..
    }
    else
        if(opcode==0xb2)
        {
            ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
            ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
             
            //offset = ROM[PC+1] / 8;
            //loc = 0x20 + offset;
            //bit = ROM[PC+1] % 8;
            //mask = (unsigned char) pow(2,bit);
            //RAM[loc] = RAM[loc] | mask;
            
            //RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] ^ (unsigned char) pow(2,(ROM[PC+1] % 8) );
            
            if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
                RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)]  ^ (unsigned char) pow(2,(ROM[PC+1] % 8) );
            else   // for SFR bits.....
                if( ROM[PC+1] >0x7f )
                {
                    //offset = ROM[PC+1] % 8;
                    //loc = 8 * ( ROM[PC +1] /8 );
                    //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
                    RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )]  ^ (unsigned char)(pow (2,ROM[PC+1] % 8));
                    
                }
            
            PC++;
        }
    opcode++; //just to remove warning for the time being....
    
}






-(void) dummy_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    opcode++; //just to remove warning for the time being....
    
    
    ;//printf("%X inside dummy_isr",opcode);
}



-(void) orl_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    // for debugging purposes...
    //;//printf("inside orl isr!!\n\r");
    int current_bank;
    
    /*   if(opcode==0xa0 || opcode==0x72)
     
     {
     ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
     ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
     RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] ^ (unsigned char) pow(2,(ROM[PC+1] % 8) );
     PC++;
     
     
     
     }    */
    
    
    if(opcode==0x42)
    {
        ;//printf("%s %.2X,A\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        RAM[ROM[PC+1]] = RAM[ROM[PC+1]] | A ;
        //   RAM[ROM[PC]]  = A | ROM[PC+1];
        PC++;
        //RAM[ROM[PC+1]]=RAM[ROM[PC+2]];
        
    }
    
    if(opcode==0x43)
    {
        ;//printf("%s %.2X,#%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
        ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
         
        RAM[ROM[PC+1]] = RAM[ROM[PC+1]] | ROM[PC+2];
        PC+=2;
        
    }
    if(opcode==0x44)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        A = ROM[++PC] | A;    //can use ++PC here....used only
    }  			//in one side of equal sign..
    
    if(opcode==0x45)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
         
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        A = A | RAM[ROM[++PC]];
        
    }
    if(opcode==0x46)
    {
        //;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        //;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        
        current_bank=[self get_current_reg_bank ];
        A = A | RAM[RAM[current_bank*8]];
    }
    
    if(opcode==0x47)
    {
        //;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        //;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        
        current_bank=[self get_current_reg_bank ];
        A = A | RAM[RAM[current_bank*8+1]];
    }
    
    if(opcode>=0x48 && opcode<=0x4f)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        current_bank=[self get_current_reg_bank ];
        A = A | RAM[current_bank*8+(opcode-0x48)];
    }
    
}

-(void) orlc_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    if(opcode==0x72)
    {
        
        
        if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
        {
            if( RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) ))
                PSW = PSW | 0x80;
        }
        else
            if( ROM[PC+1] >0x7f )
                if(  RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))
                    PSW = PSW | 0x80;
    }
    
    else
        if(opcode==0xa0)
        {
            
            if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
            {
                if(! (RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) ))  )
                    PSW = PSW | 0x80;
            }
            else
                if( ROM[PC+1] >0x7f )
                    if(! (RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))  )
                        PSW = PSW | 0x80;
            
            
        }
    
    
    
    PC++;
    opcode++; //just to remove warning for the time being....
    
}


-(void) anlc_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    
    if(opcode==0x82)
    {
        
        if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
        {
            if(! (RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8)))  )
                PSW = PSW & 0x7f;
        }
        else
            if( ROM[PC+1] >0x7f )
                if(! (RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))  )
                    PSW = PSW & 0x7f;
    }
    
    else
        if(opcode==0xb0)
        {
            if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
            {
                if( RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8))  )
                    PSW = PSW & 0x7f;
            }
            else
                if( ROM[PC+1] >0x7f )
                    if( RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8))  )
                        PSW = PSW & 0x7f;
            
        }
    
    
    
    
    
    PC++;
    opcode++; //just to remove warning for the time being....
    
}



-(void) anl_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    // for debugging purposes...
    //;//printf("inside orl isr!!\n\r");
    int current_bank;
    if(opcode==0x52)
    {
        ;//printf("%s %.2X,A\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        RAM[ROM[PC+1]] = RAM[ROM[PC+1]] & A ;
        //   RAM[ROM[PC]]  = A | ROM[PC+1];
        PC++;
        //RAM[ROM[PC+1]]=RAM[ROM[PC+2]];
        
    }
    
    if(opcode==0x53)
    {
        ;//printf("%s %.2X,#%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
        ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
         
        RAM[ROM[PC+1]] = RAM[ROM[PC+1]] & ROM[PC+2];
        PC+=2;
        
    }
    if(opcode==0x54)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        A = ROM[++PC] & A;    //can use ++PC here....used only
    }  			//in one side of equal sign..
    
    if(opcode==0x55)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        A = A & RAM[ROM[++PC]];
        
    }
    if(opcode==0x56)
    {
        //;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        //;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        
        current_bank=[self get_current_reg_bank ];
        A = A & RAM[RAM[current_bank*8]];
    }
    
    if(opcode==0x57)
    {
        //;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        //;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        
        current_bank=[self get_current_reg_bank ];
        A = A & RAM[RAM[current_bank*8+1]];
    }
    
    if(opcode>=0x58 && opcode<=0x5f)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        current_bank=[self get_current_reg_bank ];
        A = A & RAM[current_bank*8+(opcode-0x58)];
    }
    
    
    
    
}


-(void) xrl_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    // for debugging purposes...
    //;//printf("inside orl isr!!\n\r");
    int current_bank;
    if(opcode==0x62)
    {
        ;//printf("%s %.2X,A\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        RAM[ROM[PC+1]] = RAM[ROM[PC+1]] ^ A ;
        //   RAM[ROM[PC]]  = A | ROM[PC+1];
        PC++;
        //RAM[ROM[PC+1]]=RAM[ROM[PC+2]];
        
    }
    
    if(opcode==0x63)
    {
        ;//printf("%s %.2X,#%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
        ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
         
        RAM[ROM[PC+1]] = RAM[ROM[PC+1]] ^ ROM[PC+2];
        PC+=2;
        
    }
    if(opcode==0x64)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        A = ROM[++PC] ^ A;    //can use ++PC here....used only
    }  			//in one side of equal sign..
    
    if(opcode==0x65)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        A = A ^ RAM[ROM[++PC]];
        
    }
    if(opcode==0x66)
    {
        //;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        //;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        
        current_bank=[self get_current_reg_bank ];
        A = A ^ RAM[RAM[current_bank*8]];
    }
    
    if(opcode==0x67)
    {
        //;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        //;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        
        current_bank=[self get_current_reg_bank ];
        A = A ^ RAM[RAM[current_bank*8+1]];
    }
    
    if(opcode>=0x68 && opcode<=0x6f)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        current_bank=[self get_current_reg_bank ];
        A = A ^ RAM[current_bank*8+(opcode-0x68)];
    }
    
}

-(void) push_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    opcode++;    //just to remove warnings...
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    RAM[++SP] = RAM[ROM[++PC]];
}


-(void) pop_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    opcode++;    //just to remove warnings...
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    RAM[ROM[++PC]] =  RAM[SP--];
}

-(void) djnz_isr:(NSNumber*) op
{
    int current_bank;
    int opcode= [op intValue];
    if(opcode>=0xd8 && opcode<=0xdf)
    {
        ;//printf("%s%X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        current_bank=[self get_current_reg_bank ];
        if( (--RAM[current_bank*8+(opcode-0xd8)])!=0 )
        {
            if(ROM[PC+1] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+1] + 1);
                //PC++;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+1];
                //PC++;
            }
            
            PC++;
        }
        
        else
            PC++;
    }
    
    else
    {
        ;//printf("%s %.2X,#%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
        ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
         
        
        if( (--RAM[ROM[PC+1]])!=0 )
        {
            if(ROM[PC+2] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+2] + 1);
                //PC+=2;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+2];
                //PC+=2;
            }
            
            PC+=2;
        }
        
        
        else
            PC+=2;
    }
}


-(void) jz_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    if( A==0 )
    {
        if(ROM[PC+1] & 0x80)
        {
            PC = PC - (0xff - ROM[PC+1] + 1);
            //PC++;
            //PC--;
            //PC-=2;
        }
        else
        {
            PC = PC + ROM[PC+1];
            //PC++;
        }
        
        PC++; //so that offset is counted from next instruction..
        //PC--;
    }
    
    else
        PC++;
    
    opcode++;    //just to remove warnings...
}


-(void) jnz_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
     
    if( A!=0 )
    {
        if(ROM[PC+1] & 0x80)
        {
            PC = PC - (0xff - ROM[PC+1] + 1);
            //PC++;
            //PC--;
            //PC-=2;
        }
        else
        {
            PC = PC + ROM[PC+1];
            //PC++;
        }
        
        PC++; //so that offset is counted from next instruction..
        //PC--;
    }
    
    else
        PC++;
    
    opcode++;    //just to remove warnings...
}



-(void) cjne_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    int current_bank;
    ;//printf("%s%.2X,%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
    ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
     
    //;//printf("inside cjne_isr!!\n\r"); for debugging...
    
    if(opcode==0xb4)
    {
        if(A<ROM[PC+1])
            PSW = PSW | 128;
        else
            if(A>ROM[PC+1])
                PSW = PSW & 127;
        
        if(A!=ROM[PC+1])
        {
            if(ROM[PC+2] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+2] + 1);
                //PC++;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+2];
                //PC++;
            }
            
        }
        
        
        
    }
    if(opcode==0xb5)
    {
        
        if(A<RAM[ROM[PC+1]])
            PSW = PSW | 128;
        else
            if(A>RAM[ROM[PC+1]])
                PSW = PSW & 127;
        
        if(A!=RAM[ROM[PC+1]])
        {
            if(ROM[PC+2] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+2] + 1);
                //PC++;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+2];
                //PC++;
            }
            
        }
        
        
    }
    
    
    
    if(opcode==0xb6)
    {
        
        current_bank = [self get_current_reg_bank ];
        //;//printf("%x  %x %x\n\r",ROM[PC],ROM[PC+1],ROM[PC+2]);
        //;//printf("%x  %x  %x\n\r",RAM[current_bank*8],RAM[RAM[current_bank*8]],RAM[ROM[PC+1]]);
        //for debugging....
        if(RAM[RAM[current_bank*8]] < ROM[PC+1])
            PSW = PSW | 128;      //setting caryy flag...
        else
            if(RAM[RAM[current_bank*8]] > ROM[PC+1])
                PSW = PSW & 127;      //resetting carry flag...
        
        if(RAM[RAM[current_bank*8]] !=  ROM[PC+1])
        {
            if(ROM[PC+2] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+2] + 1);
                //PC++;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+2];
                //PC++;
            }
            
        }
        
        
    }
    
    
    if(opcode==0xb7)
    {
        
        current_bank = [self get_current_reg_bank ];
        if(RAM[RAM[current_bank*8+1]] < ROM[PC+1])
            PSW = PSW | 128;      //setting caryy flag...
        else
            if(RAM[RAM[current_bank*8+1]] > ROM[PC+1])
                PSW = PSW & 127;      //resetting carry flag...
        
        if(RAM[RAM[current_bank*8+1]] != ROM[PC+1])
        {
            if(ROM[PC+2] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+2] + 1);
                //PC++;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+2];
                //PC++;
            }
            
        }
        
        
    }
    
    if(opcode>=0xb8 && opcode<=0xbf)
    {
        
        current_bank = [self get_current_reg_bank ];
        //;//printf("%x  %x\n\r",RAM[current_bank*8 + (opcode-0xb8)],ROM[PC+1]);
        if(RAM[current_bank*8 + (opcode-0xb8)] < ROM[PC+1])
            PSW = PSW | 128;      //setting caryy flag...
        else
            if(RAM[current_bank*8 + (opcode-0xb8)] > ROM[PC+1])
                PSW = PSW & 127;      //resetting carry flag...
        
        if(RAM[current_bank*8 + (opcode-0xb8) ] != ROM[PC+1])
        {
            if(ROM[PC+2] & 0x80)
            {
                PC = PC - (0xff - ROM[PC+2] + 1);
                //PC++;
                //PC--;
                //PC-=2;
            }
            else
            {
                PC = PC + ROM[PC+2];
                //PC++;
            }
            
        }
        
    }
    
    PC+=2;
    
}


-(void) xch_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    int tempVar,current_bank;
    if(opcode==0xc5)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
         
        tempVar = A;
        A = RAM[ROM[PC+1]];
        RAM[ROM[PC+1]] = tempVar;
        PC++;
        
    }
    
    
    if(opcode==0xc6)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        current_bank = [self get_current_reg_bank ];
        tempVar = A;
        A = RAM[RAM[current_bank*8]];
        RAM[RAM[current_bank*8]] = tempVar;
    }
    
    if(opcode==0xc7)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        current_bank = [self get_current_reg_bank ];
        tempVar = A;
        A = RAM[RAM[current_bank*8 + 1]];
        RAM[RAM[current_bank*8 + 1]] = tempVar;
    }
    
    
    if(opcode>=0xc8 && opcode<=0xcf)
    {
        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
         
        current_bank = [self get_current_reg_bank ];
        tempVar = A;
        A = RAM[current_bank*8 + (opcode-0xc8) ];
        RAM[current_bank*8 + (opcode-0xc8) ] = tempVar;
    }
    
}


-(void) xchd_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    // to swap lower nibbles between Acc and indirect memory....
    unsigned char lower_nibble,current_bank,tempA;
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
     
    current_bank = [self get_current_reg_bank ];
    if(opcode==0xd6)
    {
        lower_nibble = ( RAM[RAM[current_bank*8]] & 0x0f ) ;
        
        tempA = A;
        A = (A & 0xf0) | lower_nibble;
        
        lower_nibble = tempA & 0x0f;
        RAM[RAM[current_bank*8]] = (RAM[RAM[current_bank*8]] & 0xf0) | lower_nibble;
        
    }
    
    else
        if(opcode==0xd7)
        {
            lower_nibble = ( RAM[RAM[current_bank*8+1]] & 0x0f );
            
            tempA = A;
            A = (A & 0xf0) | lower_nibble;
            
            lower_nibble = tempA & 0x0f;
            RAM[RAM[current_bank*8+1]] = (RAM[RAM[current_bank*8+1]] & 0xf0) | lower_nibble;
            
        }
    //tempA = A;
    //A = (A & 0xf0) | lower_nibble;
    
    //opcode++; //just to remove warning for the time being....
}



-(void)bx_mov_isr:(NSNumber*) op
{
    
    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
    
    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
    
    int dptr= RAM[0x82]+(RAM[0x83]<<8);
    
    XDATA[dptr] = A ;





}




-(void) mov_isr:(NSNumber*) op
{
    int opcode= [op intValue];
    unsigned int current_bank,tempDPTR;
    if(opcode==0x74)
    {
        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
        
        A=ROM[++PC];
    }
    else
        if(opcode==0x75)
        {
            ;//printf("%s %.2X,#%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
            ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
             
            RAM[ROM[PC+1]]=ROM[PC+2];
            PC+=2;
        }
        else
            if(opcode==0x76)
            {
                ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                 
                current_bank=[self get_current_reg_bank ];
                RAM[RAM[current_bank*8]]=ROM[++PC];
            }
            else
                if(opcode==0x77)
                {
                    ;//printf("%s @R1,#%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                     
                    current_bank=[self get_current_reg_bank ];
                    RAM[RAM[current_bank*8+1]]=ROM[++PC];
                }
                else
                    if(opcode>=0X78 && opcode<=0x7f)
                    {
                        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                         
                        current_bank=[self get_current_reg_bank ];
                        RAM[current_bank*8+(opcode-0x78)]=ROM[++PC];
                        
                    }
                    else
                        if(opcode==0x85)
                        {
                            ;//printf("%s %.2X,%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+2],ROM[PC+1]);
                            ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
                             
                            RAM[ROM[PC+2]]=RAM[ROM[PC+1]];
                            PC+=2;
                        }
                        else
                            if(opcode==0x86)
                            {
                                ;//printf("%s%.2X,@R0\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                 
                                current_bank=[self get_current_reg_bank ];
                                RAM[ROM[++PC]]=RAM[RAM[current_bank*8]];
                                
                            }
                            else
                                if(opcode==0x87)
                                {
                                    ;//printf("%s%.2X,@R0\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                     
                                    current_bank=[self get_current_reg_bank ];
                                    RAM[ROM[++PC]]=RAM[RAM[current_bank*8+1]];
                                    
                                }
                                else
                                    if(opcode>=0x88 && opcode<=0x8f)
                                    {
                                        ;//printf("%s%.2X,R%d\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],opcode-0x88);
                                        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                         
                                        current_bank=[self get_current_reg_bank ];
                                        RAM[ROM[++PC]]=RAM[current_bank*8+(opcode-0x88)];
                                        
                                        
                                    }
                                    else
                                        if(opcode==0x90)
                                        {
                                            
                                            ;//printf("%s%.2X%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1],ROM[PC+2]);
                                            ;//printf("%.4X:%.2X %.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1],ROM[PC+2]);
                                             
                                            DPH = ROM[PC+1];
                                            DPL = ROM[PC+2];
                                            //DPTR=ROM[PC+1]*256+ROM[PC+2];
                                            PC+=2;
                                        }
    
                                        else
                                            if(opcode==0x92)    // MOV dest bit,src bit instruction
                                            {
                                                ;//printf("%s%.2X,C\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                 
                                                //RAM[ROM[++PC]]=A;
                                                
                                                if(PSW & 0x80)  // means carry set if true..
                                                {
                                                    //set addressed bit...
                                                    if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
                                                        RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] | (unsigned char) pow(2,(ROM[PC+1] % 8) );
                                                    else   // for SFR bits.....
                                                        if( ROM[PC+1] >0x7f )
                                                        {
                                                            //offset = ROM[PC+1] % 8;
                                                            //loc = 8 * ( ROM[PC +1] /8 );
                                                            //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
                                                            RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] | (unsigned char)(pow (2,ROM[PC+1] % 8));
                                                            
                                                        }
                                                }
                                                
                                                else
                                                    if( !(PSW &0x80)  )  //means carry is clear...
                                                    {
                                                        //clear addressed bit...
                                                        if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
                                                            RAM[0x20 + (ROM[PC + 1] /8)] = RAM[0x20 + (ROM[PC + 1] /8)] & ~(unsigned char) pow(2,(ROM[PC+1] % 8) );
                                                        /*look out for opcode=0x83 and 0x93*/   else   // for SFR bits.....
                                                        /*down below..abt 137 lines below..*/ if( ROM[PC+1] >0x7f )
                                                        {
                                                            //offset = ROM[PC+1] % 8;
                                                            //loc = 8 * ( ROM[PC +1] /8 );
                                                            //RAM[loc] = RAM[loc] & ~(unsigned char)(pow (2,offset));
                                                            RAM[8 * ( ROM[PC +1] /8 )] = RAM[8 * ( ROM[PC +1] /8 )] & ~(unsigned char)(pow (2,ROM[PC+1] % 8));
                                                            
                                                        }
                                                        
                                                    }
                                                
                                                
                                                PC++;
                                            }
    
    
                                            else
                                                if( opcode==0xa2)
                                                    
                                                {
                                                    ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                     
                                                    if(ROM[PC+1] <= 0x7f)  // for bit addresses between 20h and 30h
                                                    {
                                                        if( RAM[0x20 + (ROM[PC + 1] /8)] & (unsigned char) pow(2,(ROM[PC+1] % 8) ))
                                                            PSW = PSW | 0x80;
                                                        else
                                                            PSW = PSW & 0x7f;
                                                    }
                                                    else
                                                        if( ROM[PC+1] >0x7f )
                                                        {
                                                            if(  RAM[8 * ( ROM[PC +1] /8 )] & (unsigned char)(pow (2,ROM[PC+1] % 8)))
                                                                PSW = PSW | 0x80;
                                                            else
                                                                PSW = PSW & 0x7f;
                                                        }
                                                    
                                                    PC++;
                                                }
    
    
    
                                                else
                                                    if(opcode==0xa6)
                                                    {
                                                        ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                        ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                         
                                                        current_bank=[self get_current_reg_bank ];
                                                        RAM[RAM[current_bank*8]]=RAM[ROM[++PC]];
                                                        
                                                    }
    
                                                    else
                                                        if(opcode==0xa7)
                                                        {
                                                            ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                            ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                             
                                                            current_bank=[self get_current_reg_bank ];
                                                            RAM[RAM[current_bank*8+1]]=RAM[ROM[++PC]];
                                                            
                                                        }
                                                        else
                                                            if(opcode>=0xa8 && opcode<=0xaf)
                                                            {
                                                                ;//printf("%s%.2X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                                ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                                 
                                                                current_bank=[self get_current_reg_bank ];
                                                                RAM[current_bank*8+(opcode-0xa8)]=RAM[ROM[++PC]];
                                                            }
                                                            else
                                                                if(opcode==0xe5)
                                                                {
                                                                    ;//printf("%s %X\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                                    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                                     
                                                                    A = RAM[ROM[++PC]];
                                                                }
    
    
    
                                                                else
                                                                    if(opcode==0xe6)
                                                                    {
                                                                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                                         
                                                                        current_bank=[self get_current_reg_bank ];
                                                                        A=RAM[RAM[current_bank*8]];
                                                                    }
                                                                    else
                                                                        if(opcode==0xe7)
                                                                        {
                                                                            ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                                            ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                                             
                                                                            current_bank=[self get_current_reg_bank ];
                                                                            A=RAM[RAM[current_bank*8+1]];
                                                                        }
                                                                        else
                                                                            if(opcode>=0xe8 && opcode<=0xef)
                                                                            {
                                                                                ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                                                ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                                                 
                                                                                current_bank=[self get_current_reg_bank ];
                                                                                A=RAM[current_bank*8+(opcode-0xe8)];
                                                                            }
    
                                                                            else
                                                                                if(opcode==0xf5)
                                                                                {
                                                                                    ;//printf("%s%.2X,A\n\r",instructions[ROM[PC]].mnemonic,ROM[PC+1]);
                                                                                    ;//printf("%.4X:%.2X %.2X\n\r",PC,ROM[PC],ROM[PC+1]);
                                                                                     
                                                                                    RAM[ROM[++PC]]=A;
                                                                                }
    
                                                                                else
                                                                                    if(opcode==0xf6)
                                                                                    {
                                                                                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                                                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                                                         
                                                                                        current_bank=[self get_current_reg_bank ];
                                                                                        RAM[RAM[current_bank*8]]=A;
                                                                                    }
				if(opcode==0xf7)
                {
                    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                     
                    current_bank=[self get_current_reg_bank ];
                    RAM[RAM[current_bank*8+1]]=A;
                }
                else
                    if(opcode>=0xf8 && opcode<=0xff)
                    {
                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                         
                        current_bank=[self get_current_reg_bank ];
                        RAM[current_bank*8+(opcode-0xf8)]=A;
                    }
                    else
                        if(opcode==0x83)
                        {
                            ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                            ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                             
                            A = ROM[A + PC + 1];
                        }
    
                        else
                            if(opcode==0x93)
                            {
                                ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                 
                                tempDPTR = DPH * 0x100 + DPL;
                                A = ROM[A + tempDPTR];
                                
                            }
                            else
                                if(opcode==0xe0)
                                {
                                    
                                    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                    
                                    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                    
                                    tempDPTR = DPH * 0x100 + DPL;
                                    A = XDATA[tempDPTR];
                                }
    
                                else
                                    if(opcode==0xf0)
                                    {
                                        
                                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                        
                                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                        
                                        tempDPTR = DPH * 0x100 + DPL;
                                        XDATA[tempDPTR] = A; 
                                        
                                        
                                    }
    
                                    else
                                        if(opcode==0xe2)
                                        {
                                            
                                            ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                            
                                            ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                            
                                            current_bank=[self get_current_reg_bank ];
                                            
                                            A = XDATA[RAM[current_bank*8]];
                                            
                                        }
    
    
                                        else
                                            if(opcode==0xe3)
                                            {
                                                
                                                ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                
                                                ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                
                                                current_bank=[self get_current_reg_bank ];
                                                
                                                A = XDATA[RAM[current_bank*8+1]];
                                                
                                            }
                                            else
                                                if(opcode==0xf2)
                                                {
                                                    
                                                    ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                    
                                                    ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                    
                                                    current_bank=[self get_current_reg_bank ];
                                                    
                                                    XDATA[RAM[current_bank*8]] = A ;
                                                    
                                                }
    
    
    
                                                else
                                                    if(opcode==0xf3)
                                                    {
                                                        
                                                        ;//printf("%s\n\r",instructions[ROM[PC]].mnemonic);
                                                        
                                                        ;//printf("%.4X:%.2X\n\r",PC,ROM[PC]);
                                                        
                                                        current_bank=[self get_current_reg_bank ];
                                                        
                                                        XDATA[RAM[current_bank*8+1]] = A ;
                                                        
                                                    }
    
    
    
    
    //;//printf("inside dummy_isr");
    
    
}
-(int) get_current_reg_bank
{
    unsigned char temp;
    //PSW=0x18;   //to change register banks manually
    temp=PSW;
    temp=temp<<3;
    temp=temp>>6;
    return temp;
    
}
    
-(void)sub_set_flags: (int) value1 OP2:(int) value2 {
    
    int carry = (((value1 & 255) - (value2 & 255)) >> 8) & 1;
    int auxcarry = (((value1 & 7) - (value2 & 7)) >> 3) & 1;
    int overflow = ((((value1 & 127) - (value2 & 127)) >> 7) & 1)^carry;
    
    PSW = (PSW & ~(0x80|0x40|0x04)) |
    (carry << 7) | (auxcarry << 6) | (overflow << 2);
    
    
    
}


-(void)add_set_flags: (int) value1 OP2:(int) value2 {
    
    int carry = (((value1 & 255) + (value2 & 255)) >> 8) & 1;
    int auxcarry = (((value1 & 7) + (value2 & 7)) >> 3) & 1;
    int overflow = ((((value1 & 127) + (value2 & 127)) >> 7) & 1)^carry;
    
    PSW = (PSW & ~(0x80|0x40|0x04)) |
    (carry << 7) | (auxcarry << 6) | (overflow << 2);
    
    
    
}




   /*
    

-(void) set_flags:(unsigned int) value OP1:(unsigned char) op1 OP2:(unsigned char)op2 MASK:(unsigned char)mask{
    //this function when called examines the 'value' parameter and sets
    // the PSW flags based on the mask supplied to it.....
    
    int temp=0;           //temp must be an int to detect carry from 8th bit...
    unsigned char temp_flag_bits=0,oldPSW,flag1,flag2;
    oldPSW=PSW;            //saving the current PSW...
    temp=value & 256;
    
    if(temp)
        temp_flag_bits=temp_flag_bits | 128;    //evaluating the flags....
    //and building up the temp flag bits...
    else                        //this involves several steps,
        temp_flag_bits=temp_flag_bits | 0;      //for all the flags are involved...
    
    
    // flag1 = test_for_carry(op1,op2,6);
    // flag2 = test_for_carry(op1,op2,7);
    //if(  flag1  && (!flag2)   )
    //if(  (test_for_carry(op1,op2,6))  && !(test_for_carry(op1,op2,7))   )
    if([self test_for_carry:op1 OP2:op2 POS:6]&&![self test_for_carry:op1 OP2:op2 POS:7])
        temp_flag_bits=temp_flag_bits | 4;    //checking for OV flag...
    
    //if(  flag2  && (!flag1) )
    if( [self test_for_carry:op1 OP2:op2 POS:7]&&![self test_for_carry:op1 OP2:op2 POS:6]   )
        temp_flag_bits=temp_flag_bits | 4;    //checking for OV flag...
    
    
    if( [self test_for_carry:op1 OP2:op2 POS:3]  )
        temp_flag_bits=temp_flag_bits | 64;    //checking for AC flag...
    
    if( ([self count_no_of_ones:(A)%2])!=0 )
        temp_flag_bits=temp_flag_bits | 1;    //checking for P flag...
    
    else
        if( ([self count_no_of_ones:(A)%2])==0 )
            temp_flag_bits=temp_flag_bits & 0xfe;    //checking for P flag...
    
    
    
    temp_flag_bits=temp_flag_bits & mask;  //finally masking to get only
    //the needed flags...
    //this step should be performed
    //after all the flags are evaluated...
    PSW=temp_flag_bits;   //transferring temp_flag to the PSW...
    PSW=PSW | oldPSW;    //restoring the unchanged flag values....
    
}
    
    */
-(char) test_for_carry:(unsigned char)op1 OP2:(unsigned char) op2 POS:(unsigned char) pos
{
    char iscarry;
    if ( (op1 & op2) & (unsigned char)(pow(2,pos))    )
        return 1;     // returning a carry if both are 1s
    
    else
        //  {
        if( (op1 | op2) & (unsigned char)(pow(2,pos))  )
        {
            
            //iscarry=test_for_carry(op1,op2,pos-1);  //recursing if both are different..
            iscarry=[self test_for_carry:op1 OP2:op2 POS:pos-1];
            
            
            if(iscarry==1)
                return 1;
            else
                return 0;
        }
    //iscarry++;
    //   return 67;
        else
            return 0;  // returning a no carry if both are 0s
    //   }
    //iscarry++;
    /* if(iscarry==1)
     return -1;
     else
     return -1;  */
    //;//printf("hello");
    
}




-(unsigned char) count_no_of_ones:(unsigned char) val
{
    unsigned char count,no_ones=0,no_zeroes=0;
    //val=0x88;
    
    for (count=0;count<=7;count++)
    {
        if(  ((val>>count) & 0x01)    )
            no_ones++;
        else
            no_zeroes++;
    }
    
    //clrscr();
    //;//printf(" 1s = %d  0s = %d ",no_ones,no_zeroes);
    return no_ones;
    //getch();
}


@end