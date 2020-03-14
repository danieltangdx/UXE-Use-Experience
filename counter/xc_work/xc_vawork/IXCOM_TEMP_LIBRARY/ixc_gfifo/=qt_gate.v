
module IXC_GFIFO ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire ackClk;
wire [17:0] ackLen;
IXC_OFIFO O ( ackClk, ackLen[17:0]);
IXC_IFIFO I ( ackClk, ackLen[17:0]);
IXC_OSF OSF ();
IXC_ISF ISF ();
IXC_OSF1 OSF1 ();
IXC_MC_GSFIFO MC_GSF1 ();
endmodule
