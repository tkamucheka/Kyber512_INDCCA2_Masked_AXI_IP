

module Modular_Reduction #(
  parameter Div_Out_Width = 40,
  parameter KYBER_Q = 3329) 
(
  input  wire clk,
  input  wire enable,
  input  wire [15:0] i_Coeff,
  output wire Div_IP_done,
  output wire montgomery_done,
  output wire barrett_done,
  output wire [Div_Out_Width-1:0] Div_IP_out,
  output wire [15:0] montgomery_out,
  output wire [15:0] barrett_out
);
  
reg dividend_tvalid;
reg [23:0] dividend_tdata;
reg  divisor_tvalid;
wire [15:0] divisor_tdata;
wire dout_tvalid;
wire [Div_Out_Width-1:0] dout_tdata;

reg enable_MR, enable_BR;
wire w_montgomery_done, w_barrett_done;
wire w_montgomery_out, w_barrett_out;

reg [31:0] state;

assign divisor_tdata = KYBER_Q;

always @(posedge clk) begin
  state = {state[30:0], enable};

  divisor_tvalid    <= enable;
  dividend_tvalid   <= enable;

  dividend_tdata    <= i_Coeff;
end

State_Pack_Cit_Div P0 (
.aclk(clk),
.s_axis_divisor_tvalid(divisor_tvalid),
.s_axis_divisor_tdata(divisor_tdata),
.s_axis_dividend_tvalid(dividend_tvalid),
.s_axis_dividend_tdata(dividend_tdata),
.m_axis_dout_tvalid(Div_IP_done),
.m_axis_dout_tdata(Div_IP_out)
);

Montgomery_Reduce P1 (
  .clk(clk),
  .ce(enable),
  .iCoeffs_a(i_Coeff),
  .reduce_done(montgomery_done),
  .oCoeffs(montgomery_out)
);

Barrett_Reduce P2 (
 .clk(clk),
 .ce(enable),
 .iCoeffs_a(i_Coeff),
 .reduce_done(barrett_done),
 .oCoeffs(barrett_out)
);


endmodule