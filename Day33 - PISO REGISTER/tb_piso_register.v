module tb_piso_register();
    reg  clk,
    reg reset,
    reg load,
    reg [3:0] d,
    wire q


   piso_register DUT (

    .clk(clk),
    .reset(reset),
    .load(load),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;


 


endmodule