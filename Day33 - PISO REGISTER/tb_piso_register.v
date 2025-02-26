`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 22:48:33
// Design Name: 
// Module Name: tb_piso_register
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


module tb_piso_register();
    reg  clk;
    reg reset;
    reg load;
    reg [3:0] d;
    wire q;


   piso_register DUT (

    .clk(clk),
    .reset(reset),
    .load(load),
    .d(d),
    .q(q)
);


always #5 clk = ~clk;
always #10 load = ~load;
always #15 d = ~d;

initial begin
    clk = 0;
    reset = 0;
    load = 0;
    d = 0;

    #15 reset = 1;

    #30 reset = 0;

    #45 reset = 1;
    #100 $finish;
end
 
 
 initial begin
    $monitor("%t | clk = %b | reset : %b | load :%b | d : %b | q :%b ", $time, clk, reset, load, d ,q);
 end
 


endmodule
