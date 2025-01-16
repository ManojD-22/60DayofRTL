`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 01:39:53
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg a_in;
reg b_in;
wire sum_out;
wire carry_out;

Half_Adder H1(
    .a_in(a_in),
    .b_in(b_in),
    .sum_out(sum_out),
    .carry_out(carry_out)
);

always #10 a_in = ~a_in;
always #20 b_in = ~b_in;

initial begin
    a_in = 1'b0;
    b_in = 1'b0;
    
    #500 $finish;
end

initial begin
     $monitor("Time: %0t | a_in: %b | b_in: %b | sum_out: %b | carry_out: %b", 
                 $time, a_in, b_in, sum_out, carry_out);
end
endmodule
