`begin_keywords "1364-2001"
module ixc_obf_leaf_port ( tkout, tkin, ireq, cbid, len, idata, LGFcbid, LGFlen, LGFidata, Rtkin );
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
output wire [19 : 0] LGFcbid ;
output wire [11 : 0] LGFlen ;
output wire [(512 - 1) : 0] LGFidata ;
input wire  Rtkin ;
endmodule
`end_keywords
/**portGenericDumpBegin DW SHARE USETIME BUFL tkout tkin ireq cbid len idata LGFcbid LGFlen LGFidata Rtkin portGenericDumpEnd**/
/**ParamPreferVectorBegin DW USETIME BUFL ParamPreferVectorEnd**/
