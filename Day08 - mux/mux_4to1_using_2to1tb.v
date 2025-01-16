`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2025 23:44:55
// Design Name: 
// Module Name: tb_mux4to1_2to1
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


module tb_mux4to1_2to1();
    reg [3:0] i;
    reg [1:0] select;
    wire y_out;
    
    mux_4to1_using_2to1 dut(
        .i(i),
        .select(select),
        .y_out(y_out)
    );
    
    always #10 i = i + 1;
    always #20 select = select + 1;
    
    initial begin
        i = 4'b0000;
        select = 2'b00;
        $display("Time\tSelect\tInput\tOutput");
        $monitor("%0dns\t%b\t%b\t%b", $time, select, i, y_out);
        
        end
endmodule
