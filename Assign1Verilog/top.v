`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:08:49 04/09/2015 
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
	input clk,
	input enable,
	input [3:0] data_in,
	output [3:0] data_out
);

reg [3:0] a0;
reg [2:0] even;
reg [2:0] i;
reg [2:0] clk_out;
initial i = 3'b011;

always@(posedge clk)
begin
		clk_out = clk_out + 3'b001;
end

arch U0(clk,enable,clk_out,a0,data_out);


always@(posedge clk)
begin
if(enable)
begin
   case(i)
      0:{a0} = {data_in};
      1:{a0} = {data_in};
		2:{a0} = {data_in};
		3:{a0} = {data_in};
		4:{a0} = {data_in};
		5:{a0} = {data_in};
		6:{a0} = {data_in};
		7:{a0} = {data_in};
	endcase
	i = i + 3'b001;
end
end
endmodule		
