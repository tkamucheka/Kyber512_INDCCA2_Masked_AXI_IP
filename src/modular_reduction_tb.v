`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arkansas
// Engineer: Tendayi Kamucheka (ftendayi@gmail.com)
// 
// Create Date: 09/31/2021 01:32:30 AM
// Design Name: 
// Module Name: Modular_Reduction_tb
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

`define P 10

module Modular_Reduction_tb;

localparam Div_Out_Width = 40;

integer clocks = 0;
integer i = 0;

reg clk = 0;
reg enable = 0;
reg [15:0] i_Coeff = 0;

wire Div_IP_done;
wire montgomery_done;
wire barrett_done;

wire [Div_Out_Width-1:0] Div_IP_out;
wire [15:0] montgomery_out;
wire [15:0] barrett_out;

Modular_Reduction DUT (
.clk(clk),
.enable(enable),
.i_Coeff(i_Coeff),
.Div_IP_done(Div_IP_done),
.montgomery_done(montgomery_done),
.barrett_done(barrett_done),
.Div_IP_out(Div_IP_out),
.montgomery_out(montgomery_out),
.barrett_out(barrett_out)  
);

// Clock cycle counter
always @(posedge clk) begin
  clocks <= clocks + 1;
end

initial begin

  #(`P);

  for (i=0; i<10; i=i+1) begin
    enable   <= 1'b1;
    i_Coeff  <= i;
    #(`P*2);
  end

  enable <= 1'b0;

end

always #(`P) clk <= ~clk;

endmodule

`undef P