`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 23:38:26
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input reset,
    input clk,
    input j,
    input k,
    output reg q
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            q <= 1'b0;
        end else begin
            case({j,k})
                2'b00:q <= q;
                2'b01:q <= 1'b0;
                2'b10:q <= 1'b1;
                2'b11:q <= ~q;
            endcase
        end
    end
    
endmodule
