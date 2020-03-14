// xc_work/v/10.sv
// /tools/cadence/UXE171_p98/tools.lnx86/etc/ixcom/GFIFO.sv:3226
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module IXC_MC_OFIFO(input  ackClk,input  [17:0] ackLen );
localparam LBSIZE = 4;
localparam LOG2_GFIFO_WORD_SIZE = 3;
localparam LOG2_GFIFO_NUM_WORDS = 15;
localparam LOG2_GFIFO_SIZE = 18;
wire  hasOBF;
wire  hasMultiLevelOBF;
wire  fclk;
wire  hssReset;
wire  anyStop;
wire  [63:0] ixcSimTime ;
wire  GFLBfull;
wire  GFGBfull;
wire  GFbusy;
reg GFbusy1;
reg GFbusy2;
reg GFbusy3;
bit wclk;
tri0  [19:0] GFcbid ;
tri0  [11:0] GFlen ;
tri0  [511:0] GFidata ;
wire  GFreq;
wire  GFfull;
wire  GFtsReq;
bit GFtsAdd;
wire  GLBreq;
reg [3:0] LBrd ;
reg [3:0] LBwr ;
reg [3:0] LBwrI ;
reg [3:0] LBfill ;
wire  LBempty;
wire  LBfull;
wire  GFlock;
bit [11:0] argLen ;
bit [18:0] wLen ;
bit [17:0] rLen ;
bit wSync;
bit rSync;
bit [255:0] ixc_gfm_gFifo [0:32767];
bit [543:0] xdata ;
bit [543:0] xdataD ;
bit [63:0] tCount ;
bit [63:0] tCountMem [0:0];
bit [14:0] gfifoAddr0 ;
bit [14:0] gfifoAddr1 ;
bit [14:0] gfifoAddr2 ;
bit [767:0] gfifoData ;
bit [5:0] writeLen ;
bit [5:0] writeLenD ;
bit reqD;
bit GFfullD;
bit [4:0] gFill ;
bit [14:0] gfifoWptr ;
bit [7:0] shiftCount ;
bit [767:0] shiftedXdataD ;
reg [64:0] TsBuf [0:7];
reg [63:0] gfTsVal ;
reg [11:0] gfTsLen ;
reg gfTsReqO;
reg [63:0] gfTsValO ;
reg gfTsEn;


   // Tell preCompiler not to touch this module.
   Q_NOT_TOUCH _zzqnthw();
   
   // quickturn fast_clock fclk

   // quickturn use_hardmacro_pack ixc_gfm_gFifo
   // quickturn use_hardmacro_pack tCountMem
   // quickturn no_hardmacro       TsBuf

   // quickturn name_map hasOBF           xc_top.hasOBF
   // quickturn name_map hasMultiLevelOBF xc_top.hasMultiLevelOBF
   // quickturn name_map hssReset         xc_top.hssReset
   // quickturn name_map anyStop          xc_top.anyStop
   // quickturn name_map ixcSimTime       xc_top.ixcSimTime
   // quickturn name_map GFbusy           xc_top.GFbusy
   // quickturn name_map GFLBfull         xc_top.GFLBfull
   // quickturn name_map GFGBfull         xc_top.GFGBfull
   // quickturn name_map GFlock           xc_top.GFlock

   // quickturn external_ref GFidata
   // quickturn external_ref GFcbid
   // quickturn external_ref GFlen
   // quickturn external_ref GFreq
   // quickturn external_ref GLBreq
   // quickturn external_ref GFtsReq
   // quickturn external_ref GFfull


endmodule

