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
always #10 load = ~load;
always #15 d = ~d;

initial begin
    clk = 0;
    reset = 0;
    load = 0;
    d = 0;

    #15 reset = 1;

    #30 reset = 0;

    #45 reset = 1;
    #100 $finish;
end
 


endmodule