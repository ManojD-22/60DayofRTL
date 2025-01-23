`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 22:54:40
// Design Name: 
// Module Name: tb_syncronous_reset
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


module tb_syncronous_reset();
    reg clk;
    reg reset;
    reg in;
    wire out_sync;
    
    syncronous_reset syc(
    .clk(clk),
    .reset(reset),
    .in(in),
    .out_sync(out_sync)
    );
    
    always #10 clk = ~clk;
    always #20 in = ~in;
    always #30 reset = ~reset;
 
    
    initial begin
        in = 0;
        reset = 0;
        clk = 0;
    end
    
    initial begin
        $monitor("%t | in : %b |reset : %b | clk : %b" , $time, in , reset, clk);
    end
endmodule
