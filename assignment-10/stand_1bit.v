`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:25 12/26/2020 
// Design Name: 
// Module Name:    stand_1bit 
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
module stand_1bit(
   input clk,
	input enable,
	input din,
	output reg dout
    );
	 
	 /** 
	 * Always checking for positive edge of clock to make the changes
	 * on output , based on the input and register enable status.
	 *
	 */
	 always @ ( posedge clk ) begin
		if ( enable ) dout <= din;
	 end

endmodule
