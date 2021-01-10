`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:06 11/28/2020
// Design Name:   Comparator_8_bits
// Module Name:   F:/Xilinx_install/Projects/Exp6/Exp_6/Comparator_8_bits_tb.v
// Project Name:  Exp_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator_8_bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comparator_8_bits_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire gt;
	wire eq;

	// Instantiate the Unit Under Test (UUT)
	Comparator_8_bits uut (
		.A(A), 
		.B(B), 
		.l(l), 
		.e(e), 
		.g(g), 
		.lt(lt), 
		.gt(gt), 
		.eq(eq)
	);

	initial 
		begin
			//////////
			A = 8'b00111001;
			B = 8'b00111001;
			
			l = 1'b0;
			e = 1'b1;
			g = 1'b0;
			# 10 ;
			l = 1'b1;
			e = 1'b0;
			g = 1'b0;
			# 10 ;
			l = 1'b0;
			e = 1'b0;
			g = 1'b1;
			# 20 ;
			//////////////////
			A = 8'b10100010;
			B = 8'b10100001;
			
			l = 1'b0;
			e = 1'b1;
			g = 1'b0;
			# 10 ;
			l = 1'b1;
			e = 1'b0;
			g = 1'b0;
			# 10 ;
			l = 1'b0;
			e = 1'b0;
			g = 1'b1;
			# 20 ;
			//////////////////
			A = 8'b10100001;
			B = 8'b10100010;
			
			l = 1'b0;
			e = 1'b1;
			g = 1'b0;
			# 10 ;
			l = 1'b1;
			e = 1'b0;
			g = 1'b0;
			# 10 ;
			l = 1'b0;
			e = 1'b0;
			g = 1'b1;
			# 20 ;
			$finish;
		end
endmodule

