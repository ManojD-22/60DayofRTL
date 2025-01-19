module tb_encoder_8to3;
    reg [7:0] in;    
    wire [2:0] out; 

    encoder_8to3 uut (
        .in(in),
        .out(out)
    );

    always #10 i = i + 1;
    
    
    initial begin
        i = 0;
        #500 $finish;
    end

    initial begin
        $monitor("%t | i : %b | out : %b ",$time , i , out);
    end

endmodule
