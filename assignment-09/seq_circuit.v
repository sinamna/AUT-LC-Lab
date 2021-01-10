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
--  Student Mail:  sina3050@gmail.com
--  ***************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Sequential Circuit
---  Description: Lab 09 Part 2
-----------------------------------------------------------*/
module seq_circuit(
	input A,
	input B,
	input clk,
	input rst,
	output Y,
	output Z,
	output QD
    );
	 
	 // Flip flop outputs
	 wire QU, QUP, QDP; // As Q up and Q up prime and ...
	 
	 // Now we define the connecting wires
	 wire S, R, inDU, inDD;
	 
	 // The S result
	 and s_result(S, B, QDP);
	 
	 // Input of up flip flop 
	 or u_input (inDU, A, S);
	 
	 // Input of down flip flop
	 nor d_input (inDD, inDU, QUP);
	 
	 // Up flip flop
	 dFF 
		up_flip_flop (rst, clk, inDU, QU, QUP),
		down_flip_flop (rst, clk, inDD, QD, QDP);
	 
	 
	 // The R result
	 and r_result(R, QDP, B);
	 
	 // Giving the y result
	 assign Y = QU;
	 
	 // The Z result
	 or final_result(Z, R, QUP);

endmodule
