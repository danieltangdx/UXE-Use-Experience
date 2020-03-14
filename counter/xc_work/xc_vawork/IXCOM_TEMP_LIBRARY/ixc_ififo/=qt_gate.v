
module IXC_IFIFO ( ackClkX, ackLenX);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output ackClkX;
output [17:0] ackLenX;
wire reset;
wire ackClk;
wire ackClkN;
wire [17:0] ackLen;
wire [15:0] tId;
wire [511:0] iData;
wire [16:0] wptr;
wire [16:0] wptrN;
wire [16:0] xptr;
wire [16:0] xptrN;
wire [511:0] afifoXdata;
wire [16:0] rptr;
wire [16:0] rptrN;
wire [13:0] afifoRaddr0;
wire [13:0] afifoRaddr1;
wire [1023:0] afifoRdata;
wire [17:0] rdDelta;
wire [63:0] afifoRdCnt;
wire mark;
wire markN;
wire active;
wire activeD;
wire [63:0] xval;
wire nps;
wire eob;
wire SFIFOLock;
wire [63:0] head;
wire [63:0] xhead;
wire [63:0] vhead;
wire [15:0] pktl;
wire [15:0] pktlN;
wire [15:0] vlen;
wire [15:0] vlenN;
wire rstDone;
wire rstDoneD;
wire rstDoneD2;
wire [11:0] odly;
wire [11:0] odlyN;
wire vmode;
wire [575:0] tmpData;
wire oSt;
wire [63:0] oMark;
wire [511:0] oData;
wire oDataEn;
wire [3:0] oDataLen;
wire [1023:0] bfifoData;
wire [4:0] bFill;
wire [13:0] bfifoAddr0;
wire [14:0] bfifoAddr1;
wire [13:0] bfifoWptr;
wire [8:0] shiftCount;
wire [1023:0] shiftedOData;
Q_NOT_TOUCH _zzqnthw ( .sig(n1));
endmodule