`timescale 1ps/1ps

module nor_gate(
    input a, b,
    output y_out
);

supply0 gnd;
supply1 vdd;
wire temp;

pmos(temp,vdd,a);
pmos(y_out,temp,b);
nmos(y_out,gnd,a);
nmos(y_out,gnd,b);

endmodule;
