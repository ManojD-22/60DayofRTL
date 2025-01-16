`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2025 23:25:50
// Design Name: 
// Module Name: mux_4to1_using_2to1
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


module mux_4to1_using_2to1(
    input [3:0] i,
    input [1:0] select,
    output wire y_out
    );
    
   wire y0, y1;
    
   mux_2to1 mux0 (
        .i(i[1:0]), 
        .select_n(select[0]), 
        .y_out(y0)
    );
    
    mux_2to1 mux1 (
        .i(i[3:2]), 
        .select_n(select[0]), 
        .y_out(y1)
    );
    
    mux_2to1 mux2 (
        .i({y1, y0}), 
        .select_n(select[1]), 
        .y_out(y_out)
        );
        
endmodule
