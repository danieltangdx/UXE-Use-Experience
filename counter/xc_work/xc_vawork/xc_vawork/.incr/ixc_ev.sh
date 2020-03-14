`begin_keywords "1364-2001"
module ixc_ev ( ev, s );
parameter W = 1 ;
parameter ASYNC = 0 ;
output wire  ev ;
input wire [(W - 1) : 0] s ;
endmodule
`end_keywords
/**portGenericDumpBegin W ASYNC ev s portGenericDumpEnd**/
/**ParamPreferVectorBegin W ParamPreferVectorEnd**/
