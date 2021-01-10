/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
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
---  Module Name: Multiplexer 4bit 4 to 1
---  Description: Lab 08 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module multiplexer4x4 (
	input [3:0] w3 ,
	input [3:0] w2 ,
	input [3:0] w1 ,
	input [3:0] w0 ,
	input [1:0]	sel ,
	output [3:0] y
);
	assign y=sel[0]?sel[1]?w3 : w1 : sel[1]? w2:w0;

endmodule
