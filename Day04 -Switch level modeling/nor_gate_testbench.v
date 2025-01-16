`timescale 1ps/1ps


module testbench();
reg a;
reg b;
wire y_out;

nor_gate dut(
    .a(a),
    .b(b),
    .y_out(y_out)
);

initial begin
    a = 1'b0;
    b = 1'b0;

    forever #10 a = ~a;
end

initial begin
    forever #30 b = ~b;
end

initial begin
    #600 $finish;
end
endmodule