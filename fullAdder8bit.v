`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:33 02/03/2017 
// Design Name: 
// Module Name:    fullAdder8bit 
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

module fulladder_8bit(
	input [7:0] x,
	input [7:0] y,
	input c_in,
	output [7:0] o,
	output cout
	);
	
	wire [7:0] carry;
	wire [7:0] temp_out;
	
	/*genvar i;
	for (i = 0; i < 7; i = i + 1) begin
	
	end*/
	
	fullAdder f1 (x[0], y[0], c_in, temp_out[0], carry[0]);
	fullAdder f2 (x[1], y[1], carry[0], temp_out[1], carry[1]);
	fullAdder f3 (x[2], y[2], carry[1], temp_out[2], carry[2]);
	fullAdder f4 (x[3], y[3], carry[2], temp_out[3], carry[3]);
	fullAdder f5 (x[4], y[4], carry[3], temp_out[4], carry[4]);
	fullAdder f6 (x[5], y[5], carry[4], temp_out[5], carry[5]);
	fullAdder f7 (x[6], y[6], carry[5], temp_out[6], carry[6]);
	fullAdder f8 (x[7], y[7], carry[6], temp_out[7], carry[7]);
	
	assign o = temp_out;
	
	assign cout = carry[7];
endmodule
