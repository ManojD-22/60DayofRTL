`timescale 1ns / 1ps

module tb_nand;
    reg in1, in2;
    wire y_out;

    nand_gate dut(
        .in1(in1),
        .in2(in2),
        .y_out(y_out)
    );

    initial begin
        in1= 1'b0;
        in2= 1'b0;


        forever #50 in1 = ~in1;
    end
    
    initial begin
        forever #100 in2 = ~in2;
    end


    initial begin
        #600 $finish;
    end
endmodule
