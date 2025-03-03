module tb_single_port_ram #(parameter DATA_WIDTH = 8 , ADD_WIDTH = 4)();
    reg clk;
    reg reset;
    reg we;
    reg [DATA_WIDTH-1:0] data;
    reg [ADD_WIDTH-1:0] addr;
    wire wdata;

    single_port_ram #(.DATA_WIDTH(DATA_WIDTH), .ADD_WIDTH(ADD_WIDTH))(
    .clk(clk),
    .reset(reset),
    .we(we),
    .data(data),
    .addr(addr),
    .wdata(wdata)
);


endmodule