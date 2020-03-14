`begin_keywords "1364-2001"
module ixc_mevClk ( xclk, clks, ens, loop, clkOn, bwOn );
parameter WIDTH = 4 ;
parameter LOOP = 0 ;
parameter reg[(WIDTH - 1) : 0] IS_EDGED = 0 ;
parameter reg[(WIDTH - 1) : 0] POLARITY = 0 ;
parameter reg[(WIDTH - 1) : 0] DS = 0 ;
output wire  xclk ;
input wire [(WIDTH - 1) : 0] clks ;
input wire [(WIDTH - 1) : 0] ens ;
input wire  loop ;
output wire  clkOn ;
output wire  bwOn ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DUMMY1 IS_EDGED POLARITY DS xclk clks ens DUMMY2 clkOn bwOn portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH DUMMY1 ParamPreferVectorEnd**/
