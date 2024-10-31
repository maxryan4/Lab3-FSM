module lfsr(
    input   logic       clk,
    input   logic       rst,
    input   logic       en,
    output  logic [3:0] data_out
);

// declare shift register
logic [3:0] sreg;

always_ff @(posedge clk, posedge rst)
    if (rst)
        sreg <= 4'b1;
    else if (en)
        sreg <= {sreg[2:0], sreg[3] ^ sreg[2]};

assign data_out = sreg;
endmodule
