`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 23:16:18
// Design Name: 
// Module Name: tb_mux_4to1
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


 module tb_mux_4to1();
    reg  [3:0] data_in;
    reg  [1:0] sel_n;
    wire data_out;
    
  mux_4to1 M1(
   .data_in(data_in),
   .sel_n(sel_n),
   .data_out(data_out)
    );
    
    always #10 data_in = data_in + 1;
    always #20 sel_n   = sel_n + 1;
    
    initial begin
        data_in = 2'b0;
        sel_n  = 2'b0;
        
        #500 $finish;
    end
    
    initial begin
        $monitor("Time : %0t | data_in : %b | sel_n : %b | data_out :%b", $time, data_in, sel_n, data_out);
    end
endmodule
