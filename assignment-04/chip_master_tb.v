`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// by sina amininasab and amirhossein najafizade
// Create Date:   17:46:51 11/07/2020
// Design Name:   ex_circuit
// Module Name:   F:/Xilinx_install/Projects/Exp4/chip_master_tb.v
// Project Name:  Exp4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module chip_master_tb;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	ex_circuit uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;;
		C = 0;
		// Start
		#10;
		A = 1'b0; B = 1'b0; C = 1'b0;
		#10;
		A = 1'b0; B = 1'b0; C = 1'b1;
		#10;
		A = 1'b0; B = 1'b1; C = 1'b0;
		#10;
		A = 1'b0; B = 1'b1; C = 1'b1;
      #10;
		A = 1'b1; B = 1'b0; C = 1'b0;
		#10;
		A = 1'b1; B = 1'b0; C = 1'b1;
		#10;
		A = 1'b1; B = 1'b1; C = 1'b0;
		#10;
		A = 1'b1; B = 1'b1; C = 1'b1; 
		#10;		
		// Add stimulus here

	end
      
endmodule

