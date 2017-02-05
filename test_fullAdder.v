`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:46 02/03/2017
// Design Name:   fulladder
// Module Name:   C:/Users/dermeisterbun/Documents/FPGA/Verilog/processor/test_fullAdder.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fullAdder;

	// Inputs
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	fullAdder uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50
		a = 1;
		#50
		a = 0;
		b = 1;
		#50
		a = 1;
		b = 1;
		#50
		a = 0;
		b = 0;
		#50
		a = 1;
		c_in = 1;
		#50
		a = 0;
		b = 1;
		c_in = 1;
		#50
		a = 1;
		b = 1;
		c_in = 1;
		#50
		a = 0;
		b = 0;
		c_in = 0;

	end
      
endmodule

