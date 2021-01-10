`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:20:45 11/14/2020
// Design Name:   final_circuit
// Module Name:   F:/Xilinx_install/Projects/Exp5/Exp_5/circuit_test_bench.v
// Project Name:  Exp_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: final_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module circuit_test_bench;

	// Inputs
	reg EN;
	reg A0;
	reg A1;
	reg A2;
	reg A3;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	final_circuit uut (
		.EN(EN), 
		.a(A0), 
		.b(A1), 
		.c(A2), 
		.d(A3), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		EN = 0;
		A0 = 0;
		A1 = 0;
		A2 = 0;
		A3 = 0;

		// Wait 100 ns for global reset to finish
		  EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b0 ; A2 = 1'b0 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b0 ; A2 = 1'b0 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b0 ; A2 = 1'b1 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b0 ; A2 = 1'b1 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b1 ; A2 = 1'b0 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b1 ; A2 = 1'b0 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b1 ; A2 = 1'b1 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b0 ; A1 = 1'b1 ; A2 = 1'b1 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b0 ; A2 = 1'b0 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b0 ; A2 = 1'b0 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b0 ; A2 = 1'b1 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b0 ; A2 = 1'b1 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b1 ; A2 = 1'b0 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b1 ; A2 = 1'b0 ; A3 = 1'b1;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b1 ; A2 = 1'b1 ; A3 = 1'b0;
        #100;
        EN = 1'b1 ; A0 = 1'b1 ; A1 = 1'b1 ; A2 = 1'b1 ; A3 = 1'b1;
        #100;

		
        
		// Add stimulus here

	end
      
endmodule

