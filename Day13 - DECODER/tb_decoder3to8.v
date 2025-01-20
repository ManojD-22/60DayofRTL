`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 22:57:08
// Design Name: 
// Module Name: tb_decoder3to8
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


module tb_decoder3to8();
    reg [2:0] i;
    wire[7:0] out;
    
    decoder3to8 DUT(
    .i(i),
    .out(out)
    );
    
    always #10 i = i + 1;
    
    initial begin
        i = 0;
        
        #100 $finish;
    end
    
    initial begin
        $monitor("%t | i : %b | out : %b ",$time , i, out); 
    end
    
endmodule
