`begin_keywords "1364-2001"
module ixc_obf_mc_port ( tkout, tkin, ireq, cbid, len, idata, CGFtsReq, CGFcbid, CGFlen, CGFidata, CGLBreq, CLBrd, CLBwr, CLBfull, CGFfull );
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
output wire  CGFtsReq ;
output wire [19 : 0] CGFcbid ;
output wire [11 : 0] CGFlen ;
output wire [(512 - 1) : 0] CGFidata ;
output wire  CGLBreq ;
input wire [3 : 0] CLBrd ;
input wire [3 : 0] CLBwr ;
input wire  CLBfull ;
input wire  CGFfull ;
endmodule
`end_keywords
/**portGenericDumpBegin DW SHARE USETIME BUFL tkout tkin ireq cbid len idata CGFtsReq CGFcbid CGFlen CGFidata CGLBreq CLBrd CLBwr CLBfull CGFfull portGenericDumpEnd**/
/**ParamPreferVectorBegin DW USETIME BUFL ParamPreferVectorEnd**/
