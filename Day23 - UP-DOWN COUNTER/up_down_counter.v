`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 23:30:13
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input reset,
    input clk,
    input up_down,
    output reg [2:0] count
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            count <= 3'b000;
        end else if(up_down)begin
            count <= count + 1;
        end else 
            count <= count - 1;
    end
endmodule
