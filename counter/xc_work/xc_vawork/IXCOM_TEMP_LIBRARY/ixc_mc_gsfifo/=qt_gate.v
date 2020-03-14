
module IXC_MC_GSFIFO ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire ackClk;
wire [17:0] ackLen;
IXC_MC_OFIFO O ( ackClk, ackLen[17:0]);
IXC_MC_IFIFO I ( ackClk, ackLen[17:0]);
endmodule
