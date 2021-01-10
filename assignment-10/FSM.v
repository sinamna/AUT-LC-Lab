`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:58 12/24/2020 
// Design Name: 
// Module Name:    FSM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FSM(
	input [3:0] machine_pass,
	input clk,
	input confirm,
	input request,
	input [3:0] password,
	input d,
	output even_enable,
	output odd_enable
    );
	 
	 /**
	 * The FSM circuit which will manage the process of user inputs,
	 * and change the outputs if needed.
	 * Using 3 D-FFs and 1 comperator.
	 *
	 */
	 
	 // The password comparator
	 wire p, pp;
	 comperator pass_check (machine_pass, password, p);
	 not p_prime (pp, p);
	 
	 
	 // FlipFlops inputs and outputs
	 wire q0, q0p, q1, q1p, q2, q2p, in0, in1, in2;
	 not 
		prime_0 (q0p, q0),
		prime_1 (q1p, q1),
		prime_2 (q2p, q2);
	 
	 // N2 Flip Flop input
	 wire n2_middle_wire;
	 or n2_middle (n2_middle_wire, q2, confirm);
	 and n2_input (in2, q0, q1p, request, n2_middle_wire);
	 
	 // N1 Flip Flop input
	 wire n1_middle_wire;
	 or n1_middle (n1_middle_wire, q2, pp);
	 and n1_input (in1, q0, q1p, request, confirm, n1_middle_wire);
	 
	 // N0 Flip Flop input
	 wire n0_middle_wire_1, n0_middle_wire_2, CP;
	 not c_prime (CP, confirm);
	 and n0_middle_1 (n0_middle_wire_1, q0, CP);
	 or n0_middle_2 (n0_middle_wire_2, q2p, n0_middle_wire_1);
	 and n0_input (in0, q1p, request, n0_middle_wire_2);
	 
	 
	 // Flip Flops instantiates
	 D_FF
		n0 (clk, in0, q0),
		n1 (clk, in1, q1),
		n3 (clk, in2, q2);
	
		
	 // Output functions
	 wire dp;
	 not d_prime (dp, d);
	 and 
		even_output (even_enable, q2, q1p, q0, request, confirm, dp),
		odd_output (odd_enable, q2, q1p, q0, request, confirm, d);
	 


endmodule
