// xc_work/v/1.v
// counter_tb.v:22
// NOTE: This file corresponds to a module in the Software/TB partition
`timescale 1ns/1ns
module counter_tb;
reg clk = 1'b0;
wire  [31:0] out ;
wire  _zy_clk_0_w$;
assign  _zy_clk_0_w$ = clk;
counter dut0(_zy_clk_0_w$,out); 
always 
 #(5)
  clk = ( ~clk );
initial 
 $monitor(out);
endmodule

