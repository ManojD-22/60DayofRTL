`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 23:56:04
// Design Name: 
// Module Name: serial_in_parallel_out
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


module serial_in_parallel_out(
    input clk,
    input reset,
    input serial_in,
    output reg [3:0] parallel_out
    );
    
    always@(posedge clk or posedge reset)begin
        if(reset)begin
            parallel_out <= 4'b0000;
        end else
            parallel_out <= {parallel_out[2:0], serial_in};
    end
    
    
endmodule