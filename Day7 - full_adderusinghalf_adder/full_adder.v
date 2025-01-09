`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 00:45:15
// Design Name: 
// Module Name: full_adder_using_half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_using_half_adder(
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out
    );
    
    wire c1,c2,s1;
     
    Half_Adder HA1(
        .a_in(a_in),
        .b_in(b_in),
        .sum_out(s1),
        .carry_out(c1)
    );
    
    Half_Adder HA2(
        .a_in(s1),
        .b_in(c_in),
        .sum_out(sum_out),
        .carry_out(c2)
    );
    
    assign carry_out = c1 | c2;
endmodule
