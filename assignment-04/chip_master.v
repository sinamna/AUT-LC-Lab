`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// by sina amininasab and amirhossein najafizade
// Create Date:    17:27:27 11/07/2020 
// Design Name: 
// Module Name:    chip_master 
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
module ex_circuit(A,B,C,f);
    input A, B, C;
    output f;
    // Not wires
    wire ap, bp, cp;
    not a_not(ap, A);
    not b_not(bp, B);
    // First xor
    wire ap_B, bp_A;
    and ap_B_or(ap_B, ap, B);
    and bp_A_or(bp_A, bp, A);
    wire r, rp; // An output holder
    or xor_ab(r, ap_B, bp_A); // First xor output
    // Second xor
    wire cp_r, rp_c;
    not c_not(cp, C);
    not r_not(rp, r);
    and cp_r_or(cp_r, r, cp);
    and rp_c_or(rp_c, rp, C);
	 wire result;
    or xor_cr(result, cp_r, rp_c); 
	 not final_xnor(f, result); // Final output
endmodule
