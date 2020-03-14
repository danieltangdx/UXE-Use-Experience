`begin_keywords "1364-2001"
module ixc_seqClk ( xclk, reqs, bwOn );
parameter WIDTH = 4 ;
output wire [(WIDTH - 1) : 0] xclk ;
input wire [(WIDTH - 1) : 0] reqs ;
output wire  bwOn ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH xclk reqs bwOn portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH ParamPreferVectorEnd**/
