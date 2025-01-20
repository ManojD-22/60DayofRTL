`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 22:42:34
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input [2:0] i,
    output reg [7:0] out
    );
    
    always@(*)begin
        out = 0;
        case(i)
            3'b000:out[0] = 1'b1;
            3'b001:out[1] = 1'b1;
            3'b010:out[2] = 1'b1;
            3'b011:out[3] = 1'b1;
            3'b100:out[4] = 1'b1;
            3'b101:out[5] = 1'b1;
            3'b110:out[6] = 1'b1;
            3'b111:out[7] = 1'b1;
            default:out = 0;
        endcase
    end
endmodule
