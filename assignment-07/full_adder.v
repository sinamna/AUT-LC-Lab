`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:25 12/01/2020 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
	input Cin,
	input A,
	input B,
	output S,
	output Cout
    );
	
	// First adding A and B
	wire ABsum;
	xor #(10)
		sumation(ABsum, A, B),
		sum_result(S, ABsum, Cin);
	
	// Then we calculate the carry out states
	wire ABand, Cresult;
	and #(5)
		ab (ABand, A, B),
		cinresult (Cresult, ABsum, Cin);
	
	// Giving carry out result
	or #(5) coutresult (Cout, ABand, Cresult);

endmodule
