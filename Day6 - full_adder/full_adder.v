`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 01:04:58
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out
    );
    
    assign sum_out = a_in ^ b_in ^ c_in;
    assign carry_out = (a_in & b_in) | c_in&(a_in ^ b_in); 
 
endmodule
