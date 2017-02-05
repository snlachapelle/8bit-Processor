`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:00:19 02/03/2017
// Design Name:   halfadder
// Module Name:   C:/Users/dermeisterbun/Documents/FPGA/Verilog/processor/test_halfAdder.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_halfAdder;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	halfAdder uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

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

	end
      
endmodule

