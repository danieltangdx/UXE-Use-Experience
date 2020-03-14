// xc_work/v/12.v
// /tools/cadence/UXE171_p98/tools.lnx86/etc/ixcom/ixc_time.v:1
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module ixc_time;
parameter DBW = 5;
parameter TUSF = 1;
parameter TUSFW = 0;
parameter CYC1X = 1;
wire  eClk;
reg [63:0] simTime_dummy ;
// quickturn external_ref simTime_dummy
wire  [63:0] nextTbTime ;
// quickturn external_ref nextTbTime
reg [63:0] lastClkTime ;
wire  [63:0] nextClkTime ;
wire  [63:0] nextClkTimePO ;
wire  [63:0] nextDutTime ;
// quickturn external_ref nextDutTime
wire  [63:0] nextTime ;
wire  [4:0] ScMinT ;
wire  [4:0] delta ;
wire  [4:0] minT ;
wire  [4:0] deltaTb ;
reg zminT;
wire  noScale;
wire  VCC;
wire  TbEQClk;
wire  TbLTClk;
wire  stopEcm;
// quickturn external_ref stopEcm
wire  runClk;
// pragma CVASTRPROP  MODULE ixc_time PROP_RANOFF TRUE

endmodule

