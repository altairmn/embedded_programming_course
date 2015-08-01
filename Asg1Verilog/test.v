`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:55:12 04/09/2015
// Design Name:   es13b1024_1
// Module Name:   V:/BTech 4th Sem/Embedded Systems/CA1/test_bench.v
// Project Name:  CA1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: es13b1024_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module test_bench;
	reg clk;
	reg enable;
	reg [3:0] data_in;
	wire [3:0] data_out;
	//reg [2:0] count;

initial begin 
   	clk = 1'b0;
		data_in = 4'b0000;
		enable = 1'b1;
		//count = 3'b000;
end

top uut (
	.clk(clk), 
	.enable(enable),
	.data_in(data_in), 
	.data_out(data_out)
);

always
begin
    	#0.001 clk = 1'b1;
    	#0.001 clk = 1'b0;
end

/*always@(negedge clk)
begin
		count = count + 3'b001;
end*/

initial 
begin
	#0.002 data_in = 4'b0001;
	#0.002 data_in = 4'b0010;
	#0.002 data_in = 4'b0011;
	#0.002 data_in = 4'b0100;
	#0.002 data_in = 4'b0101;
	#0.002 data_in = 4'b0110;
	#0.002 data_in = 4'b0111;
end

endmodule
