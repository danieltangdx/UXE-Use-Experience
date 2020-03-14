`begin_keywords "1364-2001"
module ixc_event_driver ( d, sI, sR );
parameter WIDTH = 1 ;
inout wire  d ;
input wire [(WIDTH - 1) : 0] sI ;
output wire [(WIDTH - 1) : 0] sR ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH d sI sR portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
