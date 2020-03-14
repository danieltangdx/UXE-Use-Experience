// xc_work/v/1.sv
// counter.v:21
// NOTE: This file corresponds to a module in the Software/TB partition
`timescale 1ps/100fs
module counter(clk,out);
input  clk;
output  [31:0] out ;
reg [31:0] counter  = 32'b0;
assign  out = counter;
always 
 @(posedge clk)
  begin
   counter = (counter + 32'b01);
  end
endmodule

