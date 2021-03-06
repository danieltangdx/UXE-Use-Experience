// xc_work/v/11.sv
// /tools/cadence/UXE171_p98/tools.lnx86/etc/ixcom/GFIFO.sv:3620
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module IXC_MC_IFIFO(output  ackClkX,output  [17:0] ackLenX );
localparam VLEN = 0;
localparam TID = 16;
localparam ARGL = 32;
localparam ACKL = 32;
localparam ODLY = 48;
localparam MARK = 63;
localparam MARKN = 62;
localparam RST = 61;
localparam LOG2_SFIFO_WORD_SIZE = 2;
localparam LOG2_SFIFO_NUM_WORDS = 15;
localparam LOG2_SFIFO_SIZE = 17;
wire  hasIBF;
wire  hssReset;
bit ackClk;
bit ackClkN;
bit [17:0] ackLen ;
bit [15:0] tId ;
bit [511:0] iData ;
bit [255:0] ixc_gfm_aFifo [0:32767];
bit [255:0] ixc_gfm_bFifo [0:32767];
wire  fclk;
wire  asyncCall;
wire  GFlock;
bit [16:0] wptr ;
bit [16:0] wptrN ;
bit [16:0] xptr ;
bit [16:0] xptrN ;
bit [255:0] afifoXdata ;
bit [255:0] afifoXdataFinal ;
bit [16:0] rptr ;
bit [16:0] rptrN ;
bit [14:0] afifoRaddr0 ;
bit [14:0] afifoRaddr1 ;
bit [14:0] afifoRaddr2 ;
bit [767:0] afifoRdata ;
bit [17:0] rdDelta ;
bit [63:0] afifoRdCnt ;
bit [3:0] markBits ;
bit [3:0] markBitsN ;
bit [3:0] newMarkBits ;
bit [3:0] newMarkBitsD ;
bit [3:0] dataBits ;
bit [23:0] offset ;
bit [23:0] offsetN ;
bit moveForward;
bit moveForwardN;
bit active;
bit activeD;
bit [63:0] xval ;
bit nps;
bit eob;
bit SFIFOLock;
int i;
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
bit rstDoneD3;
bit rstDoneD4;
bit [11:0] odly ;
bit [11:0] odlyN ;
bit vmode;
bit [575:0] tmpData ;
reg oSt;
bit [63:0] oMark ;
bit [511:0] oData ;
bit [511:0] oDataD ;
bit [511:0] oDataD2 ;
bit oDataEn;
bit oDataEnD;
bit oDataEnD2;
bit [3:0] oDataLen ;
bit [3:0] oDataLenD ;
bit [3:0] oDataLenD2 ;
bit [767:0] bfifoData ;
bit [3:0] bFill ;
bit [14:0] bfifoAddr0 ;
bit [15:0] bfifoAddr1 ;
bit [15:0] bfifoAddr2 ;
bit [14:0] bfifoWptr ;
bit [7:0] shiftCount ;
bit [767:0] shiftedOData ;


   // Tell preCompiler not to touch this module.
   Q_NOT_TOUCH _zzqnthw();

   // quickturn fast_clock fclk

   // quickturn use_hardmacro_pack ixc_gfm_aFifo
   // quickturn use_hardmacro_pack ixc_gfm_bFifo

   // quickturn name_map hasIBF    xc_top.hasIBF
   // quickturn name_map hssReset  xc_top.hssReset
   // quickturn name_map asyncCall xc_top.asyncCall
   // quickturn name_map GFlock    xc_top.GFlock

   // quickturn external_ref iData
   // quickturn external_ref tId
   // quickturn external_ref oData
   // quickturn external_ref oDataEn
   // quickturn external_ref oDataLen


endmodule

