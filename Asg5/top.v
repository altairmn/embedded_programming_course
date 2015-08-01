`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:02:03 04/16/2015 
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
	coeff[1] = 0.16667;
	coeff[2] = 0.008333;
	coeff[3] = 1.984126e-4;
	coeff[4] = 2.75573e-6;
	coeff[5] = 2.50521e-8;
	coeff[6] = 1.60590e-10;
	coeff[7] = 7.6471e-13;
end

always@(posedge clk)
begin
	base = x;
	calc = base;
	for (i=0; i<8; i = i+1) begin
		$display("Calc: %f", calc);
		result = result + calc*coeff[i];
		calc = calc*base*base;
		calc = -calc;
		$display("Coeff: %f", coeff[i]);
		$display("Result: %f\n", result);	
	end
end
assign y = $realtobits(result);
endmodule
