`timescale 1ps/1ps

module tes_bench;
reg in;
wire out;

not_gate dut (in, out);

initial in = 1'b0;
initial forever #50 in = ~in;
initial #600 $finish;
endmodule
   

