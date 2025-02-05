`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2025 23:40:33
// Design Name: 
// Module Name: tb_mod12_counter
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


module tb_mod12_counter();
    reg clk;           
    reg reset;          
    wire [3:0] count;
    
    mod12_counter MD(
    .clk(clk),
    .reset(reset),
    .count(count)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 0;
        
        #10 reset =1;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | clk :%b | reset : %b | count : %b ",$time,clk, reset, count);
    end
endmodule
