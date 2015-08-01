`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:16:23 04/16/2015 
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
//////////////////////////////////////////////////////////////////////////////////
module top(
	input enable,
	input reset,
	input clk,
	input [3:0] x,
	output [63:0] y
	);

real result;
integer i;
real ans[0:16];

initial begin
	ans[0] = 0;
	ans[1] = 0.84147;
	ans[2] = 0.909297;
	ans[3] = 0.141120;
	ans[4] = -0.756802;
	ans[5] = -0.958924;
	ans[6] = -0.279415;
	ans[7] = 0.65698;
	ans[8] = 0.98935;
	ans[9] = 0.41211;
	ans[10] = -0.54402;
	ans[11] = -0.99999;
	ans[12] = -0.53657;
	ans[13] = 0.42016;
	ans[14] = 0.99060;
	ans[15] = 0.650287;
end

always@(posedge clk)
begin
	i = x;
	result = ans[i];
end

assign y = $realtobits(result);

endmodule
