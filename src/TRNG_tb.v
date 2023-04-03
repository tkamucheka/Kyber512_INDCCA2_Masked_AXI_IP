
`define P 10

module TRNG_tb;
  
reg clk = 0;
reg enable = 0;
reg read_en = 0;
reg write_en = 0;
reg [13:0] seed = 14'b01010001000000;

wire [ 3:0] status;
wire [11:0] rand;

integer i;

TRNG DUT (
  .i_clk(clk),
  .rd_enable(read_en),
  .wr_enable(write_en),
  .i_data({1'b0, enable, seed}),
  .o_data({status, rand})
);

always #5 clk <= ~clk;

initial begin

// Enable TRNG core
#(`P*20) enable <= 1'b1;

// Write seed and enable state
#(`P)  write_en <= 1'b1;
#(`P)  write_en <= 1'b0;

#(`P*10); // idle

// Sample TRNG core
for (i=0; i<1000; i=i+1) begin
  #(`P) read_en <= 1'b1;
  #(`P) read_en <= 1'b0;
end


#200;  

$finish;
end

endmodule

`undef P