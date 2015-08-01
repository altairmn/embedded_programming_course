`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:10:36 04/09/2015 
// Design Name: 
// Module Name:    arch 
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
module arch(
	input clk,
	input enable,
	input [2:0] clk_out,
	input [3:0] a0,
	output [3:0] data_out 
);

reg [3:0] c;
always@(posedge clk)
begin
	if(clk_out%2==0 && clk_out>3)
	begin
		c = a0;
	end
end
assign data_out = c;
endmodule