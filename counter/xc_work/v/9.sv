// xc_work/v/9.sv
// /tools/cadence/UXE171_p98/tools.lnx86/etc/ixcom/GFIFO.sv:3212
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module IXC_MC_GSFIFO;
wire  ackClk;
wire  [17:0] ackLen ;
IXC_MC_OFIFO O(ackClk,ackLen); 
IXC_MC_IFIFO I(ackClk,ackLen); 
endmodule

