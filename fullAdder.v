`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:58 02/03/2017 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(
	input a, b, c_in,
	output sum, c_out
	);
	
	wire s1, c1, c2;
	
	halfAdder h1(a, b, s1, c1);
	halfAdder h2 (s1, c_in, sum, c2);
	assign c_out = c1 | c2;
	
endmodule