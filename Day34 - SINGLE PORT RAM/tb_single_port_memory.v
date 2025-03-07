`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 13:52:18
// Design Name: 
// Module Name: tb_single_port_memory
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


module tb_single_port_memory #(parameter DATA_WIDTH = 8 , ADD_WIDTH = 4)();
    reg clk;
    reg reset;
    reg we;
    reg [DATA_WIDTH-1:0] data;
    reg [ADD_WIDTH-1:0] addr;
    wire [DATA_WIDTH-1:0] wdata;

    single_port_memory #(.DATA_WIDTH(DATA_WIDTH), .ADD_WIDTH(ADD_WIDTH)) DUT(
    .clk(clk),
    .reset(reset),
    .we(we),
    .data(data),
    .addr(addr),
    .wdata(wdata)
);

always #5 clk = ~clk;

    initial begin
        clk = 0;
        data = 0;
        addr = 0;
        reset = 0;
        we = 0;
        
        #10 reset = 1;
        #20 reset = 0;
        
        //write operation
        we = 1;
        repeat(10) begin
            #10 data = data + 1;
                addr = addr + 1; 
        end
        
        //read operation
        we = 0;
        addr = 0;
        repeat(16) begin
            #10 addr = addr + 1;
        end
        
        #500 $finish;
    end
endmodule
