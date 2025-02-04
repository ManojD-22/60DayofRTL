`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 23:43:27
// Design Name: 
// Module Name: tb_mod7_counter
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


module tb_mod7_counter();
    reg clk;
    reg reset;
    wire [2:0] count;
    
    mod7_counter MD(
    .clk(clk),
    .reset(reset),
    .count(count)
    );
    
    always #5 clk = ~clk ;
  
    
    initial begin
        clk = 0;
        reset = 0;
       
       
       #10 reset = 1;
       
       #100 $finish;
    end
    
    initial begin
        $monitor("%t , clk , reset ,  count ", $time, clk , reset, count);
    end
    
endmodule
