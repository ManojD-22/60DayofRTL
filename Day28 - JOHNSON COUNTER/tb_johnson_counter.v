`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2025 00:24:34
// Design Name: 
// Module Name: tb_johnson_counter
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


module tb_johnson_counter();

    reg clk;       
    reg reset;       
    wire [3:0] q;
    
    johnson_counter JN(
      .clk(clk),        
      .reset(reset),       
      .q(q) 
    ); 
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1'b1;
        
        #10 reset = 1'b0;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | clk : %b | reset : %b | q : %b ",$time,clk , reset, q);
    end
    
    
endmodule
