`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 23:14:32
// Design Name: 
// Module Name: demux
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


module demux(
    input i,
    input sel_n,
    output reg [1:0] y_out
    );
    
    always@(*)begin
        y_out = 2'b00;
        case(sel_n)  
            1'b0:y_out[0] = i;
            1'b1:y_out[1] = i;
        endcase
    end
endmodule
