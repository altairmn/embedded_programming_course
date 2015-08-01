`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:33:20 04/16/2015 
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
	output [64:0] y
	);

real result;
integer i;
real ans[0:16];

initial begin
	ans[1] = 0;
	ans[2] = 0.69314;
	ans[3] = 1.09861;
	ans[4] = 1.38629;
	ans[5] = 1.60943;
	ans[6] = 1.79175;
	ans[7] = 1.94591;
	ans[8] = 2.07944;
	ans[9] = 2.19722;
	ans[10] = 2.30258;
	ans[11] = 2.33789;
	ans[12] = 2.4890665;
	ans[13] = 2.56494;
	ans[14] = 2.6390573;
	ans[15] = 2.70805;
end

always@(posedge clk)
begin
	i = x;
	result = ans[i];
end

assign y = $realtobits(result);

endmodule
