
module xcva_top ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
counter_tb counter_tb ();
IXC_GFIFO IXC_GFIFO ();
ixc_time ixc_time ();
_ixc_isc _ixc_isc ();
xc_top xc_top ();
ASSERTION ASSERTION ();
`ifdef Q_DISPLAY_BUFFER_USE
`ifdef CBV
`else
Q_DISPLAY_BUFFER Q_DISPLAY_BUFFER ();
`endif
`endif
`ifdef Q_HDL_ROOT_USE
Q_HDL_ROOT Q_HDL_ROOT ();
`endif
endmodule
