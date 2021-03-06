`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:13:55 04/13/2015
// Design Name:   top
// Module Name:   /home/sahil/Sem4/EmbeddedProg/Asg2/test_bench.v
// Project Name:  Asg2
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


module test_bench;

// Inputs
	reg enable;
	reg reset;
	reg clk;
	reg [3:0] x;

	// Outputs
	wire [3:0] y;

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
		enable = 1'b0;
		reset = 1'b1;
		clk = 0;
		x = 4'b0000;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		
	end
	
always
begin
	#100 clk = ~clk;
end

	initial 
	begin
		#100 reset = 1'b0;
		enable = 1'b1;
		#200 x = 4'b0000;;
		#200 x = 4'b0001;
		#200 x = 4'b0010;
		#200 x = 4'b0011;
		#200 x = 4'b0100;
		#200 x = 4'b0101;
		#200 x = 4'b0110;
		#200 x = 4'b0111;
		#200 x = 4'b0000;
		$finish;
	end
	
endmodule

