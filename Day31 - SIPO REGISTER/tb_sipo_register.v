`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2025 00:20:39
// Design Name: 
// Module Name: tb_serial_in_parallel_out
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


module tb_serial_in_parallel_out();
    reg  clk;
    reg reset;
    reg serial_in;
    wire [3:0] parallel_out;
    
    serial_in_parallel_out DUT(
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
       reset = 1;
       serial_in = 0;
       
       #15 reset =0 ;
       
       #10 serial_in = 1;
       #10 serial_in = 0;
       #10 serial_in = 0;
       #10 serial_in = 1; 
       
       
       #50 $finish;
     end
     
     
     initial begin
        $monitor("%t | clk : %b | reset : %b | serial_in : %b | parallel_out :%b |", $time , clk, reset, serial_in , parallel_out);
     end   
        
endmodule
