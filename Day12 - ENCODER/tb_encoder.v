`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 23:32:45
// Design Name: 
// Module Name: tb_encoder
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


module tb_encoder();
  reg [3:0] i;
  wire [1:0] out;
  
  encoder E1(
    .i(i),
    .out(out)
    );
    
    always #10 i = i + 1;
    
    initial begin
        i = 4'b0000;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | i : %b | out : %b ",$time , i , out);
    end
endmodule
