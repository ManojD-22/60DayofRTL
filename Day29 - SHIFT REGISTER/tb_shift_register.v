`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 23:43:18
// Design Name: 
// Module Name: tb_shift_register
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


module tb_shift_register();
     reg clk;
     reg reset;
     reg serial_in;
     reg shift_enable;
     wire [3:0] q;
     
     shift_register DUT(
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .shift_enable(shift_enable),
    .q(q)
    );
    
    always #5 clk = ~clk;
    always #10 serial_in = ~serial_in;
    
    initial begin
        clk  =0;
        reset = 1;
        serial_in = 0;
        shift_enable = 0;
        
        
        #10 reset = 0;
        
        #10 shift_enable = 1; serial_in = 1;
        #20 serial_in = 0;
        #30 shift_enable = 0;
        
        
        
        #200 $finish;
        
    end
    
    
    initial begin
        $monitor("%t | clk, reset, serial_in, shift_enable, q", $time, clk, reset, serial_in, shift_enable, q);
    end
endmodule
