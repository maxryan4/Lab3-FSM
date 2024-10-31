module sigdelay #(
    parameter WIDTH = 16
)(
    input logic                     clk,    // clock
    input logic                     rst,    // reset
    input logic                     en,
    input logic [WIDTH-1:0]         N, 
    output logic [7:0]              data_out
);

f1_fsm f1_fsm (
    .clk (clk),
    .rst (rst),
    .en (tick),
    .data_out (data_out)
);

clktick clktick (
    .clk (clk),
    .rst (rst),
    .en (en),
    .N (N),
    .tick (tick)
);

endmodule
