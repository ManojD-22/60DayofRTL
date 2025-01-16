`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 01:35:00
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a_in;
reg b_in;
reg c_in;
wire sum_out;
wire carry_out;

full_adder DUT (
    .a_in(a_in),
    .b_in(b_in),
    .c_in(c_in),
    .sum_out(sum_out),
    .carry_out(carry_out)
);

always #10 a_in = ~a_in;
always #20 b_in = ~b_in;
always #30 c_in = ~c_in;

    initial begin
        a_in = 1'b0;
        b_in = 1'b0;
        c_in = 1'b0;
        
        #500 $finish;
    end

    initial begin
        $monitor("Time: %0t | a_in: %b | b_in: %b | c_in: %c | sum_out: %b | carry_out: %b", 
                 $time, a_in, b_in, c_in, sum_out, carry_out);
    end
endmodule
