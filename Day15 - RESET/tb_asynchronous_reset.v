`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 23:18:04
// Design Name: 
// Module Name: tb_asynchronous_reset
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


module tb_asynchronous_reset();
    reg clk;
    reg din;
    reg reset;
    wire dout;
    
    asynchronous_reset asyn(
    .clk(clk),
    .reset(reset),
    .din(din),
    .dout(dout)
    );
    
    
    always #10 clk = ~clk;
    always #20 reset = ~reset;
    always #30 din = ~din;
    
    initial begin
        clk = 0;
        reset = 0;
        din = 0;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | din : %b  | dout :%b ", $time, clk , reset, din, dout );
    end
    
    
    
    
endmodule
