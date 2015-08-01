`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:34:02 04/13/2015
// Design Name:   top
// Module Name:   /home/sahil/Sem4/EmbeddedProg/Asg3/top_tb.v
// Project Name:  Asg3
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
	reg x;

	// Outputs
	wire y;

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
		enable = 1'b1;
		reset = 0;
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	
		
always
begin
	#100 clk = ~clk;
end

	initial 
	begin
		#100 x = 1'b0;
		#200 x = 1'b1;
		#200 x = 1'b0;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#200 x = 1'b0;
		#200 x = 1'b0;
		#200 x = 1'b0;
		#200 x = 1'b0;
		#200 x = 1'b0;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#200 x = 1'b1;
		#100 reset = 1'b1;
		#100 $finish;
	end
      
endmodule

