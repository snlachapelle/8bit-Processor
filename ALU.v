`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:45:39 02/03/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [8:0] a1,
	input [8:0] a2,
	input cin,
	output [8:0] o
    );
	 
	 wire cout;
	 wire [8:0] temp_out ;
	
	fulladder_8bit f1 (a1, a2, cin, temp_out, cout);
	
	
	/*for(genvar i = 0; i < 64; i = i + 1) begin
		f1 (a1, temp_out, cin, temp_out, cout);
		assign o = temp_out;
	end*/

endmodule
