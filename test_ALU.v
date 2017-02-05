`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:57:17 02/03/2017
// Design Name:   ALU
// Module Name:   C:/Users/dermeisterbun/Documents/FPGA/Verilog/processor/test_ALU.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ALU;

	// Inputs
	reg [8:0] a1;
	reg [8:0] a2;
	reg cin;

	// Outputs
	wire [8:0] o;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a1(a1), 
		.a2(a2), 
		.cin(cin), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a1 = 0;
		a2 = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		x[0] = 1; y[0] = 1;
		x[1] = 0; y[1] = 0;
		x[2] = 0; y[2] = 0;
		x[3] = 0; y[3] = 0;
		x[4] = 0; y[4] = 0;
		x[5] = 0; y[5] = 0;
		x[6] = 0; y[6] = 0;
		x[7] = 0; y[7] = 0;

	end
      
endmodule

