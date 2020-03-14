// xc_work/v/4.sv
// /tools/cadence/UXE171_p98/tools.lnx86/etc/ixcom/GFIFO.sv:1412
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module IXC_IFIFO(output  ackClkX,output  [17:0] ackLenX );
localparam VLEN = 0;
localparam TID = 16;
localparam ARGL = 32;
localparam ACKL = 32;
localparam ODLY = 48;
localparam MARK = 63;
localparam MARKN = 62;
localparam RST = 61;
localparam LOG2_SFIFO_WORD_SIZE = 3;
localparam LOG2_SFIFO_NUM_WORDS = 14;
localparam LOG2_SFIFO_SIZE = 17;
wire  hasIBF;
wire  hssReset;
wire  reset;
bit ackClk;
bit ackClkN;
bit [17:0] ackLen ;
bit [15:0] tId ;
bit [511:0] iData ;
bit [511:0] ixc_gfm_aFifo [0:16383];
bit [511:0] ixc_gfm_bFifo [0:16383];
wire  fclk;
wire  asyncCall;
wire  GFlock;
bit [16:0] wptr ;
bit [16:0] wptrN ;
bit [16:0] xptr ;
bit [16:0] xptrN ;
bit [511:0] afifoXdata ;
bit [16:0] rptr ;
bit [16:0] rptrN ;
bit [13:0] afifoRaddr0 ;
bit [13:0] afifoRaddr1 ;
bit [1023:0] afifoRdata ;
bit [17:0] rdDelta ;
bit [63:0] afifoRdCnt ;
bit mark;
bit markN;
bit active;
bit activeD;
bit [63:0] xval ;
bit nps;
bit eob;
reg hotSwapOnPI;
bit SFIFOLock;
bit [63:0] head ;
bit [63:0] xhead ;
bit [63:0] vhead ;
bit [15:0] pktl ;
bit [15:0] pktlN ;
bit [15:0] vlen ;
bit [15:0] vlenN ;
bit rstDone;
bit rstDoneD;
bit rstDoneD2;
bit [11:0] odly ;
bit [11:0] odlyN ;
bit vmode;
bit [575:0] tmpData ;
reg oSt;
bit [63:0] oMark ;
bit [511:0] oData ;
bit oDataEn;
bit [3:0] oDataLen ;
bit [1023:0] bfifoData ;
bit [4:0] bFill ;
bit [13:0] bfifoAddr0 ;
bit [14:0] bfifoAddr1 ;
bit [13:0] bfifoWptr ;
bit [8:0] shiftCount ;
bit [1023:0] shiftedOData ;


   // Tell preCompiler not to touch this module.
   Q_NOT_TOUCH _zzqnthw();

   // quickturn fast_clock fclk

   // quickturn use_hardmacro_pack ixc_gfm_aFifo
   // quickturn use_hardmacro_pack ixc_gfm_bFifo

   // quickturn name_map hasIBF    xc_top.hasIBF
   // quickturn name_map hssReset  xc_top.hssReset
   // quickturn name_map asyncCall xc_top.asyncCall
   // quickturn name_map hotSwapOnPI xc_top.hotSwapOnPI
   // quickturn name_map GFlock    xc_top.GFlock

   // quickturn external_ref iData
   // quickturn external_ref tId
   // quickturn external_ref oData
   // quickturn external_ref oDataEn
   // quickturn external_ref oDataLen


endmodule

