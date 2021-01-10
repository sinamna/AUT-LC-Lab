`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:54 11/17/2020 
// Design Name: 
// Module Name:    Comparator_3_bits 
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
module Comparator_3_bits(
	input [2:0] A,
	input [2:0] B,
	input l,
	input e,
	input g,
	output lt,
	output eq,
	output gt
    );
	wire pre_eq, pre_lt, pre_gt;
	
	wire [2:0] xnors;
	// The three xnors of each two bits
	xnor
		x0 (xnors[0], A[0], B[0]),
		x1 (xnors[1], A[1], B[1]),
		x2 (xnors[2], A[2], B[2]);
	// Equality reslut
	and equal (pre_eq, xnors[0], xnors[1], xnors[2]);
	
	// Create prime of the B inputs
	wire [2:0] bnot;
	not 
		n0 (bnot[0], B[0]),
		n1 (bnot[1], B[1]),
		n2 (bnot[2], B[2]);
	
	// Get the results of A greater than B
	wire [2:0] a_gt_b;
	and
		a2 (a_gt_b[2], A[2], bnot[2]),
		a0 (a_gt_b[1], A[1], bnot[1], xnors[2]),
		a1 (a_gt_b[0], A[0], bnot[0], xnors[2], xnors[1]);
	or agtb (pre_gt, a_gt_b[0], a_gt_b[1], a_gt_b[2]);
	
	// Get the result of A less than B
	nor altb (pre_lt, pre_eq, pre_gt);
	
	// Result choosing base on equality ( result of pre_eq )
	mux_2_1
		equality (pre_eq, e, pre_eq, eq),
		greaterthan (pre_gt, g, pre_eq, gt),
		lessthan (pre_lt, l, pre_eq, lt);

endmodule
