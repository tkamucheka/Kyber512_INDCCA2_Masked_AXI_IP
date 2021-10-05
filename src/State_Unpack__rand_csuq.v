`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University Of Arkansas
// Engineer: Tendayi Kamucheka
// 
// Create Date: 09/29/2021 01:46:53 AM
// Design Name: Kyber512 CCAKEM Masked
// Module Name: State_Unpack__rand_csuq
// Project Name: Kyber512 CCAKEM Masked
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


module State_Unpack__rand_csuq(
  output reg [15:0] rand,
  input      [15:0] PRNG_out
  );

localparam KYBER_Q = 3329;

always @(*) begin
  if (PRNG_out >= KYBER_Q) begin
    rand <= (PRNG_out - KYBER_Q) & 16'h0FFF;
  end else begin
    rand <= PRNG_out & 16'h0FFF;
  end
end

endmodule
