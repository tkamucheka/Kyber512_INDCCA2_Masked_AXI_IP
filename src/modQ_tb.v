`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 03:57:37 PM
// Design Name: 
// Module Name: modQ_tb
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


module modQ_tb;

localparam KYBER_Q = 3329;

reg clk = 0;
reg divisor_tvalid, dividend_tvalid;
reg [15:0] divisor_tdata;
reg [15:0] dividend_tdata;

wire dout_tvalid;
wire [31:0] dout_tdata;

MOD_Q_Div DUT (
.aclk(clk),
.s_axis_divisor_tvalid(divisor_tvalid),
.s_axis_divisor_tdata(divisor_tdata),
.s_axis_dividend_tvalid(dividend_tvalid),
.s_axis_dividend_tdata(dividend_tdata),
.m_axis_dout_tvalid(dout_tvalid),
.m_axis_dout_tdata(dout_tdata)
);

always begin
  forever begin
    #5; clk = ~clk;
  end
end

initial begin
  #5; divisor_tdata   <= KYBER_Q;
      dividend_tdata  <= KYBER_Q;
      divisor_tvalid  <= 1;
      dividend_tvalid <= 1;

   
end
  
endmodule
