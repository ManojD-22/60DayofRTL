`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 13:49:30
// Design Name: 
// Module Name: single_port_memory
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


module single_port_memory #(parameter DATA_WIDTH = 8 , ADD_WIDTH = 4)(
    input clk,
    input reset,
    input we,
    input [DATA_WIDTH-1:0] data,
    input [ADD_WIDTH-1:0] addr,
    output reg wdata
);

reg [DATA_WIDTH-1:0] mem [ADD_WIDTH-1:0];

always@(posedge clk or negedge reset)begin
    
    if(!reset)begin
        wdata <= 1'b0;
    end else begin
        if(we) begin
            mem[addr] <= data;   // write operation 

            wdata <= mem[addr];  // read operation
        end
    end

        
end

endmodule
