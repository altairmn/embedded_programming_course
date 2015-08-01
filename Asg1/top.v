`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:04:00 04/13/2015 
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
	output [3:0] y
	);

wire [3:0] count;
counter8 cnt(clk, reset, count);

//reg counter_in [3:0] = count;
reg [3:0] out;

initial out = 4'b0000;

always@(posedge clk)
begin
	if(enable == 1'b1) begin
		if(count<3) begin
			out <= 0;
		end
		else if(count <=8) begin
			if(count%2 == 0)
				out <= x;
		end
	end
end


	
assign y = out;


endmodule
