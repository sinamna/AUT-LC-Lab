`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:30 11/14/2020 
// Design Name: 
// Module Name:    decoder_4_16 
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
module decoder_4_16(
	input EN,
	input I0,
	input I1,
	input I2,
	input I3,
	output O0,
	output O1,
	output O2,
	output O3,
	output O4,
	output O5,
	output O6,
	output O7,
	output O8,
	output O9,
	output O10,
	output O11,
	output O12,
	output O13,
	output O14,
	output O15
    );
	 
	 wire C3, C2, C1, C0;
	 decoder_4_2 
		main ( EN, I3, I2, C0, C1, C2, C3), 
		res0 ( C0, I1, I0, O0, O1, O2, O3), 
		res1 ( C1, I1, I0, O4, O5, O6, O7), 
		res2 ( C2, I1, I0, O8, O9, O10, O11),   
		res3 ( C3, I1, I0, O12, O13, O14, O15);
endmodule
