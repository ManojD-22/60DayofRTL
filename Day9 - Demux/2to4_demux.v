

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 23:14:32
// Design Name: 
// Module Name: demux_2_to_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 2-to-4 demux using two 1-to-2 demux modules
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
    
    always@(*) begin
        y_out = 2'b00;
        case(sel_n)  
            1'b0: y_out[0] = i;  
            1'b1: y_out[1] = i;  
        endcase
    end
endmodule

module demux_2_to_4(
    input i,          
    input [1:0] sel,  
    output y0, y1, y2, y3 
);
    wire [1:0] z0, z1;  

    demux d1 (
        .i(i),
        .sel_n(sel[1]), 
        .y_out(z0)      
    );

    demux d2 (
        .i(z0[0]),
        .sel_n(sel[0]),  
        .y_out({y0, y1}) 
    );

    demux d3 (
        .i(z0[1]),
        .sel_n(sel[0]),  
        .y_out({y2, y3}) 
    );

endmodule
