`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:29:59 04/13/2015 
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
	input  x,
	output y
	);

wire [3:0] count;
counter8 cnt(clk, reset, count);

//reg counter_in [3:0] = count;
reg [3:0] out;

initial out = 1'b0;

always@(posedge clk)
begin
	if(enable == 1'b1) begin
		if(count<4) begin
			out <= 0;
		end
		else begin
			out <= x;
		end
	end
end


	
assign y = out;


endmodule