`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 23:02:27
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    
    input clk,
    input reset,
    input data,
    output reg data_out
);
    always@(posedge clk , negedge reset)begin
        if(!reset)begin
            data_out <= 1'b0;
        end else begin
            if(data)
                data_out <= ~data_out;
            else
                data_out <= data_out;
        end
    end
endmodule
