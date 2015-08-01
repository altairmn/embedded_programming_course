`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:20 04/06/2015 
// Design Name: 
// Module Name:    es13b1024_1 
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
	input clk,
	input wire enable,
	input wire[3:0] data_in,
	output wire[3:0] data_out
);

reg [3:0] clk_out;
reg [3:0] c;
initial clk_out = 4'b0000;

always@(negedge clk)
begin
		clk_out = clk_out + 4'b0001;
end


always@(negedge clk)
begin
if(enable)
begin
	if(clk_out>3 && clk_out<9)
	begin
		if(clk_out%2 == 0)
		begin
			c = data_in;
		end
	end
	else 
		begin
			c = 4'b0000;
		end
	end
end
assign data_out = c;
endmodule