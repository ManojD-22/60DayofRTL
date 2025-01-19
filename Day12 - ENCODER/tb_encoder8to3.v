module tb_encoder_8to3();
    reg [7:0] in;    
    wire [2:0] out; 

    encoder_8to3 dut (
        .in(in),
        .out(out)
    );

    always #10 in = in + 1;
    
    
    initial begin
        in = 0;
        #500 $finish;
    end

    initial begin
        $monitor("%t | in : %b | out : %b ",$time , in , out);
    end

endmodule
