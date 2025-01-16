`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 22:55:29
// Design Name: 
// Module Name: parallel_adder
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


module parallel_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum_out,
    output carry_out
    );
    
    wire [2:0] c;
    
    full_adder FA1 (
        .a_in(a[0]),
        .b_in(b[0]),
        .c_in(cin),
        .sum_out(sum_out[0]),
        .carry_out(c[0])
    );
    
    full_adder FA2 (
    .a_in(a[1]),
    .b_in(b[1]),
    .c_in(c[0]),
    .sum_out(sum_out[1]),
    .carry_out(c[1])
    );
    full_adder FA3 (
    .a_in(a[2]),
    .b_in(b[2]),
    .c_in(c[1]),
    .sum_out(sum_out[2]),
    .carry_out(c[2])
    );
    full_adder FA4 (
    .a_in(a[3]),
    .b_in(b[3]),
    .c_in(c[2]),
    .sum_out(sum_out[3]),
    .carry_out(carry_out)
    );
    
    
endmodule
