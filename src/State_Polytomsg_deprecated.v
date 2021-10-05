//////////////////////////////////////////////////////////////////////////////////
// Module Name: State_Polytomsg
// Project Name: Kyber512_AC701
// Target Devices: AC701
// Author: YIMING HUANG, Tendayi Kamucheka (ftendayi@gmail.com)
//////////////////////////////////////////////////////////////////////////////////

module State_Polytomsg#(
  parameter KYBER_K = 2,
  parameter KYBER_N = 256,
  parameter KYBER_Q = 3329,
  parameter Msg_Bytes = 32,
  parameter data_Width = 12,
  parameter Byte_bits = 8,
  parameter o_Msg_Size = Byte_bits * Msg_Bytes,
  parameter i_Poly_Size = data_Width * KYBER_N
)(
  input clk,    
  input rst_n,
  input enable, 
  input [data_Width-1 : 0] Reduce_DecMp1_RData,
  input [data_Width-1 : 0] Reduce_DecMp2_RData,
  output reg Function_done,
  output reg [7 : 0] Reduce_DecMp_RAd,
  output reg [o_Msg_Size -1 : 0]  oMsg  
);
    
reg  cal_enable;                            
wire Cal_oDone;
wire Cal_oMsg1, Cal_oMsg2;                                
reg  [0:0] Msg_bits [KYBER_N-1:0];
integer i;
reg get;

reg [1:0] cstate,nstate;
localparam IDLE          = 2'd0;
localparam Pop_Mp        = 2'd1;
localparam Cal           = 2'd2;
localparam Push_Msg      = 2'd3;

always @(posedge clk or negedge rst_n)
  if (!rst_n) cstate <= IDLE;
  else        cstate <= nstate;
  
always @(cstate or enable or Cal_oDone or i or get) 
begin       
  case(cstate)
    IDLE:     if (enable)     nstate <= Pop_Mp;
              else            nstate <= IDLE;
    Pop_Mp:   if (get == 1)   nstate <= Cal;
              else            nstate <= Pop_Mp;      
    Cal:      if (Cal_oDone)  nstate <= Push_Msg;
              else            nstate <= Cal;
    Push_Msg: if (i == 0)     nstate <= IDLE;
              else            nstate <= Pop_Mp;                      
    default:                  nstate <= IDLE;
  endcase
end

always @(posedge clk or negedge rst_n)                    
  if(!rst_n) begin
    Function_done <= 1'b0;
    oMsg          <= 0;
    cal_enable    <= 1'b0;
    i             <= 255;
  end else begin
    case({cstate,nstate})
      {IDLE,IDLE}: begin
          Function_done <=  1'b0; 
        end
      {IDLE,Pop_Mp}: begin              
          Reduce_DecMp_RAd <= 0;
          get <= 0;
          i <= 255;       
        end      
      {Pop_Mp,Pop_Mp}: begin              
          get <= 1;       
        end
      {Pop_Mp,Cal}: begin
          get <= 0;
          cal_enable <= 1'b1;
          $display("Poly_tomsg (IN) [Mp %h]: %h", Reduce_DecMp_RAd, Reduce_DecMp1_RData);
          $display("Poly_tomsg (IN) [Mp %h]: %h", Reduce_DecMp_RAd, Reduce_DecMp2_RData);
        end
      {Cal,Cal}: begin
          cal_enable <= 1'b0;           
        end
      {Cal,Push_Msg}: begin
          oMsg[i] <= Cal_oMsg1 ^ Cal_oMsg2;
        end
      {Push_Msg,Pop_Mp}: begin
          Reduce_DecMp_RAd <= Reduce_DecMp_RAd + 1;
          i <= i - 1;                     
        end
      {Push_Msg,IDLE}: begin
          Function_done <= 1'b1;
          i <= 255;
        end
      default: ;
    endcase
  end

State_Polytomsg__masked_decode P0 (
  .clk(clk),
  .ce(cal_enable),
  .c1(Reduce_DecMp1_RData),
  .c2(Reduce_DecMp2_RData),
  .PRNG_data(PRNG_data),
  .data_valid(data_valid),
  .m1(Cal_oMsg1),
  .m2(Cal_oMsg2)
);
  
// State_Polytomsg__DataCal State_Polytomsg__DataCal_0(
// .clk(clk),    
// .reset_n(rst_n),
// .enable(cal_enable),  
// .iCoeffs(Reduce_DecMp1_RData), 
// .Data_Cal_done(Cal_oDone),
// .oMsg(Cal_oMsg1) 
// );

// State_Polytomsg__DataCal State_Polytomsg__DataCal_1(
// .clk(clk),    
// .reset_n(rst_n),
// .enable(cal_enable),  
// .iCoeffs(Reduce_DecMp2_RData), 
// .Data_Cal_done(),
// .oMsg(Cal_oMsg2) 
// ); 
    
endmodule
