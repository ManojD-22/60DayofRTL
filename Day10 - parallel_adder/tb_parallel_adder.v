`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 23:11:21
// Design Name: 
// Module Name: tb_parallel_adder
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


module tb_parallel_adder();

    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum_out;
    wire carry_out;
    
    
    parallel_adder PLA(
    .a(a),
    .b(b),
    .cin(cin),
    .sum_out(sum_out),
    .carry_out(carry_out)
    );
    
    always #10 a = a + 1;
    always #20 b = b + 1;
    always #30 cin = ~cin;
    
    initial begin
        a = 4'b0000;
        b = 4'b0000;
        cin = 1'b0;
        
        #500 $finish;
    end
    
    initial begin
        $monitor("%t | a : %b | b : %b | cin : %b | sum_out : %b | carry_out :%b ", $time ,a , b , cin , sum_out, carry_out);
    end
endmodule
