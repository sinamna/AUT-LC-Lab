`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:05:33 11/14/2020
// Design Name:   decoder_2_4
// Module Name:   F:/Xilinx_install/Projects/Exp5/Exp_5/decoder_24__tb.v
// Project Name:  Exp_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_2_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_24__tb;

	// Inputs
	reg EN;
	reg A1;
	reg A2;

	// Outputs
	wire D0;
	wire D1;
	wire D2;
	wire D3;

	// Instantiate the Unit Under Test (UUT)
	decoder_2_4 uut (
		.EN(EN), 
		.A1(A1), 
		.A2(A2), 
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3)
	);

	initial begin
		// Initialize Inputs
		EN = 0;
		A1 = 0;
		A2 = 0;

		// Wait 100 ns for global reset to finish
		EN = 1'b0; A2 = 1'b0; A1 = 1'b0;
		#10;
		EN = 1'b0; A2 = 1'b0; A1 = 1'b1;
		#10;
		EN = 1'b0; A2 = 1'b1; A1 = 1'b0;
		#10;
		EN = 1'b0; A2 = 1'b1; A1 = 1'b1;
      #10;
		EN = 1'b1; A2 = 1'b0; A1 = 1'b0;
		#10;
		EN = 1'b1; A2 = 1'b0; A1 = 1'b1;
		#10;
		EN = 1'b1; A2 = 1'b1; A1 = 1'b0;
		#10;
		EN = 1'b1; A2 = 1'b1; A1 = 1'b1;
        
		// Add stimulus here

	end
      
endmodule

