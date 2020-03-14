`begin_keywords "1364-2001"
module ixc_obf_cico_w_anyreq ( ci, co, anyReq );
parameter N = 16 ;
output wire [(N - 1) : 0] ci ;
input wire [(N - 1) : 0] co ;
output wire  anyReq ;
endmodule
`end_keywords
/**portGenericDumpBegin N ci co anyReq portGenericDumpEnd**/
/**ParamPreferVectorBegin N ParamPreferVectorEnd**/
