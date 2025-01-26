`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 22:58:56
// Design Name: 
// Module Name: tb_sr_latch
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


module tb_sr_latch();
    reg s;
    reg r;
    reg en;
    reg reset;
    wire q;
    
    sr_latch SR(
     .s(s),
     .r(r),
    .en(en),
    .reset(reset),
    .q(q)
    );
    
    always #5 en = ~en;
    always #15 s = ~s;
    always #25 r = ~r;
    
    always #35 reset = ~reset;
    
    initial begin
        s = 0;
        r = 0;
        en = 0;
        reset = 0;
        
        #200 $finish;
    end
    
    
    initial begin
        $monitor("%t | s :%b | r : %b | en : %b | reset : %b | q :%b ", $time,s , r , en , reset, q);
    end
endmodule
