`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University Of Arkansas
// Engineer: Tendayi Kamucheka (ftendayi@gmail.com)
// 
// Create Date: 09/29/2021 03:02:39 AM
// Design Name: 
// Module Name: State_Polytomsg__masked_decode_TransformPow2
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

module State_Polytomsg__masked_decode_TransformPow2 #(
  parameter KYBER_N  = 256,
  parameter KYBER_Q  = 3329,
  parameter COEFF_SZ = 16,
  parameter QBITS    = 12,
  parameter QBITS2   = QBITS + 1,
  parameter QM2      = (1 << QBITS2) - 1
) (
  input                      clk,
  input                      ce,
  input       [COEFF_SZ-1:0] c1,
  input       [COEFF_SZ-1:0] c2,
  input       [COEFF_SZ-1:0] PRNG_data,
  output wire                data_valid,
  output reg  [COEFF_SZ-1:0] y1,
  output reg  [COEFF_SZ-1:0] y2
);

localparam K = 6;

reg  [COEFF_SZ-1:0] stage0_y1       = 0;
reg  [COEFF_SZ-1:0] stage0_y2       = 0;
reg  [COEFF_SZ-1:0] stage0_ze1_in   = 0;
wire [COEFF_SZ-1:0] stage0_ze1_out;

reg [K-1:0] state = 0;

// Driver
assign data_valid = state[K-1];

always @(posedge clk)
  state <= {state[K-2:0], ce};

// Stage 0
always @(posedge clk) begin
  if (ce) begin
    stage0_y1     <= PRNG_data & QM2;
  end else begin
    stage0_y1     <= 0;
    stage0_y2     <= 0;
  end
end

always @(posedge clk) begin
  stage0_y2     <= c1 - stage0_y1 + c2;
  stage0_ze1_in <= stage0_y1 - KYBER_Q;
end

// Stage 1
wire [COEFF_SZ-1:0] w_stage1_ze1;
wire [COEFF_SZ-1:0] w_stage1_ze2;
wire                w_stage1_data_valid;

Shift_Reg #(.MSB(1)) FU_ze1[COEFF_SZ-1:0] (
  .clk(clk),
  .din(stage0_ze1_in),
  .dout(stage0_ze1_out)
);

A2B A2B_inst0 (
  .clk(clk),
  .ce(state[1]),
  .c1(stage0_ze1_out),
  .c2(stage0_y2),
  .PRNG_data(PRNG_data),
  .data_valid(w_stage1_data_valid),
  .y1(w_stage1_ze1),
  .y2(w_stage1_ze2)
);

// Stage 2
reg [COEFF_SZ-1:0] k1   = 0;
reg [COEFF_SZ-1:0] k2   = 0;
reg [COEFF_SZ-1:0] k1p  = 0;
reg [COEFF_SZ-1:0] k2p  = 0;
reg [COEFF_SZ-1:0] r    = 0;
// reg [COEFF_SZ-1:0] k1pp = 0;
// reg [COEFF_SZ-1:0] k2pp = 0;

reg [COEFF_SZ-1:0] k1Q       = 0;
reg [COEFF_SZ-1:0] k2Q       = 0;
reg [COEFF_SZ-1:0] k1pk2pQ   = 0;
reg [COEFF_SZ-1:0] k1pk2ppQ  = 0;
reg [COEFF_SZ-1:0] k1ppk2pQ  = 0;
reg [COEFF_SZ-1:0] k1ppk2ppQ = 0;

always @(posedge clk) begin
  if (w_stage1_data_valid) begin
    k1  <= w_stage1_ze1[12] ^ 1'b1;
    k2  <= w_stage1_ze2[12];
    k1p <= PRNG_data & QM2;
    k2p <= PRNG_data & QM2;
  end else begin
    k1  <= 0;
    k2  <= 0;
    k1p <= 0;
    k2p <= 0;
  end
end

always @(posedge clk) begin
  r          <= PRNG_data & QM2;
  k1Q        <= k1 * KYBER_Q;
  k2Q        <= k2 * KYBER_Q;
  k1pk2pQ    <= 2 * k1p * k2p * KYBER_Q;
  k1pk2ppQ   <= 2 * k1p * (k2 - k2p) * KYBER_Q;
  k1ppk2pQ   <= 2 * (k1 - k1p) * k2p * KYBER_Q;
  k1ppk2ppQ  <= 2 * (k1 - k1p) * (k2 - k2p) * KYBER_Q;
end

// Stage 3
wire [COEFF_SZ-1:0] w_stage0_y1_out;
wire [COEFF_SZ-1:0] w_stage0_y2_out;

always @(posedge clk) begin
  y1 <= (((((((r + w_stage0_y1_out) - k1Q) - k2Q) + k1pk2pQ) + k1pk2ppQ) + k1ppk2pQ) + k1ppk2ppQ) & QM2;
  y2 <= (w_stage0_y2_out - r) & QM2;
end

Shift_Reg #(.MSB(K-1)) FU_y1[COEFF_SZ-1:0] (
  .clk(clk),
  .din(stage0_y1),
  .dout(w_stage0_y1_out)
);

Shift_Reg #(.MSB(K-2)) FU_y2[COEFF_SZ-1:0] (
  .clk(clk),
  .din(stage0_y2),
  .dout(w_stage0_y2_out)
);

/*
014c 05fb 02d6 02e2 0613 0aa7 0179 0bde 07fc 01db 054b 0b22 06a8 0503 090f 00b1 0b7f 0a16 0431 025b 006a 0ae8 06ed 0690 0279 0a30 0a9a 0b3f 0287 07ae 051e 07c9 06c3 0200 06bf 02fb 0a26 0461 03ac 007a 0124 08e1 0524 064f 0542 01eb 0675 00ee 0a9b 0a3f 0593 059e 0c62 02f7 013f 0789 0183 047b 0ad2 0be0 0c26 092e 0c8c 07fc 0914 0092 00f1 0af5 06b8 0a7a 05a3 034e 05cf 0609 0a49 0c4c 0968 01e0 023e 04e1 0342 046b 05b9 00bf 082e 041f 09a6 0058 0a71 06cb 0a27 073b 01c4 02d3 00d8 09df 00f1 0883 01d6 04de 0b8a 0734 09e7 02b7 01e7 0ac1 025f 0cee 00fd 053a 083b 0527 03bb 06aa 0aff 091e 023a 030a 05bf 0a5f 0223 06a5 02de 0053 0837 0961 0ca8 0902 0849 08bd 0949 0aed 0049 0466 085c 043c 04c4 0286 0610 0319 053a 0271 09f4 063e 0243 010e 0abc 0cc2 00a0 0c5e 0c0d 0a24 04a0 01f1 0591 07b1 058a 08fd 003b 0204 02b0 072b 0cf7 0856 09e3 022b 0806 0471 0931 041b 0215 0645 026a 0a93 013c 01b7 0cb3 0832 01ae 0241 0519 07d3 0860 02e9 0511 02bf 09a3 0517 09aa 080c 045d 033e 0097 062d 0cc7 0508 0652 011c 0a66 0857 09a6 0a6d 0b73 05e2 0a4e 036c 03bb 0c15 0406 0285 07c6 0462 05c1 00c8 01d8 08a5 0571 05eb 05a6 03bd 0725 0b70 0c99 06b8 0827 0a96 0c6b 0716 064a 0b1f 0552 0956 0157 01fe 0a38 040b 00d8 0cdc 085c 034e 0333 0ab5 0c6a 0917 05e3 0cce 0a29 095c 0500 0a84 04f7 0374 0c93 06cd 0026 0a2c
*/

/*
0d16 05fd 01d0 11b4 02bb 1054 f462 059e fd3e 101a 02cd 0259 0455 0818 048f fbb5 0781 0d43 1263 08e0 1255 09c2 fbbb 0923 fd1a 0eb9 12b8 0353 0305 02bb fde6 f9a8 0eef 1164 0b4b 0cda 0cc9 fa8c 0d98 f5eb f6b2 f79d 0a16 0cc1 06b1 0bbc 100d 05cd 0af3 04ef 0817 f5f0 0bd0 fb4f fe5a f4d7 09e4 1006 097e 0d84 f44b f504 0375 10e5 fc4b f315 faa0 0c80 f923 0635 ff47 0ae5 0615 fb58 f403 0cb2 0a6b f647 07bf 0821 016b fa2f fe2a fbe4 08a9 0acc 07ef f808 fd0c 0707 f5a8 f84b 08ac fd5d 0421 114b 1036 081f 0ff3 f790 fbfd f3a4 0e99 f5e0 0bdb 0716 f5ac f83c 1267 f6f7 0116 051f fbc8 fe88 fcba fb09 024e fcb7 116d f786 f302 1084 0975 05fa 0869 f32a 08b5 fb02 0872 f9fb 01ea 08f0 f6cd f683 fce2 fd71 fb4c 0d30 f879 0969 06a3 fa7c ff52 06d5 ffa1 045a fea9 0fec 0337 f8d2 fd45 fc1d f9c3 059a 088b f81f f370 f4ee 097a 046d 0c31 0105 fe2c fdec 0ad7 fac8 f64a 07ed fdb2 0fc2 0c55 0eb7 f45b 02f1 01b6 0b4c fdb4 0e73 fa67 0510 08ec f76f ffbd 0630 07a8 04a8 12d5 00bf 0dbe 0def 059d f6be 07aa f7fb 04ca 0100 f811 0a07 1236 05c7 fca8 fe49 11b4 ffd0 f8e4 fc8b f929 f418 ff5a f375 0958 fce3 0d89 0d42 06db 10c3 0cac 0e5c 049e 0b3b 03a0 008f f64d f551 f9ab 110b 11ee 081b fd60 0936 0c91 02cf 07fc
*/
  
endmodule
