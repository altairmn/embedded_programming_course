`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:49:58 04/16/2015 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////module top(
module top(
	input enable,
	input reset,
	input clk,
	input [3:0] x,
	output [64:0] y
	);

real result;
integer i;
real ans[0:16];

initial begin
	ans[0] = 1;
	ans[1] = 2.7182818;
	ans[2] = 7.3890560;
	ans[3] = 20.085536;
	ans[4] = 54.598150;
	ans[5] = 148.41315;
	ans[6] = 403.42879;
	ans[7] = 1096.6331;
	ans[8] = 2980.9579;
	ans[9] = 8103.08392;
	ans[10] = 22026.46579;
	ans[11] = 59874.14172;
	ans[12] = 162754.7914;
	ans[13] = 442413.392;
	ans[14] = 1202604.284;
	ans[15] = 3269017.372;
end

always@(posedge clk)
begin
	i = x;
	result = ans[i];
end

assign y = $realtobits(result);

endmodule
