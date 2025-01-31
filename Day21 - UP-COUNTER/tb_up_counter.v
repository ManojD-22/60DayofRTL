`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 00:14:03
// Design Name: 
// Module Name: tb_up_counter
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


module tb_up_counter();
    reg clk;
    reg reset;
    reg enable;
    wire [3:0] data_out;
    
    up_counter UP(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .data_out(data_out)
    );
    
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 0;
        enable = 0;
        
        #20 reset = 1;
        
        #10 enable = 1;
        
        #70 enable = 0;
        
        #20 enable = 1;
        
        #500 $finish;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | enable : %b | data_out : %b", $time, clk , reset, enable, data_out );
    end
endmodule

