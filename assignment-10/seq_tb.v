`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:15:25 12/26/2020
// Design Name:   seq_circuit
// Module Name:   F:/Xilinx_install/Projects/Exp10/Exp10/seq_tb.v
// Project Name:  Exp10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_tb;

	// Inputs
	reg [3:0] machine_pass;
	reg clk;
	reg confirm;
	reg request;
	reg [3:0] password;
	reg [3:0] data;

	// Outputs
	wire [3:0] ODOUT;
	wire [3:0] EDOUT;

	// Instantiate the Unit Under Test (UUT)
	seq_circuit uut (
		.machine_pass(machine_pass), 
		.clk(clk), 
		.confirm(confirm), 
		.request(request), 
		.password(password), 
		.data(data), 
		.ODOUT(ODOUT), 
		.EDOUT(EDOUT)
	);

	initial begin
		// Clock intialize
		clk = 0;
		repeat (120)
			#2 clk = ~ clk;
	end
	
	initial begin
		// Initialize Inputs
		machine_pass = 4'b1010;
		confirm = 0;
		request = 0;
		password = 4'b1000;
		data = 4'b0001;
		
		// Defining a process
		# 10
		request = 1;
		# 20
		confirm = 1;
		# 20
		confirm = 1;
		# 20
		request = 0;
		confirm = 0;
		# 20
		password = 4'b1010;
		request = 1;
		confirm = 1;
		# 20
		data = 4'b0000;
		confirm = 1;
		# 20
		request = 0;
		confirm = 0;
		# 20
		password = 4'b1010;
		request = 1;
		confirm = 1;
		# 20
		data = 4'b0011;
		confirm = 0;
		# 20
		request = 0;
		
		confirm = 0;
		# 20
		password = 4'b1010;
		request = 1;
		confirm = 1;
		# 20
		data = 4'b0011;
		confirm = 1;
		# 20
		request = 0;
		$finish;
		
	end
      
endmodule

