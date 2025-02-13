`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 00:01:59
// Design Name: 
// Module Name: tb_serial_in_serial_out
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


module tb_serial_in_serial_out();
    reg clk;
    reg d_in;
    reg reset;
    wire dout;
    
    serial_in_serial_out DUT(
        .clk(clk),
        .d_in(d_in),
        .reset(reset),
        .dout(dout)
   );
   
   always #5 clk = ~clk;
   
   initial begin
        clk = 0;
        d_in = 0;        
        reset = 1;
        
       #10 reset = 0;
       
       #10 d_in = 1;
       #10 d_in = 0;
       #10 d_in = 1;
       #10 d_in = 1;
        
        
        
        #200 $finish;
   
   end
   
   initial begin
        $monitor("%t | clk : %b | reset : %b | d_in : %b | dout : %b | ", $time , clk , reset, d_in, dout);
    
   end
   
endmodule
