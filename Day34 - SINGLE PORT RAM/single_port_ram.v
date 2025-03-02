module single_port_ram #(parameter DATA_WIDTH = 8 , ADD_WIDTH = 4)(
    input clk,
    input reset,
    input we,
    input [DATA_WIDTH-1:0] data,
    input [ADD_WIDTH-1:0] addr,
    output reg wdata
);

reg [DATA_WIDTH-1:0] mem [ADD_WIDTH-1:0];

always@(posedge clk or negedge reset)begin
    
    if(!reset)begin
        wdata <= 1'b0;
    end else begin
        if(we) begin
            mem[addr] <= data;   // write operation 

            wdata <= mem[addr];  // read operation
        end
    end

        
end