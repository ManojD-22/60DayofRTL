`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 00:14:21
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter #(parameter N = 4)();
    reg reset;
    reg clk;
    wire [N-1:0] counter;
    
    ring_counter #(4) RC(
    .reset(reset),
    .clk(clk),
    .counter(counter) 
    );
    
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        
        #10 reset = 0;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | counter : %b",$time,clk, reset, counter);
        
        
    end
    
    
endmodule
