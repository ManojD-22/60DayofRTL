`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 23:23:25
// Design Name: 
// Module Name: tb_demux
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


module tb_demux();
    reg i;
    reg sel_n;
    wire [1:0] y_out;
    
    
    demux de(
    .i(i),
    .sel_n(sel_n),
    .y_out(y_out)
    );
    
    
    always #10 i = ~i;
    always #20 sel_n = ~sel_n;
    
    initial begin
        i = 0;
        sel_n = 0;
        
        #500 $finish;
    end
    
    initial begin
        $monitor("%t | i : %b| sel_n : %b | y_out : %b ",$time , i , sel_n, y_out);
    end
endmodule
