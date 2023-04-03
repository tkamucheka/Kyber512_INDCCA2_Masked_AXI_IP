module Demux (
  input   wire select,
  input   wire din,
  output  reg  dout0,
  output  reg  dout1
);

always @(select or din) begin
  case (select)
    1'b0: dout0 <= din;
    1'b1: dout1 <= din;
    default: ;
  endcase
end

endmodule