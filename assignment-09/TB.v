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
---  Module Name: Sequential Circuit Testbench
---  Description: Lab 09 Part 1 Testbench
-----------------------------------------------------------*/

module TB;

	// Inputs
	reg A;
	reg B;
	reg clk;
	reg rst;

	// Outputs
	wire Y;
	wire Z;
	wire QD;

	// Instantiate the Unit Under Test (UUT)
	seq_circuit uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.Y(Y), 
		.Z(Z),
		.QD(QD)
	);
	
	initial 
		begin
		
		clk = 1'b0; A = 1'b0; B = 1'b0;
		
		rst = 1'b1;
		# 10
		rst = 1'b0;
		
		# 10
		clk = 1'b1; A = 1'b0; B = 1'b0;
		# 10
		clk = 1'b0; A = 1'b0; B = 1'b1;
		# 10
		clk = 1'b1; A = 1'b1; B = 1'b1;
		# 10
		clk = 1'b0; A = 1'b1; B = 1'b1;
		# 10
		clk = 1'b1; A = 1'b0; B = 1'b1;
		# 10
		clk = 1'b0; A = 1'b0; B = 1'b1;
		# 10
		clk = 1'b1; A = 1'b0; B = 1'b0;
		# 10
		clk = 1'b0; A = 1'b1; B = 1'b0;
		# 10
		clk = 1'b1; A = 1'b1; B = 1'b0;
		# 10
		clk = 1'b0; A = 1'b1; B = 1'b0;
		# 10
		clk = 1'b1; A = 1'b1; B = 1'b1;
		# 10
		clk = 1'b0; A = 1'b0; B = 1'b0;
		# 10
		clk = 1'b1; A = 1'b0; B = 1'b0;
		# 10
		clk = 1'b0; A = 1'b0; B = 1'b0;
		# 10
		clk = 1'b1; A = 1'b0; B = 1'b1;
		# 10
		clk = 1'b0; A = 1'b1; B = 1'b1;
		# 10
		clk = 1'b1; A = 1'b1; B = 1'b1;
		
		
		$finish;

		end
		
endmodule

