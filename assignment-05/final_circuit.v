`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:00 11/14/2020 
// Design Name: 
// Module Name:    final_circuit 
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
module final_circuit(
	input EN,
	input a,
	input b,
	input c,
	input d,
	output f
    );
	 
	 wire [0:15] D;
	 decoder_4_16 decode ( EN, d, c, b, a, D[0], D[1], D[2], D[3], D[4], D[5], D[6], D[7], D[8], D[9], D[10], D[11], D[12], D[13], D[14], D[15]);
	 
	 or result (f, D[2], D[3], D[5], D[7], D[11], D[13]);


endmodule
