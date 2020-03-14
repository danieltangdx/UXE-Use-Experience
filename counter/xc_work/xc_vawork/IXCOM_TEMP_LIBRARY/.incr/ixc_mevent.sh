`begin_keywords "1364-2001"
module ixc_mevent ( ev, clks );
parameter WIDTH = 4 ;
parameter reg[(WIDTH - 1) : 0] IS_EDGED = 0 ;
parameter reg[(WIDTH - 1) : 0] POLARITY = 0 ;
parameter PULSE = 0 ;
output wire  ev ;
input wire [(WIDTH - 1) : 0] clks ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH IS_EDGED POLARITY PULSE ev clks portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH ParamPreferVectorEnd**/
