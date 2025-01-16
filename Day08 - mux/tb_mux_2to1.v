`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 01:40:45
// Design Name: 
// Module Name: tb_mux_2to1
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


module tb_mux_2to1();
reg [1:0] i;
reg select_n;
wire y_out;


    mux_2to1 m1(
        .i(i),
        .select_n(select_n),
        .y_out(y_out)
    );
    
    always #10 i = i + 1;
    always #20 select_n = ~select_n;
    
    initial begin
        i = 2'b0;
        select_n = 1'b0;
        
        #500 $finish;
    end
    
    initial begin
        $monitor("time = %t | i = %b | select_n = %b | y_out = %b", $time, i , select_n, y_out);
    end
endmodule
