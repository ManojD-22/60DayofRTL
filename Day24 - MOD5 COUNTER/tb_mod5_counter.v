`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 23:45:52
// Design Name: 
// Module Name: tb_mod5_counter
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


module tb_mod5_counter();

    reg clk;
    reg reset;
    wire[2:0] d_out;
    
    mod5_counter MD5(
    .clk(clk),
    .reset(reset),
    .d_out(d_out)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 0;
        
        #10 reset = 1;
        
        #100 $finish;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | d_out :%b ", $time, clk, reset, d_out);
        
    end
endmodule
