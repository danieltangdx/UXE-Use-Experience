`begin_keywords "1364-2001"
module ixc_obf_pg ( so, ci, co, si );
parameter R = 4 ;
output wire  so ;
output wire [(R - 1) : 0] ci ;
input wire [(R - 1) : 0] co ;
input wire  si ;
endmodule
`end_keywords
/**portGenericDumpBegin R so ci co si portGenericDumpEnd**/
/**ParamPreferVectorBegin R ParamPreferVectorEnd**/
