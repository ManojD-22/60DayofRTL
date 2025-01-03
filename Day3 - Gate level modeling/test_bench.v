`timescale 1ps/1ps


module test;
    reg a,b;
    wire and_gate,
        not_gate,
        or_gate,
        nand_gate,
        nor_gate,
        xor_gate,
        xnor_gate;

        logic_gate dut(
            .a(a),
            .b(b),
            .and_gate(and_gate),
            .or_gate(or_gate),
            .not_gate(not_gate),
            .nand_gate(nand_gate),
            .nor_gate(nor_gate),
            .xor_gate(xor_gate),
            .xnor_gate(xnor_gate)
        );

        initial begin
            #10 a = 1'b0; b = 1'b0;
            #10 a = 1'b0; b = 1'b1;
            #10 a = 1'b1; b = 1'b0;
            #10 a = 1'b1; b = 1'b1;
            #50 $finish;
        end

endmodule