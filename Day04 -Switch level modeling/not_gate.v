`timescale 1ps/1ps

module not_gate(
    input in,
    output out
);

supply0 gnd;
supply1 vdd;

pmos(out,vdd,in);
nmos(out,gnd,in);

endmodule