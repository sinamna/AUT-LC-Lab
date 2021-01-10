`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:48:46 11/28/2020 
// Design Name: 
// Module Name:    mux_2_1 
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
module mux_2_1(
	input I1,
	input I2,
	input C,
	output O
    );
	 // Inside wires
	 wire CP, res1, res2;
	 // Controller prime
	 not cprime (CP, C);
	 // Middle gates
	 and
		and1 (res1, I1, CP),
		and2 (res2, I2, C);
	 // Results	
	 or output_result (O, res1, res2);
endmodule
