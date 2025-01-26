`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 22:46:08
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input s,
    input r,
    input en,
    input reset,
    output reg q
    );
    
    always@(*)
        begin
            if(reset)
                q <=1'b0;
            else if(en)begin
                case({s,r})
                    2'b00:q <= q;
                    2'b01:q <=1'b0;
                    2'b10:q <=1'b1;
                    2'b11:q <=1'bx;
                    default:q <=1'bx;
                 endcase
            end
        end
    
    
endmodule
