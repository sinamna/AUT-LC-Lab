`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:56 12/05/2020 
// Design Name: 
// Module Name:    full_adder_non_delay 
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
module full_adder_non_delay(
	input Cin,
	input A,
	input B,
	output S,
	output Cout
    );
	
	// First adding A and B
	wire ABsum;
	xor
		sumation(ABsum, A, B),
		sum_result(S, ABsum, Cin);
	
	// Then we calculate the carry out states
	wire ABand, Cresult;
	and 
		ab (ABand, A, B),
		cinresult (Cresult, ABsum, Cin);
	
	// Giving carry out result
	or coutresult (Cout, ABand, Cresult);

endmodule
