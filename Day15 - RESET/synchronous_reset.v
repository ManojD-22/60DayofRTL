`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 22:50:25
// Design Name: 
// Module Name: syncronous_reset
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


module syncronous_reset(
    input clk,
    input reset,
    input in,
    output reg out_sync
    );
    
    always@(posedge clk)begin
        if(reset)begin
            out_sync <= 1'b0;
        end
        else
            out_sync <= in;
    end
endmodule
