`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 22:40:22
// Design Name: 
// Module Name: piso_register
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


module piso_register(

    input clk,
    input reset,
    input load,
    input [3:0] d,
    output reg q
);

reg [3:0] shift_reg;


always@(posedge clk or posedge reset)
    begin
        if(reset)
            begin
                shift_reg <= 4'b0000;
                q <= 1'b0;
            end 
        else if(load) 
                begin
                    shift_reg <= d; 
                end 
        else begin
                    shift_reg <= {shift_reg[2:0], 1'b0};
                end
              q <= shift_reg[3];
       end
endmodule
