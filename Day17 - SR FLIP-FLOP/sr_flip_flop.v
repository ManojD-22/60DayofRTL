`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 23:26:54
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
    input s,
    input r,
    input clk,
    output reg q,
    output qn
    );
    
    assign qn = ~q;
    
    always@(posedge clk)begin
        if(s == 1'b0 && r == 1'b0)begin
            q <= q;
        end
        else if(s == 1'b0 && r == 1'b1)begin
            q <= 1'b0;
        end
        else if(s == 1'b1 && r == 1'b0)begin
            q <= 1'b1;                    
        end
        else 
            q <= 1'bx;
    end
endmodule
