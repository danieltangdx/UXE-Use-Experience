`begin_keywords "1364-2001"
module ixc_ibf_mc_port ( call, iarg, ret, oarg, tid, fen, CiData, CtId, CoData, CoDataEn, CoDataLen );
parameter IARGW = 1 ;
parameter OARGW = 1 ;
localparam IARGW1 =  ((IARGW == 0) ? 0 : (IARGW - 1))  ;
localparam OARGW1 =  ((OARGW == 0) ? 0 : (OARGW - 1))  ;
output wire  call ;
output reg[IARGW1 : 0] iarg ;
input wire  ret ;
input wire [OARGW1 : 0] oarg ;
input wire [15 : 0] tid ;
output reg fen ;
input wire [511 : 0] CiData ;
input wire [15 : 0] CtId ;
output wire [511 : 0] CoData ;
output wire  CoDataEn ;
output wire [3 : 0] CoDataLen ;
endmodule
`end_keywords
/**portGenericDumpBegin IARGW OARGW IARGW1 OARGW1 call iarg ret oarg tid fen CiData CtId CoData CoDataEn CoDataLen portGenericDumpEnd**/
/**ParamPreferVectorBegin IARGW OARGW IARGW1 OARGW1 ParamPreferVectorEnd**/
