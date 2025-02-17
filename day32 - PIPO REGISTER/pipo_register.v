`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 22:47:01
// Design Name: 
// Module Name: pipo_register
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


module pipo_register(
    input clk,
    input reset,
    input load,
    input [3:0] d,
    output reg [3:0] q
);

always@(posedge clk or posedge reset)begin
    if(reset)begin
        q <=4'b0000; 
    end else if(load)
        q <= d;
    else 
        q <= q;
end

endmodule


