`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 23:05:26
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input [3:0] data_in,
    input [1:0] sel_n,
    output reg data_out
    );
    
    always@(*)begin
        case (sel_n)
            2'b00:data_out=data_in[0];
            2'b01:data_out=data_in[1];
            2'b10:data_out=data_in[2];
            2'b11:data_out=data_in[3];
            default:data_out = 1'b0;
         endcase
    end
        
endmodule
