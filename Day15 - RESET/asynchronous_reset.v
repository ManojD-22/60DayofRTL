`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 23:07:09
// Design Name: 
// Module Name: asyncronous_reset
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


module asynchronous_reset(
    input clk,
    input reset,
    input din,
    output reg dout
    );
    
    always@(posedge clk or posedge reset)
        begin
            if(reset)
                dout <= 1'b0;
            else
                dout <= din;
        end
            
endmodule
