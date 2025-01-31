`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2025 23:45:25
// Design Name: 
// Module Name: up_counter
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


module up_counter(
    input clk,
    input reset,
    input data,
    output reg [3:0] data_out
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            data_out <= 4'b0000;
        end else begin
            data_out <= data_out + 1;
        end
        
    end
endmodule
