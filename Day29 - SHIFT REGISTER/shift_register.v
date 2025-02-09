`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 23:24:07
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input clk,
    input reset,
    input serial_in,
    input shift_enable,
    output reg [3:0] q
    );
    
    always@(posedge clk)begin
        if(reset)begin
            q <= 4'b0000;
    end else if(shift_enable) begin
          q <= {q[2:0],serial_in};
    end else
        q <= q;
   end
endmodule
