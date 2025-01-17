`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 22:15:50
// Design Name: 
// Module Name: tb_cla
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


module tb_cla();

    reg [3:0] A;    
    reg [3:0] B;   
    reg Cin;        
    wire [3:0] Sum; 
    wire Cout;
    
    cla C1(
        .A(A),    
        .B(B),   
        .Cin(Cin),        
        .Sum(Sum), 
        .Cout(Cout)       
    );  
    
    always #10 A = A + 1;
    always #15 B = B + 1;
    always #20 Cin = ~Cin; 
    
    initial begin
        A = 0;
        B = 0;
        Cin = 0;
        
        #200 $finish;
    end
    
    initial begin
        $monitor("%t | A: %b | B : %b | Cin : %b | Sum : %b | Cout : %b", $time, A , B, Cin, Sum , Cout);
    end
    
endmodule
