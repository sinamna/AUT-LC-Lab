`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:53 12/05/2020
// Design Name:   adder_2bits
// Module Name:   F:/Xilinx_install/Projects/Exp7/Exp_7/test_bench_2bit.v
// Project Name:  Exp_7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_2bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench_2bit;

	// Inputs
	reg Cin;
	reg A;
	reg B;
	reg select;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	adder_2bits uut (
		.Cin(Cin), 
		.A(A), 
		.B(B), 
		.select(select), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		Cin = 0;
		A = 0;
		B = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		A = 2'b01; B = 2'b01;
		# 200
		A = 2'b11; B = 2'b10;
		# 200
		A = 2'b11; B = 2'b11;
		# 200
		A = 2'b10; B = 2'b01;
		
		select = 1;
        
		A = 2'b01; B = 2'b01;
		# 200
		A = 2'b11; B = 2'b10;
		# 200
		A = 2'b11; B = 2'b11;
		# 200
		A = 2'b10; B = 2'b01;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

