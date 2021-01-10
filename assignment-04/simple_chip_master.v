`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// by sina amininasab and amirhossein najafizade
// Create Date:    18:17:24 11/07/2020 
// Design Name: 
// Module Name:    simple_chip_master 
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
    input A,B,C;
    output f;
    wire ap, bp, cp, o1, o2, o3, o4;
    not a_not(ap, A);
    not b_not(bp, B);
    not c_not(cp, C);
    and output_1(o1, ap, bp, cp);
    and output_2(o2, ap, B, C);
    and output_3(o3, A, bp, C);
    and output_4(o4, A, B, cp);
    or result(f, o1, o2, o3, o4);
endmodule
