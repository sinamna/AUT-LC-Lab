`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:06 11/10/2020 
// Design Name: 
// Module Name:    decoder_4_2 
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
module decoder_4_2(
	input EN,
	input A1,
	input A2,
	output D0,
	output D1,
	output D2,
	output D3
    );
	wire A1P, A2P;
	not
		n1 (A1P, A1),
		n2 (A2P, A2);
	and
		a1 (D0, A2P, A1P, EN),
		a2 (D1, A2, A1P, EN),
		a3 (D2, A2P, A1, EN),
		a4 (D3, A2, A1, EN);
endmodule
