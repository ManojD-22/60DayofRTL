`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 23:49:27
// Design Name: 
// Module Name: tb_jk_flip_flop
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


module tb_jk_flip_flop();
    reg reset;
    reg clk;
    reg j;
    reg k;
    wire q;
    
    jk_flip_flop JK(
    .reset(reset),
    .clk(clk),
    .j(j),
    .k(k),
    .q(q)
    );
    
    always #5 clk = ~clk;
    always #10 reset = ~reset;
    always #15 j = ~j;
    always #20 k = ~k;
    
    initial begin
        j = 0;
        k = 0;
        clk = 0;
        reset = 0;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | j :%b | k : %b | clk : %b | reset :%b | q : %b ", $time , j , k , clk, reset , q);
    end
    
endmodule
