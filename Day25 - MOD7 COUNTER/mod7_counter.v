`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 23:31:52
// Design Name: 
// Module Name: mod7_counter
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


module mod7_counter(
    input clk,
    input reset,
    output reg [2:0] count
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            count <= 3'b000;
        end else 
            if(count == 3'b110)
                count <= 3'b000;
            else 
                count <= count + 1;
    end 
endmodule
