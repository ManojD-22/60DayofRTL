`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 23:25:25
// Design Name: 
// Module Name: encoder
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


module encoder_8to3 (
    input [7:0] in,  // 8-bit input
    output reg [2:0] out // 3-bit output
);
    always @(*) begin
        if (in[7] == 1) out = 3'b111;
        else if (in[6] == 1) 
            out = 3'b110;
        else if (in[5] == 1)
             out = 3'b101;
        else if (in[4] == 1) 
            out = 3'b100;
        else if (in[3] == 1) 
            out = 3'b011;
        else if (in[2] == 1) 
            out = 3'b010;
        else if (in[1] == 1) 
            out = 3'b001;
        else if (in[0] == 1) 
            out = 3'b000;
        else out = 3'bxxx; // If no input is active
    end
endmodule
