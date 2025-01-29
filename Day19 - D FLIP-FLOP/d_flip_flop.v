`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2025 23:37:28
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input reset,
    input clk,
    input din,
    output reg dout
    );
    
    always@(posedge clk or posedge reset)begin
        if(reset)begin
            dout <= 1'b0;
        end else begin
            dout <= din;
        end
    end
endmodule
