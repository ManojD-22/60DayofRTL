`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 23:38:08
// Design Name: 
// Module Name: tb_down_counter
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


module tb_down_counter();
    reg clk;
    reg reset;
    reg en;
    wire [2:0] data_out;
    
    down_counter DC(
    .clk(clk),
    .reset(reset),
    .en(en),
    .data_out(data_out)
    );
    
    always #5 clk = ~clk;
        
    initial begin
        clk = 0;
        reset = 0;
        en = 0;
        
        #10 reset = 1;
        
        #15 en = 1;
        
        #200 $finish;
    end
    
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | en : %b | data_out : %b ", $time, clk , reset, en , data_out );
    end
    
endmodule
