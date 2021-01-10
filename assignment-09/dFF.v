`timescale 1ns / 1ps

/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831009
--  Student Name: Sina Amininasab
--  Student Mail: sina3050@gmail.com
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: D Flip Flop
---  Description: Lab 09 Part 1
-----------------------------------------------------------*/
module dFF(
	input rst,
	input clk,
	input din,
	output reg dout,
	output reg qdout
    );
	 
	// A behavioral model
	always @ ( negedge clk ) begin
		if ( rst ) begin
			dout <= 1'b0;
			qdout <= 1'b1;
		end
		else begin
			dout <= din;
			qdout <= ~ din;
		end
	end
	
endmodule
