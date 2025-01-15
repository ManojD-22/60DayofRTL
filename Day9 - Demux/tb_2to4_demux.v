`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 23:39:47
// Design Name: 
// Module Name: tb_demux_2to4
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


module tb_demux_2to4();

    reg  i;         
    reg[1:0] sel;  
    wire y0, y1, y2, y3 ;
    
    
    demux_2_to_4 dut(
    .i(i),          
    .sel(sel),  
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3) 
);

always #10 i = ~i;
always #20 sel = sel + 1;

initial begin
    i = 0;
    sel = 0;
    
    #500 $finish;
end

    initial begin
        $monitor("%t | i : %b| sel_n : %b | y0: %b | y1 : %b | y2 : %b | y3 : %b",$time , i , sel, y0,y1,y2,y3);
    end
endmodule
