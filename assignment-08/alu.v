  
/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831009 
--  Student Name: Sina amininasab
--  Student Mail: sina3050@gmail.com
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Arithmetic and Logic Unit
---  Description: Lab 08
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module alu (
	input [1:0] A ,
	input [1:0] B ,
	input [1:0]	sel ,
	output [3:0] Y
);

	/* write your code here */
	wire [3:0] not_wire,nand_wire;
	logic_unit lu(A,B,nand_wire,not_wire);
	
	wire [3:0] sum_wire, multiply_wire;
	arithmetic_unit au(A,B,sum_wire,multiply_wire);
	
	/* write your code here */


	// use multiplexer4x4 here
	multiplexer4x4 multi(multiply_wire,sum_wire,nand_wire,not_wire,sel,Y);
	
	
	
endmodule
