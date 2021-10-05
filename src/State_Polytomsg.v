`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University Of Arkansas
// Engineer: Tendayi Kamucheka (ftendayi@gmail.com)
// 
// Create Date: 10/04/2021 10:04:39 AM
// Design Name: 
// Module Name: State_Polytomsg
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
module State_Polytomsg #(
  parameter KYBER_K     = 2,
  parameter KYBER_N     = 256,
  parameter KYBER_Q     = 3329,
  parameter Msg_Bytes   = 32,
  parameter data_Width  = 12,
  parameter Byte_bits   = 8,
  parameter o_Msg_Size  = Byte_bits * Msg_Bytes,
  parameter i_Poly_Size = data_Width * KYBER_N
)(
  input wire                      clk,    
  input wire                      rst_n,
  input wire                      enable, 
  input wire [data_Width-1 : 0]   Reduce_DecMp1_RData,
  input wire [data_Width-1 : 0]   Reduce_DecMp2_RData,
  output reg                      Function_done,
  output reg [7 : 0]              Reduce_DecMp_RAd,
  output reg [o_Msg_Size -1 : 0]  oMsg  
);
    
// systhesis translate_off
integer cycles = 0;
reg enable_counter = 0;
always @(posedge clk) begin
  if (enable_counter) 
    cycles <= cycles + 1;
end
// sythesis translate_on

integer i;

reg   get;
reg   Cal_enable;              
wire  Cal_oDone;
wire  Cal_oMsg1, Cal_oMsg2;                                

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
    IDLE:     if (enable)       nstate <= Pop_Mp;
              else              nstate <= IDLE;
    Pop_Mp:   if (Reduce_DecMp_RAd == KYBER_N-1)
                                nstate <= Cal;
              else              nstate <= Pop_Mp;
    Cal:      if (data_valid == 1'b0)
                                nstate <= IDLE;
              else              nstate <= Cal;
    default:                    nstate <= IDLE;
  endcase
end

always @(posedge clk or negedge rst_n) begin                  
  if(!rst_n) begin
    Function_done <= 1'b0;
    Cal_enable    <= 1'b0;
    oMsg          <= 0;
    i             <= 255;
    get           <= 0;
  end else begin
    case({cstate,nstate})
      {IDLE,IDLE}: begin
          Function_done <=  1'b0; 
        end
      {IDLE,Pop_Mp}: begin              
          Reduce_DecMp_RAd <= 0;
          get              <= 1'b1;
          i                <= 255;

          // systhesis translate_off
          enable_counter   <= 1'b1;
          // synthesis translate_on     
        end      
      {Pop_Mp,Pop_Mp}: begin 
          if (get) begin
            get              <= 1'b0; 
            Reduce_DecMp_RAd <= Reduce_DecMp_RAd + 1;      
          end else begin
            Reduce_DecMp_RAd <= Reduce_DecMp_RAd + 1;
            Cal_enable       <= 1'b1;
          end
        end
      {Pop_Mp,Cal}: begin
          Cal_enable <= 1'b0;

          // sythesis translate_off
          // DEBUG:
          $display("Poly_tomsg (IN) [Mp %h]: %h", Reduce_DecMp_RAd, Reduce_DecMp1_RData);
          $display("Poly_tomsg (IN) [Mp %h]: %h", Reduce_DecMp_RAd, Reduce_DecMp2_RData);
          // synthesi translate_on
        end
      {Cal,Cal}: begin
          cal_enable <= 1'b0;           
        end
      {Cal,IDLE}: begin
          Function_done  <= 1'b1;
          i              <= 255;

          // systhesis translate_off
          enable_counter <= 1'b0;
          // synthesis translate_on
        end
      default: ;
    endcase
  end
end

always @(posedge clk or negedge arstn) begin
  if (arstn == 1'b0) begin
    m <= 0;
  end else begin
    if (data_valid) begin
      oMSG[255-((m/8)*8) -: 8] <= 
          oMSG[255-((m/8)*8) -: 8] | ((Cal_oMsg1 ^   .m2(Cal_oMsg2)) << m%8);
      m <= m + 1;
    end
  end
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
