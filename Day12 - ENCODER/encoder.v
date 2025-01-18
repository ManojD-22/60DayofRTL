`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 23:25:25
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [3:0] i,
    output reg [1:0] out
    );
    
    always@(*)begin
        if(i[3] == 1)
            out = 2'b11;
        else if(i[2] == 1)
            out = 2'b10;
        else if (i[1] == 1)
            out = 2'b01;
        else 
            out = 2'b00;
    end
endmodule
