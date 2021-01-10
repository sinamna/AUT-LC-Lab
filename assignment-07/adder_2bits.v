`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:02 12/01/2020 
// Design Name: 
// Module Name:    adder_2bits 
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
module adder_2bits(
	input Cin,
	input A,
	input B,
	input select,
	output Sum,
	output Cout
    );
	
	// First we choose the selected B
	wire b_result;

	xor #(10) import_select (b_result, B, select);
	
	// Then we give all the selections into full adder
	full_adder
		add_2_bit (Cin, A, b_result, Sum, Cout);

endmodule
