`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 23:20:27
// Design Name: 
// Module Name: down_counter
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


module down_counter(
    input clk,
    input reset,
    input en,
    output reg [2:0] data_out
    );
    
    always@(posedge clk or negedge reset)begin
        if(!reset)begin
            data_out <= 3'b111;
        end else if(en)begin
            if(data_out == 3'b000)begin
                data_out <= 3'b111;
        end else begin
            data_out <= data_out - 1;
        end
      end
    end
endmodule
