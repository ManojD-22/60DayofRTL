`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2025 23:46:00
// Design Name: 
// Module Name: tb_d_flip_flop
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


module tb_d_flip_flop();
    reg reset;
    reg clk;
    reg din;
    wire dout;
    
    d_flip_flop D(
     .reset(reset),
     .clk(clk),
     .din(din),
     .dout(dout)
    );
    
    
    always #5 clk = ~ clk;
    always #10 reset = ~reset;
    always #15 din = ~din;
    
    initial begin
        din = 0;
        reset = 0;
        clk = 0;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | din : %b | dout : %b ", $time, din, clk , reset, dout);
    end
endmodule
