module single_port_ram(
    input data,
    input addr,
    input clk,
    input reset,
    output wdata
);

always@(posedge clk or negedge reset)begin
    
    if(!reset)begin
        wdata <= 1'b0;
    end else
        
end