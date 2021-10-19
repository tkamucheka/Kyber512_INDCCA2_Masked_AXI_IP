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


module State_Unpack__rand_csuq #(
  parameter QBITS    = 12,
  parameter QM       = (1 << QBITS) - 1,
  parameter COEFF_SZ = 16
) (
  output [COEFF_SZ-1:0] rand,
  input  [COEFF_SZ-1:0] PRNG_data
);

assign rand = PRNG_data & QM;

endmodule
