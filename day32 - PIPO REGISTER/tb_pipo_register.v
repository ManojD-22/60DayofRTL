`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 22:48:52
// Design Name: 
// Module Name: tb_pipo_register
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


module tb_pipo_register();
    reg clk;
    reg reset;
    reg load;
    reg [3:0] d;
    wire [3:0] q;
    
    pipo_register DUT(
    .clk(clk),
    .reset(reset),
    .load(load),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;


initial begin
    clk = 0;
    reset = 1;
    load = 0;
    d = 4'b0000;
    
    #10 reset = 0;
    #10 load = 1;
        d =4'b1010;
        
    #10 load = 0;
    #10 d = 4'b1100;
    
    #200 $finish;
end

initial begin
    $monitor("%t | clk :%b | reset : %b | load :%b | d : %b | q:%b ", $time, clk, reset, load , d , q);
end


endmodule
