`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:21 12/19/2020 
// Design Name: 
// Module Name:    stand_4bits 
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
module stand_4bits(
	input clk,
	input enable,
	input [3:0] din,
	output [3:0] dout
    );
	 
	 /** 
	 * Input is a 4 bit vector and output is also a 4 bit vector.
	 * Based on 4 , 1 bit stands
	 *
	 */
	 
	 // Creating some connecting wires
	 reg [3:0] d;
	 
	 // Our 1 bits registers
	 stand_1bit
		ffd0 (clk, enable, d[0], dout[0]),
		ffd1 (clk, enable, d[1], dout[1]),
		ffd2 (clk, enable, d[2], dout[2]),
		ffd3 (clk, enable, d[3], dout[3]);
	
	 // Dataflow of 4 bit stand
	 always @ ( posedge clk ) begin
		d[0] <= din[0];
		d[1] <= din[1];
		d[2] <= din[2];
		d[3] <= din[3];
	 end

endmodule
