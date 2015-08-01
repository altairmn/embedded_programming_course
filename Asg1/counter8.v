`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:41:25 04/13/2015 
// Design Name: 
// Module Name:    counter8 
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
module counter8(
	input wire clk,
	input wire reset,
	output wire [3:0] count
	);

reg [3:0] counter_out;
initial counter_out = 4'b0000;
	
always@(posedge clk)
begin:COUNTER

	if(reset == 1'b1) begin
		counter_out = 4'b0000;
	end
	else begin
		counter_out = counter_out + 4'b0001;
	end
end

assign count = counter_out;


endmodule
