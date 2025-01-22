`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 23:45:38
// Design Name: 
// Module Name: tb_full_substractor
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


module tb_full_substractor();
    reg a;
    reg b;
    reg borrow;
    wire diff;
    wire borrow_out;
    
    
    full_substractor FS(
    .a(a),
    .b(b),
    .borrow(borrow),
    .diff(diff),
    .borrow_out(borrow_out)
   );
   
   
   always #10 a = ~a;
   always #20 b = ~b;
   always #30 borrow = ~borrow;
   
   initial begin
        a = 0;
        b = 0;
        borrow = 0;
        
        #200 $finish;
   end
   
   
   initial begin
        $monitor("%t | a : %b | b :%b | borrow : %b | diff : %b | borrow_out :%b ", $time, a , b , borrow , diff, borrow_out);
        
   end
   
   
endmodule
