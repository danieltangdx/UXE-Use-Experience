`begin_keywords "1364-2001"
module ixc_call_clk ( clkout, clkin, h2s_notify, s2h_notify );
parameter N = 1 ;
parameter EDGE = 0 ;
parameter EXPORT = 0 ;
output wire  clkout ;
input wire  clkin ;
input wire [(N - 1) : 0] h2s_notify ;
input wire [(N - 1) : 0] s2h_notify ;
endmodule
`end_keywords
/**portGenericDumpBegin N EDGE EXPORT clkout clkin h2s_notify s2h_notify portGenericDumpEnd**/
/**ParamPreferVectorBegin EDGE ParamPreferVectorEnd**/
