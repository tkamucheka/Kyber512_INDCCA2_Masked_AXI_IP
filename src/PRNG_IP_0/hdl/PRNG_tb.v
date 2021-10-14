`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2021 08:30:28 PM
// Design Name: 
// Module Name: PRNG_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PRNG_tb;

reg clk = 0;
reg [31:0] seed = 32'h0;
reg        load;
reg        enable;
reg        reset_n;

wire [31:0] w_out;

PRNG DUT (
  .clk(clk),
  .rst_n(reset_n),
  .enable(enable),
  .load(load),
  .seed(seed),
  .out(w_out)
);

// clock
always begin
  #5 clk <= ~clk;
end

initial begin
  #10 reset_n <= 1'b0;
  #10 reset_n <= 1'b1;
  
  #10 seed <= 32'hDEADBEEF;
  
  #10 load <= 1'b1;
  #10 load <= 1'b0;

  while (1) begin
    #10 enable <= 1'b1; #10 enable <= 1'b0;
  end 

end


endmodule
