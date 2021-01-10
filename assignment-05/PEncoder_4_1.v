`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:13 11/10/2020 
// Design Name: 
// Module Name:    PEncoder_4_1 
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
module PEncoder_4_1(
	input I0,
	input I1,
	input I2,
	input I3,
	output O1,
	output O2,
	output V
    );
	 wire I2P, I2I1;
	 not n0 (I2P, I2);
	 and a0 (I2I1, I1, I2P);
	 or
		o0 (O1, I3, I2I1),
		o1 (O2, I3, I2),
		valid (V, O2, I1, I0);
endmodule
