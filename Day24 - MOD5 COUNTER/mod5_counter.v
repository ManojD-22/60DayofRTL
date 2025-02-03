`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 23:29:17
// Design Name: 
// Module Name: mod5_counter
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


module mod5_counter(
    input clk,
    input reset,
    output reg [2:0] d_out
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            d_out <= 3'b000;
        end else begin
            if(d_out == 3'b100)
                d_out <= 3'b000;
            else
                d_out <= d_out + 1;
        end
    end
endmodule
