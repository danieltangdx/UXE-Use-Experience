// xc_work/v/1n.sv
// counter.v:21
// NOTE: This file corresponds to a module in the Hardware/DUT partition
`timescale 1ps/100fs
module counter(clk,out);
input  clk;
output  [31:0] out ;
reg [31:0] counter  = 32'b0;
wire  _zy_clk_x$ed_0;
assign  out = counter;
axPIBMod #(1 )_zy_pimod__1(_zy_clk_x$ed_0,clk); 
always 
 @(posedge _zy_clk_x$ed_0)
  begin
   counter = (counter + 32'b01);
  end
endmodule

