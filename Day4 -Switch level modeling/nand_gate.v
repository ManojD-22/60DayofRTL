`timescale 1ps/1ps

module nand_gate(
    input in1,in2,
    output y_out
);

supply0 gnd;
supply1 vdd;
wire temp;
pmos(y_out,vdd,in1);
pmos(y_out,vdd,in2);
nmos(temp,gnd,in2);
nmos(y_out,temp,in1);

endmodule