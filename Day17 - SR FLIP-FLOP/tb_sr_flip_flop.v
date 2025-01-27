`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 23:38:24
// Design Name: 
// Module Name: tb_sr_flip_flop
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


module tb_sr_flip_flop();
    reg s;
    reg r;
    reg clk;
    wire q;
    wire qn;
    
    sr_flip_flop SR (
     .s(s),
     .r(r),
     .clk(clk),
     .q(q),
     .qn(qn)
    );
    
    
    always #5 clk = ~clk;
    always #10 s = ~s;
    always #20 r = ~r;
    
    initial begin
        clk = 0;
        s = 0;
        r = 0;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | s :%b | r : %b | clk : %b | q : %b | qn : %b ", $time, s , r , clk, q , qn);
    end
    
endmodule
