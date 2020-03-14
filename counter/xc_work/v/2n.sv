// xc_work/v/2n.sv
// /tools/cadence/UXE171_p98/tools.lnx86/etc/ixcom/GFIFO.sv:7
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module IXC_GFIFO;
wire  ackClk;
wire  [17:0] ackLen ;
IXC_OFIFO O(ackClk,ackLen); 
IXC_IFIFO I(ackClk,ackLen); 
IXC_OSF OSF(); 
IXC_ISF ISF(); 
IXC_OSF1 OSF1(); 
IXC_MC_GSFIFO MC_GSF1(); 
endmodule

