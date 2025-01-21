`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2025 22:36:30
// Design Name: 
// Module Name: tb_half_substractor
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


module tb_half_substractor();
    reg a;
    reg b;
    wire diff;
    wire borrow;
    
    half_substractor HF (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)    
    );
    
    always #10 a = ~a;
    always #20 b = ~b;
    
    initial begin
        a = 0;
        b = 0;
        
        #100 $finish;
    end
    
    initial begin
        $monitor("%t | a : %b | b : %b | diff : %b | borrow : %b", $time , a , b , diff , borrow);
    end
    
endmodule
