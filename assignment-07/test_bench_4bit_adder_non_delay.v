`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:02 12/05/2020
// Design Name:   adder_4bits_non_delay
// Module Name:   F:/Xilinx_install/Projects/Exp7/Exp_7/test_bench_4bit_adder_non_delay.v
// Project Name:  Exp_7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_4bits_non_delay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench_4bit_adder_non_delay;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg select;

	// Outputs
	wire [3:0] sum;
	wire carry_out;

	// Instantiate the Unit Under Test (UUT)
	adder_4bits_non_delay uut (
		.A(A), 
		.B(B), 
		.select(select), 
		.sum(sum), 
		.carry_out(carry_out)
	);

	initial 
		begin
			// Initialize Inputs
			select = 0;

			// Start giving numbers
			// Sumation
			A = 4'b0001; B = 4'b0001;
			# 200
			A = 4'b0011; B = 4'b1010;
			# 200
			A = 4'b1011; B = 4'b1010;
			# 200
			A = 4'b1111; B = 4'b1111;
			# 200
			
			// Start giving numbers
			// Subtractor
			select = 1;
			A = 4'b0001; B = 4'b0001;
			# 200
			A = 4'b0011; B = 4'b1010;
			# 200
			A = 4'b1011; B = 4'b1010;
			# 200
			A = 4'b1111; B = 4'b1111;
			# 200
			$finish;
		end   
endmodule

