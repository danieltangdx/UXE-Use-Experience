/*********************************************************************
* @Copyright: All Rights Reserved
* @FileName:counter.v
* @Author: TangDongxue
* @Date:   2020-03-07 02:43:24
* @Description:
*
*
* @Dependencies
*
*
* @History:
*  2020-02-07 13:17:44, TangDongxue, File create
*
* @Last Modified time: 2020-03-07 02:43:49
*
* @Additional Comments:
*
*
**********************************************************************/
module counter(clk, out);
	input clk;
	output [31:0] out;
	reg [31:0] counter = 32’b0;
	assign out = counter;
	always @(posedge clk) begin
	counter = counter + 1;
	end
endmodule