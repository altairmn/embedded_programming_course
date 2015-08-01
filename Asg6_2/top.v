`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:15 04/16/2015 
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

real result = 1, calc, base;
integer i;
real coeff[0:7];

initial begin
	result = 0;
	coeff[0] = 1;
	coeff[1] = 1;
	coeff[2] = 0.5;
	coeff[3] = 0.3333;
	coeff[4] = 0.25;
	coeff[5] = 0.2;
	coeff[6] = 0.16667;
	coeff[7] = 0.1428;
end

always@(posedge clk)
begin
	base = x-1;
	calc = base;
	for (i=1; i<8; i = i+1) begin
		$display("Calc: %f", calc);
		result = result + calc*coeff[i];
		calc = calc*base;
		calc = -calc;
		$display("Coeff: %f", coeff[i]);
		$display("Result: %f\n", result);	
	end
end
assign y = $realtobits(result);
endmodule
