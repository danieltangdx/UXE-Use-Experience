
module ixc_time ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire eClk;
wire [63:0] nextTbTime;
wire [63:0] nextClkTime;
wire [63:0] nextClkTimePO;
wire [63:0] nextDutTime;
wire [63:0] nextTime;
wire [4:0] ScMinT;
wire [4:0] delta;
wire [4:0] minT;
wire [4:0] deltaTb;
wire noScale;
wire VCC;
wire TbEQClk;
wire TbLTClk;
wire stopEcm;
wire runClk;
wire [63:0] simTime_dummy;
wire [63:0] lastClkTime;
wire zminT;
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
endmodule
