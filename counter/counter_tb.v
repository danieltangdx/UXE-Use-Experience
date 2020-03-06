/*********************************************************************
* @Copyright: All Rights Reserved
* @FileName: counter_tb.v
* @Author: TangDongxue
* @Date:   2020-03-07 02:44:40
* @Description:
*
*
* @Dependencies
*
*
* @History:
*  2020-02-07 13:17:44, TangDongxue, File create
*
* @Last Modified time: 2020-03-07 02:44:58
*
* @Additional Comments:
*
*
**********************************************************************/

module counter_tb;
	reg clk = 1’b0;
	always #5 clk = ~clk;
	wire [31:0] out;
	dut dut0(clk, out);
initial