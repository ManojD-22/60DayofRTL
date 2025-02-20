module piso_register(

    input clk,
    input reset,
    input [3:0] d,
    output reg q
);

always@(posedge clk or posedge reset)begin
    
    if(reset)begin

    end
    
end

endmodule