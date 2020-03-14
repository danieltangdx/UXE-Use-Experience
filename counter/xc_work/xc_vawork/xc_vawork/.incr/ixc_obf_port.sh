`begin_keywords "1364-2001"
module ixc_obf_port ( tkout, tkin, ireq, cbid, len, idata );
parameter DW = 512 ;
parameter SHARE = 0 ;
parameter USETIME = 1 ;
parameter BUFL = 4 ;
output wire  tkout ;
input wire  tkin ;
input wire  ireq ;
input wire [19 : 0] cbid ;
input wire [11 : 0] len ;
input wire [(DW - 1) : 0] idata ;
endmodule
`end_keywords
/**portGenericDumpBegin DW SHARE USETIME BUFL tkout tkin ireq cbid len idata portGenericDumpEnd**/
/**ParamPreferVectorBegin DW USETIME BUFL ParamPreferVectorEnd**/
