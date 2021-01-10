`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:18:29 12/01/2020 
// Design Name: 
// Module Name:    adder_4bits 
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
module adder_4bits_non_delay(
	input [3:0] A,
	input [3:0] B,
	input select,
	output [3:0] sum,
	output carry_out
    );
	
	// Creating 4 , 2 bit adders and connecting them to each
	wire co0, co1, co2;
	 adder_2bits_non_delay
			bits_0 (select, A[0], B[0], select, sum[0], co0),
			bits_1 (co0, A[1], B[1], select, sum[1], co1),
			bits_2 (co1, A[2], B[2], select, sum[2], co2),
			bits_3 (co2, A[3], B[3], select, sum[3], carry_out);

endmodule
