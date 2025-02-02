`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 23:39:32
// Design Name: 
// Module Name: tb_up_down_counter
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


module tb_up_down_counter();
    reg reset;
    reg clk;
    reg up_down;
    wire [2:0] count;
    
    up_down_counter CD(
    .reset(reset),
    .clk(clk),
    .up_down(up_down),
    .count(count)
    );
    
    always #5 clk = ~clk;
    always #10 up_down =  ~up_down;
    
    initial begin
        clk = 0;
        reset = 0;
        up_down = 0;
        
        #10 reset = 1;
        
        
        #100 reset = 0;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | clk :%b | reset : %b | up_down : %b | count : %b ", $time, clk, reset, up_down, count);
    end
    
    
endmodule
