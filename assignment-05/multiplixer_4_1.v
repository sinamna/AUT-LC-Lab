`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:54 11/10/2020 
// Design Name: 
// Module Name:    multiplixer_4_1 
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
module multiplixer_4_1(
	input S1,
	input S2,
	input I0,
	input I1,
	input I2,
	input I3,
	output y
    );
	 
	wire S1P, S2P, d0, d1, d2, d3;
	not
		n1 (S1P, S1),
		n2 (S2P, S2);
	and
		a0 (d0, S1P, S2P),
		a1 (d1, S1, S2P),
		a2 (d2, S1P, S2),
		a3 (d3, S1, S2);
	or result (y, d0, d1, d2, d3);
	
endmodule
