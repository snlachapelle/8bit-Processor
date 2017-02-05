`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:10 02/03/2017
// Design Name:   fulladder_8bit
// Module Name:   C:/Users/dermeisterbun/Documents/FPGA/Verilog/processor/test_fulladder_8bit.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fulladder_8bit;

	// Inputs
	reg [7:0] x;
	reg [7:0] y;
	reg c_in;

	// Outputs
	wire [7:0] o;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder_8bit uut (
		.x(x), 
		.y(y), 
		.c_in(c_in), 
		.o(o), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		  
		// Add stimulus here
		x[0] = 1; y[0] = 0;
		x[1] = 0; y[1] = 1;
		x[2] = 1; y[2] = 0;
		x[3] = 0; y[3] = 1;
		x[4] = 0; y[4] = 0;
		x[5] = 0; y[5] = 1;
		x[6] = 1; y[6] = 0;
		x[7] = 0; y[7] = 0;
		
	end
		
		
      
endmodule

