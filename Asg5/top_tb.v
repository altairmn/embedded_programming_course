`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:14:03 04/16/2015
// Design Name:   top
// Module Name:   /home/sahil/Sem4/EmbeddedProg/Asg5/top_tb.v
// Project Name:  Asg5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module top_tb;

	// Inputs
	reg enable;
	reg reset;
	reg clk;
	reg [3:0] x;

	// Outputs
	wire [63:0] y;
	
	//For show
	real a_real;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.enable(enable), 
		.reset(reset), 
		.clk(clk), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		enable = 0;
		reset = 0;
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
	end
	
initial
begin
	x = 4'b0010;	//2
	clk = ~clk;
end
	
initial
	begin 	
	#100;
	a_real = $bitstoreal(y);
	#100;
	$finish;
end;
      
endmodule

