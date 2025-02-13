`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 23:49:17
// Design Name: 
// Module Name: serial_in_serial_out
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


module serial_in_serial_out(
    input clk,
    input d_in,
    input reset,
    output reg dout
   );
   
   reg [3:0] shift_reg;
   
   always@(posedge clk or posedge reset)begin
        if(reset)begin
            shift_reg <= 4'b0000;
            dout      <= 0;
        end else begin
            dout <= shift_reg[3];
            shift_reg <= {shift_reg[2:0],d_in};
        end
   end
endmodule
