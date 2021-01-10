`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:56 12/24/2020 
// Design Name: 
// Module Name:    comperator 
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
module comperator(
	input [3:0] pass,
	input [3:0] usin,
	output out
    );
	 
	 /**
	 * Simple compare a 4 bits numbers by xnor gate.
	 *
	 */
	 
	 wire [3:0] res;
	 xnor
		bit_0 (res[0], pass[0], usin[0]),
		bit_1 (res[1], pass[1], usin[1]),
		bit_2 (res[2], pass[2], usin[2]),
		bit_3 (res[3], pass[3], usin[3]);
		
	 and result (out, res[3], res[2], res[1], res[0]);

endmodule
