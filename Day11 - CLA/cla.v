`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 22:10:43
// Design Name: 
// Module Name: cla
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


module cla(
    input [3:0] A,    
    input [3:0] B,   
    input Cin,        
    output [3:0] Sum, 
    output Cout       
);

    wire [3:0] P, G; // Propagate and Generate signals
    wire [3:0] C;    // Carry signals

    // Propagate (P) and Generate (G) signals
    assign P = A ^ B; 
    assign G = A & B; 

    // Carry signals
    assign C[0] = Cin;                          // Initial carry (Cin)
    assign C[1] = G[0] | (P[0] & C[0]);         
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]); 
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]); 

    // Final carry out
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);

    // Sum calculation
    assign Sum = P ^ {C[3:1], Cin}; 

endmodule

