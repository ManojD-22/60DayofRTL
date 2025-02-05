`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2025 23:24:04
// Design Name: 
// Module Name: mod12_counter
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


module mod12_counter(
    input clk,
    input reset,
    output reg [3:0] count
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            count <= 4'b0000;
        end else 
            if(count == 4'b1100)
                count <= 4'b0000;
            else    
                count <= count + 1;
    end
endmodule
