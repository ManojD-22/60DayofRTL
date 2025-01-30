`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 23:03:58
// Design Name: 
// Module Name: tb_t_flip_flop
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


module tb_t_flip_flop();
    reg clk;
    reg reset;
    reg data;
    wire data_out;
    
    t_flip_flop TF(
    
     .clk(clk),
     .reset(reset),
     .data(data),
     .data_out(data_out)
    );
    
    always #5 clk = ~clk;
    always #10 reset = ~reset;
    always #15 data = ~data;
    
    initial begin
        clk = 0;
        reset = 0;
        data = 0;
        
        #100 $finish;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | data : %b | data_out : %b ",$time, clk, reset, data, data_out);
    end
endmodule
