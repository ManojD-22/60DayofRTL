module piso_register(

    input clk,
    input reset,
    input load,
    input [3:0] d,
    output reg q
);

reg [3:0] shift_reg;


always@(posedge clk or posedge reset)begin
    
    if(reset)begin
        shift_reg <= 4'b0000;
    end else if(load) 
                begin
                    shift_reg <= d; 
                end 
            else
                shift_reg <= {shift_reg{2:0}, 1'b0};
    
end

assign q = shift_reg[3];

endmodule