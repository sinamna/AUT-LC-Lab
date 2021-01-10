`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:39 12/24/2020 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(
	input clk,
	input qin,
	output reg qout
    );
	 
	 /**
	 * Creating a D-FlipFlop by data flow design.
	 *
	 */
	always @ ( posedge clk ) begin
		qout <= qin;
	end
	

endmodule
