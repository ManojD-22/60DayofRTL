`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 23:53:55
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(
     input clk,        
    input reset,       
    output reg [3:0] q 
    );
    
    always @(posedge clk or posedge reset) begin
    if (reset) 
        q <= 4'b0000;  
    else 
        q <= {~q[0], q[3:1]}; 
    end

endmodule
