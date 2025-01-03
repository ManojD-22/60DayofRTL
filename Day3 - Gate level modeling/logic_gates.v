`timescale 1ns / 1ps

module logic_gate(
    input a,b,
    output and_gate,
    output not_gate,
    output or_gate,
    output nand_gate,
    output nor_gate,
    output xor_gate,
    output xnor_gate
);

and     andgate(and_gate,a,b);
or      orgate(or_gate,a,b);
not     notgate(not_gate,a);
nand    nandgate(nand_gate,a,b);
nor     norgate(nor_gate,a,b);
xor     xorgate(xor_gate,a,b);
xnor    xnorgate(xnor_gate,a,b);

endmodule