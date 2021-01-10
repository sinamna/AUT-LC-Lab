`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:27 11/17/2020
// Design Name:   Comparator_3_bits
// Module Name:   F:/Xilinx_install/Projects/Exp6/Exp_6/comparator_3bits_tb.v
// Project Name:  Exp_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator_3_bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_3bits_tb;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire eq;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	Comparator_3_bits uut (
		.A(A), 
		.B(B), 
		.l(l), 
		.e(e), 
		.g(g), 
		.lt(lt), 
		.eq(eq), 
		.gt(gt)
	);

	initial 
		begin 
			//////////
			A = 3'b001;
			B = 3'b001;
			
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
			A = 3'b010;
			B = 3'b001;
			
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
			A = 3'b001;
			B = 3'b010;
			
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
			# 20;
			$finish
      end
endmodule

