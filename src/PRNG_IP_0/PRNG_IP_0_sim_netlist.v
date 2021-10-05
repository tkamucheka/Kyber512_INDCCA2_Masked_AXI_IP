// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Sep 28 03:25:05 2021
// Host        : 444-xps-00 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/ip_repo/Kyber512_CCAKEM_Masked_IP_1.0/src/PRNG_IP_0/PRNG_IP_0_sim_netlist.v
// Design      : PRNG_IP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PRNG_IP_0,PRNG_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PRNG_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module PRNG_IP_0
   (PRNG_enable,
    PRNG_out,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input PRNG_enable;
  output [31:0]PRNG_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire PRNG_enable;
  wire [31:0]PRNG_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  PRNG_IP_0_PRNG_v1_0 inst
       (.PRNG_enable(PRNG_enable),
        .PRNG_out(PRNG_out),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "PRNG" *) 
module PRNG_IP_0_PRNG
   (PRNG_out,
    Q,
    s00_axi_aresetn,
    PRNG_enable,
    s00_axi_aclk,
    \CASR_reg[31]_0 );
  output [31:0]PRNG_out;
  input [2:0]Q;
  input s00_axi_aresetn;
  input PRNG_enable;
  input s00_axi_aclk;
  input [30:0]\CASR_reg[31]_0 ;

  wire \CASR[36]_i_1_n_0 ;
  wire \CASR[36]_i_3_n_0 ;
  wire [30:0]\CASR_reg[31]_0 ;
  wire \LFSR[0]_i_1_n_0 ;
  wire \LFSR[10]_i_1_n_0 ;
  wire \LFSR[11]_i_1_n_0 ;
  wire \LFSR[12]_i_1_n_0 ;
  wire \LFSR[13]_i_1_n_0 ;
  wire \LFSR[14]_i_1_n_0 ;
  wire \LFSR[15]_i_1_n_0 ;
  wire \LFSR[16]_i_1_n_0 ;
  wire \LFSR[17]_i_1_n_0 ;
  wire \LFSR[18]_i_1_n_0 ;
  wire \LFSR[19]_i_1_n_0 ;
  wire \LFSR[1]_i_1_n_0 ;
  wire \LFSR[20]_i_1_n_0 ;
  wire \LFSR[21]_i_1_n_0 ;
  wire \LFSR[22]_i_1_n_0 ;
  wire \LFSR[23]_i_1_n_0 ;
  wire \LFSR[24]_i_1_n_0 ;
  wire \LFSR[25]_i_1_n_0 ;
  wire \LFSR[26]_i_1_n_0 ;
  wire \LFSR[27]_i_1_n_0 ;
  wire \LFSR[28]_i_1_n_0 ;
  wire \LFSR[29]_i_1_n_0 ;
  wire \LFSR[2]_i_1_n_0 ;
  wire \LFSR[30]_i_1_n_0 ;
  wire \LFSR[31]_i_1_n_0 ;
  wire \LFSR[32]_i_1_n_0 ;
  wire \LFSR[33]_i_1_n_0 ;
  wire \LFSR[34]_i_1_n_0 ;
  wire \LFSR[35]_i_1_n_0 ;
  wire \LFSR[36]_i_1_n_0 ;
  wire \LFSR[37]_i_1_n_0 ;
  wire \LFSR[38]_i_1_n_0 ;
  wire \LFSR[39]_i_1_n_0 ;
  wire \LFSR[3]_i_1_n_0 ;
  wire \LFSR[40]_i_1_n_0 ;
  wire \LFSR[41]_i_1_n_0 ;
  wire \LFSR[42]_i_1_n_0 ;
  wire \LFSR[4]_i_1_n_0 ;
  wire \LFSR[5]_i_1_n_0 ;
  wire \LFSR[6]_i_1_n_0 ;
  wire \LFSR[7]_i_1_n_0 ;
  wire \LFSR[8]_i_1_n_0 ;
  wire \LFSR[9]_i_1_n_0 ;
  wire \LFSR_reg_n_0_[0] ;
  wire \LFSR_reg_n_0_[10] ;
  wire \LFSR_reg_n_0_[11] ;
  wire \LFSR_reg_n_0_[12] ;
  wire \LFSR_reg_n_0_[13] ;
  wire \LFSR_reg_n_0_[14] ;
  wire \LFSR_reg_n_0_[15] ;
  wire \LFSR_reg_n_0_[16] ;
  wire \LFSR_reg_n_0_[17] ;
  wire \LFSR_reg_n_0_[18] ;
  wire \LFSR_reg_n_0_[19] ;
  wire \LFSR_reg_n_0_[1] ;
  wire \LFSR_reg_n_0_[20] ;
  wire \LFSR_reg_n_0_[21] ;
  wire \LFSR_reg_n_0_[22] ;
  wire \LFSR_reg_n_0_[23] ;
  wire \LFSR_reg_n_0_[24] ;
  wire \LFSR_reg_n_0_[25] ;
  wire \LFSR_reg_n_0_[26] ;
  wire \LFSR_reg_n_0_[27] ;
  wire \LFSR_reg_n_0_[28] ;
  wire \LFSR_reg_n_0_[29] ;
  wire \LFSR_reg_n_0_[2] ;
  wire \LFSR_reg_n_0_[30] ;
  wire \LFSR_reg_n_0_[31] ;
  wire \LFSR_reg_n_0_[32] ;
  wire \LFSR_reg_n_0_[33] ;
  wire \LFSR_reg_n_0_[34] ;
  wire \LFSR_reg_n_0_[35] ;
  wire \LFSR_reg_n_0_[36] ;
  wire \LFSR_reg_n_0_[37] ;
  wire \LFSR_reg_n_0_[38] ;
  wire \LFSR_reg_n_0_[39] ;
  wire \LFSR_reg_n_0_[3] ;
  wire \LFSR_reg_n_0_[40] ;
  wire \LFSR_reg_n_0_[41] ;
  wire \LFSR_reg_n_0_[4] ;
  wire \LFSR_reg_n_0_[5] ;
  wire \LFSR_reg_n_0_[6] ;
  wire \LFSR_reg_n_0_[7] ;
  wire \LFSR_reg_n_0_[8] ;
  wire \LFSR_reg_n_0_[9] ;
  wire PRNG_enable;
  wire [31:0]PRNG_out;
  wire [2:0]Q;
  wire \out[0]_i_1_n_0 ;
  wire \out[10]_i_1_n_0 ;
  wire \out[11]_i_1_n_0 ;
  wire \out[12]_i_1_n_0 ;
  wire \out[13]_i_1_n_0 ;
  wire \out[14]_i_1_n_0 ;
  wire \out[15]_i_1_n_0 ;
  wire \out[16]_i_1_n_0 ;
  wire \out[17]_i_1_n_0 ;
  wire \out[18]_i_1_n_0 ;
  wire \out[19]_i_1_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[20]_i_1_n_0 ;
  wire \out[21]_i_1_n_0 ;
  wire \out[22]_i_1_n_0 ;
  wire \out[23]_i_1_n_0 ;
  wire \out[24]_i_1_n_0 ;
  wire \out[25]_i_1_n_0 ;
  wire \out[26]_i_1_n_0 ;
  wire \out[27]_i_1_n_0 ;
  wire \out[28]_i_1_n_0 ;
  wire \out[29]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[30]_i_1_n_0 ;
  wire \out[31]_i_1_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire \out[8]_i_1_n_0 ;
  wire \out[9]_i_1_n_0 ;
  wire out_n_0;
  wire p_0_in;
  wire [36:0]p_1_in;
  wire [36:0]p_1_in_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[0]_i_1 
       (.I0(\CASR_reg[31]_0 [0]),
        .I1(Q[1]),
        .I2(p_1_in_0[2]),
        .I3(p_1_in_0[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[10]_i_1 
       (.I0(\CASR_reg[31]_0 [10]),
        .I1(Q[1]),
        .I2(p_1_in_0[12]),
        .I3(p_1_in_0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[11]_i_1 
       (.I0(\CASR_reg[31]_0 [11]),
        .I1(Q[1]),
        .I2(p_1_in_0[13]),
        .I3(p_1_in_0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[12]_i_1 
       (.I0(\CASR_reg[31]_0 [12]),
        .I1(Q[1]),
        .I2(p_1_in_0[14]),
        .I3(p_1_in_0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[13]_i_1 
       (.I0(\CASR_reg[31]_0 [13]),
        .I1(Q[1]),
        .I2(p_1_in_0[15]),
        .I3(p_1_in_0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[14]_i_1 
       (.I0(\CASR_reg[31]_0 [14]),
        .I1(Q[1]),
        .I2(p_1_in_0[16]),
        .I3(p_1_in_0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[15]_i_1 
       (.I0(\CASR_reg[31]_0 [15]),
        .I1(Q[1]),
        .I2(p_1_in_0[17]),
        .I3(p_1_in_0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[16]_i_1 
       (.I0(\CASR_reg[31]_0 [16]),
        .I1(Q[1]),
        .I2(p_1_in_0[18]),
        .I3(p_1_in_0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[17]_i_1 
       (.I0(\CASR_reg[31]_0 [17]),
        .I1(Q[1]),
        .I2(p_1_in_0[19]),
        .I3(p_1_in_0[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[18]_i_1 
       (.I0(\CASR_reg[31]_0 [18]),
        .I1(Q[1]),
        .I2(p_1_in_0[20]),
        .I3(p_1_in_0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[19]_i_1 
       (.I0(\CASR_reg[31]_0 [19]),
        .I1(Q[1]),
        .I2(p_1_in_0[21]),
        .I3(p_1_in_0[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[1]_i_1 
       (.I0(\CASR_reg[31]_0 [1]),
        .I1(Q[1]),
        .I2(p_1_in_0[3]),
        .I3(p_1_in_0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[20]_i_1 
       (.I0(\CASR_reg[31]_0 [20]),
        .I1(Q[1]),
        .I2(p_1_in_0[22]),
        .I3(p_1_in_0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[21]_i_1 
       (.I0(\CASR_reg[31]_0 [21]),
        .I1(Q[1]),
        .I2(p_1_in_0[23]),
        .I3(p_1_in_0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[22]_i_1 
       (.I0(\CASR_reg[31]_0 [22]),
        .I1(Q[1]),
        .I2(p_1_in_0[24]),
        .I3(p_1_in_0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[23]_i_1 
       (.I0(\CASR_reg[31]_0 [23]),
        .I1(Q[1]),
        .I2(p_1_in_0[25]),
        .I3(p_1_in_0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[24]_i_1 
       (.I0(\CASR_reg[31]_0 [24]),
        .I1(Q[1]),
        .I2(p_1_in_0[26]),
        .I3(p_1_in_0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[25]_i_1 
       (.I0(\CASR_reg[31]_0 [25]),
        .I1(Q[1]),
        .I2(p_1_in_0[27]),
        .I3(p_1_in_0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[26]_i_1 
       (.I0(\CASR_reg[31]_0 [26]),
        .I1(Q[1]),
        .I2(p_1_in_0[28]),
        .I3(p_1_in_0[26]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \CASR[27]_i_1 
       (.I0(\CASR_reg[31]_0 [27]),
        .I1(Q[1]),
        .I2(p_1_in_0[29]),
        .I3(p_1_in_0[27]),
        .I4(p_1_in_0[28]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \CASR[28]_i_1 
       (.I0(Q[1]),
        .I1(p_1_in_0[28]),
        .I2(p_1_in_0[30]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[29]_i_1 
       (.I0(\CASR_reg[31]_0 [28]),
        .I1(Q[1]),
        .I2(p_1_in_0[31]),
        .I3(p_1_in_0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[2]_i_1 
       (.I0(\CASR_reg[31]_0 [2]),
        .I1(Q[1]),
        .I2(p_1_in_0[4]),
        .I3(p_1_in_0[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[30]_i_1 
       (.I0(\CASR_reg[31]_0 [29]),
        .I1(Q[1]),
        .I2(p_1_in_0[32]),
        .I3(p_1_in_0[30]),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[31]_i_1 
       (.I0(\CASR_reg[31]_0 [30]),
        .I1(Q[1]),
        .I2(p_1_in_0[33]),
        .I3(p_1_in_0[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \CASR[32]_i_1 
       (.I0(p_1_in_0[32]),
        .I1(p_1_in_0[34]),
        .I2(Q[1]),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \CASR[33]_i_1 
       (.I0(p_1_in_0[33]),
        .I1(p_1_in_0[35]),
        .I2(Q[1]),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \CASR[34]_i_1 
       (.I0(p_1_in_0[34]),
        .I1(p_1_in_0[36]),
        .I2(Q[1]),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \CASR[35]_i_1 
       (.I0(p_1_in_0[35]),
        .I1(p_1_in_0[0]),
        .I2(Q[1]),
        .O(p_1_in[35]));
  LUT3 #(
    .INIT(8'hFE)) 
    \CASR[36]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(PRNG_enable),
        .O(\CASR[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \CASR[36]_i_2 
       (.I0(p_1_in_0[36]),
        .I1(p_1_in_0[1]),
        .I2(Q[1]),
        .O(p_1_in[36]));
  LUT2 #(
    .INIT(4'h1)) 
    \CASR[36]_i_3 
       (.I0(Q[2]),
        .I1(s00_axi_aresetn),
        .O(\CASR[36]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[3]_i_1 
       (.I0(\CASR_reg[31]_0 [3]),
        .I1(Q[1]),
        .I2(p_1_in_0[5]),
        .I3(p_1_in_0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[4]_i_1 
       (.I0(\CASR_reg[31]_0 [4]),
        .I1(Q[1]),
        .I2(p_1_in_0[6]),
        .I3(p_1_in_0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[5]_i_1 
       (.I0(\CASR_reg[31]_0 [5]),
        .I1(Q[1]),
        .I2(p_1_in_0[7]),
        .I3(p_1_in_0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[6]_i_1 
       (.I0(\CASR_reg[31]_0 [6]),
        .I1(Q[1]),
        .I2(p_1_in_0[8]),
        .I3(p_1_in_0[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[7]_i_1 
       (.I0(\CASR_reg[31]_0 [7]),
        .I1(Q[1]),
        .I2(p_1_in_0[9]),
        .I3(p_1_in_0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[8]_i_1 
       (.I0(\CASR_reg[31]_0 [8]),
        .I1(Q[1]),
        .I2(p_1_in_0[10]),
        .I3(p_1_in_0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CASR[9]_i_1 
       (.I0(\CASR_reg[31]_0 [9]),
        .I1(Q[1]),
        .I2(p_1_in_0[11]),
        .I3(p_1_in_0[9]),
        .O(p_1_in[9]));
  FDCE \CASR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[0]),
        .Q(p_1_in_0[1]));
  FDCE \CASR_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[10]),
        .Q(p_1_in_0[11]));
  FDCE \CASR_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[11]),
        .Q(p_1_in_0[12]));
  FDCE \CASR_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[12]),
        .Q(p_1_in_0[13]));
  FDCE \CASR_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[13]),
        .Q(p_1_in_0[14]));
  FDCE \CASR_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[14]),
        .Q(p_1_in_0[15]));
  FDCE \CASR_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[15]),
        .Q(p_1_in_0[16]));
  FDCE \CASR_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[16]),
        .Q(p_1_in_0[17]));
  FDCE \CASR_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[17]),
        .Q(p_1_in_0[18]));
  FDCE \CASR_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[18]),
        .Q(p_1_in_0[19]));
  FDCE \CASR_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[19]),
        .Q(p_1_in_0[20]));
  FDCE \CASR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in_0[2]));
  FDCE \CASR_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[20]),
        .Q(p_1_in_0[21]));
  FDCE \CASR_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[21]),
        .Q(p_1_in_0[22]));
  FDCE \CASR_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[22]),
        .Q(p_1_in_0[23]));
  FDCE \CASR_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[23]),
        .Q(p_1_in_0[24]));
  FDCE \CASR_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[24]),
        .Q(p_1_in_0[25]));
  FDCE \CASR_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[25]),
        .Q(p_1_in_0[26]));
  FDCE \CASR_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[26]),
        .Q(p_1_in_0[27]));
  FDCE \CASR_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[27]),
        .Q(p_1_in_0[28]));
  FDPE \CASR_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .D(p_1_in[28]),
        .PRE(\CASR[36]_i_3_n_0 ),
        .Q(p_1_in_0[29]));
  FDCE \CASR_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[29]),
        .Q(p_1_in_0[30]));
  FDCE \CASR_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[2]),
        .Q(p_1_in_0[3]));
  FDCE \CASR_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[30]),
        .Q(p_1_in_0[31]));
  FDCE \CASR_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[31]),
        .Q(p_1_in_0[32]));
  FDCE \CASR_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[32]),
        .Q(p_1_in_0[33]));
  FDCE \CASR_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[33]),
        .Q(p_1_in_0[34]));
  FDCE \CASR_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[34]),
        .Q(p_1_in_0[35]));
  FDCE \CASR_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[35]),
        .Q(p_1_in_0[36]));
  FDCE \CASR_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[36]),
        .Q(p_1_in_0[0]));
  FDCE \CASR_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[3]),
        .Q(p_1_in_0[4]));
  FDCE \CASR_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[4]),
        .Q(p_1_in_0[5]));
  FDCE \CASR_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[5]),
        .Q(p_1_in_0[6]));
  FDCE \CASR_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[6]),
        .Q(p_1_in_0[7]));
  FDCE \CASR_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[7]),
        .Q(p_1_in_0[8]));
  FDCE \CASR_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[8]),
        .Q(p_1_in_0[9]));
  FDCE \CASR_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(p_1_in[9]),
        .Q(p_1_in_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[0]_i_1 
       (.I0(\CASR_reg[31]_0 [0]),
        .I1(Q[1]),
        .I2(p_0_in),
        .O(\LFSR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[10]_i_1 
       (.I0(\CASR_reg[31]_0 [10]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[9] ),
        .O(\LFSR[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[11]_i_1 
       (.I0(\CASR_reg[31]_0 [11]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[10] ),
        .O(\LFSR[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[12]_i_1 
       (.I0(\CASR_reg[31]_0 [12]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[11] ),
        .O(\LFSR[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[13]_i_1 
       (.I0(\CASR_reg[31]_0 [13]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[12] ),
        .O(\LFSR[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[14]_i_1 
       (.I0(\CASR_reg[31]_0 [14]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[13] ),
        .O(\LFSR[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[15]_i_1 
       (.I0(\CASR_reg[31]_0 [15]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[14] ),
        .O(\LFSR[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[16]_i_1 
       (.I0(\CASR_reg[31]_0 [16]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[15] ),
        .O(\LFSR[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[17]_i_1 
       (.I0(\CASR_reg[31]_0 [17]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[16] ),
        .O(\LFSR[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[18]_i_1 
       (.I0(\CASR_reg[31]_0 [18]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[17] ),
        .O(\LFSR[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[19]_i_1 
       (.I0(\CASR_reg[31]_0 [19]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[18] ),
        .O(\LFSR[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \LFSR[1]_i_1 
       (.I0(\CASR_reg[31]_0 [1]),
        .I1(Q[1]),
        .I2(p_0_in),
        .I3(\LFSR_reg_n_0_[0] ),
        .O(\LFSR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \LFSR[20]_i_1 
       (.I0(\CASR_reg[31]_0 [20]),
        .I1(Q[1]),
        .I2(p_0_in),
        .I3(\LFSR_reg_n_0_[19] ),
        .O(\LFSR[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[21]_i_1 
       (.I0(\CASR_reg[31]_0 [21]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[20] ),
        .O(\LFSR[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[22]_i_1 
       (.I0(\CASR_reg[31]_0 [22]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[21] ),
        .O(\LFSR[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[23]_i_1 
       (.I0(\CASR_reg[31]_0 [23]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[22] ),
        .O(\LFSR[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[24]_i_1 
       (.I0(\CASR_reg[31]_0 [24]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[23] ),
        .O(\LFSR[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[25]_i_1 
       (.I0(\CASR_reg[31]_0 [25]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[24] ),
        .O(\LFSR[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[26]_i_1 
       (.I0(\CASR_reg[31]_0 [26]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[25] ),
        .O(\LFSR[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[27]_i_1 
       (.I0(\CASR_reg[31]_0 [27]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[26] ),
        .O(\LFSR[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \LFSR[28]_i_1 
       (.I0(Q[1]),
        .I1(\LFSR_reg_n_0_[27] ),
        .O(\LFSR[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[29]_i_1 
       (.I0(\CASR_reg[31]_0 [28]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[28] ),
        .O(\LFSR[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[2]_i_1 
       (.I0(\CASR_reg[31]_0 [2]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[1] ),
        .O(\LFSR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[30]_i_1 
       (.I0(\CASR_reg[31]_0 [29]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[29] ),
        .O(\LFSR[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[31]_i_1 
       (.I0(\CASR_reg[31]_0 [30]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[30] ),
        .O(\LFSR[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[32]_i_1 
       (.I0(\LFSR_reg_n_0_[31] ),
        .I1(Q[1]),
        .O(\LFSR[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[33]_i_1 
       (.I0(\LFSR_reg_n_0_[32] ),
        .I1(Q[1]),
        .O(\LFSR[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[34]_i_1 
       (.I0(\LFSR_reg_n_0_[33] ),
        .I1(Q[1]),
        .O(\LFSR[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[35]_i_1 
       (.I0(\LFSR_reg_n_0_[34] ),
        .I1(Q[1]),
        .O(\LFSR[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[36]_i_1 
       (.I0(\LFSR_reg_n_0_[35] ),
        .I1(Q[1]),
        .O(\LFSR[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[37]_i_1 
       (.I0(\LFSR_reg_n_0_[36] ),
        .I1(Q[1]),
        .O(\LFSR[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[38]_i_1 
       (.I0(\LFSR_reg_n_0_[37] ),
        .I1(Q[1]),
        .O(\LFSR[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[39]_i_1 
       (.I0(\LFSR_reg_n_0_[38] ),
        .I1(Q[1]),
        .O(\LFSR[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[3]_i_1 
       (.I0(\CASR_reg[31]_0 [3]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[2] ),
        .O(\LFSR[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[40]_i_1 
       (.I0(\LFSR_reg_n_0_[39] ),
        .I1(Q[1]),
        .O(\LFSR[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \LFSR[41]_i_1 
       (.I0(\LFSR_reg_n_0_[40] ),
        .I1(p_0_in),
        .I2(Q[1]),
        .O(\LFSR[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LFSR[42]_i_1 
       (.I0(\LFSR_reg_n_0_[41] ),
        .I1(Q[1]),
        .O(\LFSR[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[4]_i_1 
       (.I0(\CASR_reg[31]_0 [4]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[3] ),
        .O(\LFSR[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[5]_i_1 
       (.I0(\CASR_reg[31]_0 [5]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[4] ),
        .O(\LFSR[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[6]_i_1 
       (.I0(\CASR_reg[31]_0 [6]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[5] ),
        .O(\LFSR[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[7]_i_1 
       (.I0(\CASR_reg[31]_0 [7]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[6] ),
        .O(\LFSR[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[8]_i_1 
       (.I0(\CASR_reg[31]_0 [8]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[7] ),
        .O(\LFSR[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LFSR[9]_i_1 
       (.I0(\CASR_reg[31]_0 [9]),
        .I1(Q[1]),
        .I2(\LFSR_reg_n_0_[8] ),
        .O(\LFSR[9]_i_1_n_0 ));
  FDPE \LFSR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .D(\LFSR[0]_i_1_n_0 ),
        .PRE(\CASR[36]_i_3_n_0 ),
        .Q(\LFSR_reg_n_0_[0] ));
  FDCE \LFSR_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[10]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[10] ));
  FDCE \LFSR_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[11]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[11] ));
  FDCE \LFSR_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[12]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[12] ));
  FDCE \LFSR_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[13]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[13] ));
  FDCE \LFSR_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[14]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[14] ));
  FDCE \LFSR_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[15]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[15] ));
  FDCE \LFSR_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[16]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[16] ));
  FDCE \LFSR_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[17]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[17] ));
  FDCE \LFSR_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[18]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[18] ));
  FDCE \LFSR_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[19]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[19] ));
  FDCE \LFSR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[1]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[1] ));
  FDCE \LFSR_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[20]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[20] ));
  FDCE \LFSR_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[21]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[21] ));
  FDCE \LFSR_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[22]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[22] ));
  FDCE \LFSR_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[23]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[23] ));
  FDCE \LFSR_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[24]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[24] ));
  FDCE \LFSR_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[25]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[25] ));
  FDCE \LFSR_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[26]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[26] ));
  FDCE \LFSR_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[27]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[27] ));
  FDPE \LFSR_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .D(\LFSR[28]_i_1_n_0 ),
        .PRE(\CASR[36]_i_3_n_0 ),
        .Q(\LFSR_reg_n_0_[28] ));
  FDCE \LFSR_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[29]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[29] ));
  FDCE \LFSR_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[2]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[2] ));
  FDCE \LFSR_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[30]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[30] ));
  FDCE \LFSR_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[31]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[31] ));
  FDCE \LFSR_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[32]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[32] ));
  FDCE \LFSR_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[33]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[33] ));
  FDCE \LFSR_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[34]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[34] ));
  FDCE \LFSR_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[35]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[35] ));
  FDCE \LFSR_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[36]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[36] ));
  FDCE \LFSR_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[37]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[37] ));
  FDCE \LFSR_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[38]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[38] ));
  FDCE \LFSR_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[39]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[39] ));
  FDCE \LFSR_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[3]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[3] ));
  FDCE \LFSR_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[40]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[40] ));
  FDCE \LFSR_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[41]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[41] ));
  FDCE \LFSR_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[42]_i_1_n_0 ),
        .Q(p_0_in));
  FDCE \LFSR_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[4]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[4] ));
  FDCE \LFSR_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[5]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[5] ));
  FDCE \LFSR_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[6]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[6] ));
  FDCE \LFSR_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[7]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[7] ));
  FDCE \LFSR_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[8]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[8] ));
  FDCE \LFSR_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\CASR[36]_i_1_n_0 ),
        .CLR(\CASR[36]_i_3_n_0 ),
        .D(\LFSR[9]_i_1_n_0 ),
        .Q(\LFSR_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h0E0E0E00)) 
    out
       (.I0(Q[2]),
        .I1(s00_axi_aresetn),
        .I2(Q[1]),
        .I3(PRNG_enable),
        .I4(Q[0]),
        .O(out_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_i_1 
       (.I0(p_1_in_0[1]),
        .I1(\LFSR_reg_n_0_[0] ),
        .O(\out[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[10]_i_1 
       (.I0(p_1_in_0[11]),
        .I1(\LFSR_reg_n_0_[10] ),
        .O(\out[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[11]_i_1 
       (.I0(p_1_in_0[12]),
        .I1(\LFSR_reg_n_0_[11] ),
        .O(\out[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_i_1 
       (.I0(p_1_in_0[13]),
        .I1(\LFSR_reg_n_0_[12] ),
        .O(\out[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[13]_i_1 
       (.I0(p_1_in_0[14]),
        .I1(\LFSR_reg_n_0_[13] ),
        .O(\out[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[14]_i_1 
       (.I0(p_1_in_0[15]),
        .I1(\LFSR_reg_n_0_[14] ),
        .O(\out[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[15]_i_1 
       (.I0(p_1_in_0[16]),
        .I1(\LFSR_reg_n_0_[15] ),
        .O(\out[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[16]_i_1 
       (.I0(p_1_in_0[17]),
        .I1(\LFSR_reg_n_0_[16] ),
        .O(\out[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[17]_i_1 
       (.I0(p_1_in_0[18]),
        .I1(\LFSR_reg_n_0_[17] ),
        .O(\out[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[18]_i_1 
       (.I0(p_1_in_0[19]),
        .I1(\LFSR_reg_n_0_[18] ),
        .O(\out[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[19]_i_1 
       (.I0(p_1_in_0[20]),
        .I1(\LFSR_reg_n_0_[19] ),
        .O(\out[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[1]_i_1 
       (.I0(p_1_in_0[2]),
        .I1(\LFSR_reg_n_0_[1] ),
        .O(\out[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[20]_i_1 
       (.I0(p_1_in_0[21]),
        .I1(\LFSR_reg_n_0_[20] ),
        .O(\out[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[21]_i_1 
       (.I0(p_1_in_0[22]),
        .I1(\LFSR_reg_n_0_[21] ),
        .O(\out[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[22]_i_1 
       (.I0(p_1_in_0[23]),
        .I1(\LFSR_reg_n_0_[22] ),
        .O(\out[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[23]_i_1 
       (.I0(p_1_in_0[24]),
        .I1(\LFSR_reg_n_0_[23] ),
        .O(\out[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[24]_i_1 
       (.I0(p_1_in_0[25]),
        .I1(\LFSR_reg_n_0_[24] ),
        .O(\out[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[25]_i_1 
       (.I0(p_1_in_0[26]),
        .I1(\LFSR_reg_n_0_[25] ),
        .O(\out[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[26]_i_1 
       (.I0(p_1_in_0[27]),
        .I1(\LFSR_reg_n_0_[26] ),
        .O(\out[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[27]_i_1 
       (.I0(p_1_in_0[28]),
        .I1(\LFSR_reg_n_0_[27] ),
        .O(\out[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[28]_i_1 
       (.I0(p_1_in_0[29]),
        .I1(\LFSR_reg_n_0_[28] ),
        .O(\out[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[29]_i_1 
       (.I0(p_1_in_0[30]),
        .I1(\LFSR_reg_n_0_[29] ),
        .O(\out[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2]_i_1 
       (.I0(p_1_in_0[3]),
        .I1(\LFSR_reg_n_0_[2] ),
        .O(\out[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[30]_i_1 
       (.I0(p_1_in_0[31]),
        .I1(\LFSR_reg_n_0_[30] ),
        .O(\out[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[31]_i_1 
       (.I0(p_1_in_0[32]),
        .I1(\LFSR_reg_n_0_[31] ),
        .O(\out[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[3]_i_1 
       (.I0(p_1_in_0[4]),
        .I1(\LFSR_reg_n_0_[3] ),
        .O(\out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[4]_i_1 
       (.I0(p_1_in_0[5]),
        .I1(\LFSR_reg_n_0_[4] ),
        .O(\out[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[5]_i_1 
       (.I0(p_1_in_0[6]),
        .I1(\LFSR_reg_n_0_[5] ),
        .O(\out[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[6]_i_1 
       (.I0(p_1_in_0[7]),
        .I1(\LFSR_reg_n_0_[6] ),
        .O(\out[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_1 
       (.I0(p_1_in_0[8]),
        .I1(\LFSR_reg_n_0_[7] ),
        .O(\out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_i_1 
       (.I0(p_1_in_0[9]),
        .I1(\LFSR_reg_n_0_[8] ),
        .O(\out[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[9]_i_1 
       (.I0(p_1_in_0[10]),
        .I1(\LFSR_reg_n_0_[9] ),
        .O(\out[9]_i_1_n_0 ));
  FDRE \out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[0]_i_1_n_0 ),
        .Q(PRNG_out[0]),
        .R(1'b0));
  FDRE \out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[10]_i_1_n_0 ),
        .Q(PRNG_out[10]),
        .R(1'b0));
  FDRE \out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[11]_i_1_n_0 ),
        .Q(PRNG_out[11]),
        .R(1'b0));
  FDRE \out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[12]_i_1_n_0 ),
        .Q(PRNG_out[12]),
        .R(1'b0));
  FDRE \out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[13]_i_1_n_0 ),
        .Q(PRNG_out[13]),
        .R(1'b0));
  FDRE \out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[14]_i_1_n_0 ),
        .Q(PRNG_out[14]),
        .R(1'b0));
  FDRE \out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[15]_i_1_n_0 ),
        .Q(PRNG_out[15]),
        .R(1'b0));
  FDRE \out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[16]_i_1_n_0 ),
        .Q(PRNG_out[16]),
        .R(1'b0));
  FDRE \out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[17]_i_1_n_0 ),
        .Q(PRNG_out[17]),
        .R(1'b0));
  FDRE \out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[18]_i_1_n_0 ),
        .Q(PRNG_out[18]),
        .R(1'b0));
  FDRE \out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[19]_i_1_n_0 ),
        .Q(PRNG_out[19]),
        .R(1'b0));
  FDRE \out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[1]_i_1_n_0 ),
        .Q(PRNG_out[1]),
        .R(1'b0));
  FDRE \out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[20]_i_1_n_0 ),
        .Q(PRNG_out[20]),
        .R(1'b0));
  FDRE \out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[21]_i_1_n_0 ),
        .Q(PRNG_out[21]),
        .R(1'b0));
  FDRE \out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[22]_i_1_n_0 ),
        .Q(PRNG_out[22]),
        .R(1'b0));
  FDRE \out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[23]_i_1_n_0 ),
        .Q(PRNG_out[23]),
        .R(1'b0));
  FDRE \out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[24]_i_1_n_0 ),
        .Q(PRNG_out[24]),
        .R(1'b0));
  FDRE \out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[25]_i_1_n_0 ),
        .Q(PRNG_out[25]),
        .R(1'b0));
  FDRE \out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[26]_i_1_n_0 ),
        .Q(PRNG_out[26]),
        .R(1'b0));
  FDRE \out_reg[27] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[27]_i_1_n_0 ),
        .Q(PRNG_out[27]),
        .R(1'b0));
  FDRE \out_reg[28] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[28]_i_1_n_0 ),
        .Q(PRNG_out[28]),
        .R(1'b0));
  FDRE \out_reg[29] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[29]_i_1_n_0 ),
        .Q(PRNG_out[29]),
        .R(1'b0));
  FDRE \out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[2]_i_1_n_0 ),
        .Q(PRNG_out[2]),
        .R(1'b0));
  FDRE \out_reg[30] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[30]_i_1_n_0 ),
        .Q(PRNG_out[30]),
        .R(1'b0));
  FDRE \out_reg[31] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[31]_i_1_n_0 ),
        .Q(PRNG_out[31]),
        .R(1'b0));
  FDRE \out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[3]_i_1_n_0 ),
        .Q(PRNG_out[3]),
        .R(1'b0));
  FDRE \out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[4]_i_1_n_0 ),
        .Q(PRNG_out[4]),
        .R(1'b0));
  FDRE \out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[5]_i_1_n_0 ),
        .Q(PRNG_out[5]),
        .R(1'b0));
  FDRE \out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[6]_i_1_n_0 ),
        .Q(PRNG_out[6]),
        .R(1'b0));
  FDRE \out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[7]_i_1_n_0 ),
        .Q(PRNG_out[7]),
        .R(1'b0));
  FDRE \out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[8]_i_1_n_0 ),
        .Q(PRNG_out[8]),
        .R(1'b0));
  FDRE \out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(out_n_0),
        .D(\out[9]_i_1_n_0 ),
        .Q(PRNG_out[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PRNG_v1_0" *) 
module PRNG_IP_0_PRNG_v1_0
   (S_AXI_AWREADY,
    PRNG_out,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    PRNG_enable,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output [31:0]PRNG_out;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input PRNG_enable;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire PRNG_enable;
  wire [31:0]PRNG_out;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  PRNG_IP_0_PRNG_v1_0_S00_AXI PRNG_v1_0_S00_AXI_inst
       (.PRNG_enable(PRNG_enable),
        .PRNG_out(PRNG_out),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "PRNG_v1_0_S00_AXI" *) 
module PRNG_IP_0_PRNG_v1_0_S00_AXI
   (S_AXI_AWREADY,
    PRNG_out,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    PRNG_enable,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output [31:0]PRNG_out;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input PRNG_enable;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire PRNG_enable;
  wire [31:0]PRNG_out;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \control_reg[0]_i_1_n_0 ;
  wire \control_reg[10]_i_1_n_0 ;
  wire \control_reg[11]_i_1_n_0 ;
  wire \control_reg[12]_i_1_n_0 ;
  wire \control_reg[13]_i_1_n_0 ;
  wire \control_reg[14]_i_1_n_0 ;
  wire \control_reg[15]_i_1_n_0 ;
  wire \control_reg[16]_i_1_n_0 ;
  wire \control_reg[17]_i_1_n_0 ;
  wire \control_reg[18]_i_1_n_0 ;
  wire \control_reg[19]_i_1_n_0 ;
  wire \control_reg[20]_i_1_n_0 ;
  wire \control_reg[21]_i_1_n_0 ;
  wire \control_reg[22]_i_1_n_0 ;
  wire \control_reg[23]_i_1_n_0 ;
  wire \control_reg[24]_i_1_n_0 ;
  wire \control_reg[25]_i_1_n_0 ;
  wire \control_reg[26]_i_1_n_0 ;
  wire \control_reg[27]_i_1_n_0 ;
  wire \control_reg[28]_i_1_n_0 ;
  wire \control_reg[29]_i_1_n_0 ;
  wire \control_reg[2]_i_1_n_0 ;
  wire \control_reg[30]_i_1_n_0 ;
  wire \control_reg[31]_i_1_n_0 ;
  wire \control_reg[31]_i_2_n_0 ;
  wire \control_reg[3]_i_1_n_0 ;
  wire \control_reg[4]_i_1_n_0 ;
  wire \control_reg[5]_i_1_n_0 ;
  wire \control_reg[6]_i_1_n_0 ;
  wire \control_reg[7]_i_1_n_0 ;
  wire \control_reg[8]_i_1_n_0 ;
  wire \control_reg[9]_i_1_n_0 ;
  wire \control_reg_reg_n_0_[0] ;
  wire \control_reg_reg_n_0_[10] ;
  wire \control_reg_reg_n_0_[11] ;
  wire \control_reg_reg_n_0_[12] ;
  wire \control_reg_reg_n_0_[13] ;
  wire \control_reg_reg_n_0_[14] ;
  wire \control_reg_reg_n_0_[15] ;
  wire \control_reg_reg_n_0_[16] ;
  wire \control_reg_reg_n_0_[17] ;
  wire \control_reg_reg_n_0_[18] ;
  wire \control_reg_reg_n_0_[19] ;
  wire \control_reg_reg_n_0_[20] ;
  wire \control_reg_reg_n_0_[21] ;
  wire \control_reg_reg_n_0_[22] ;
  wire \control_reg_reg_n_0_[23] ;
  wire \control_reg_reg_n_0_[24] ;
  wire \control_reg_reg_n_0_[25] ;
  wire \control_reg_reg_n_0_[26] ;
  wire \control_reg_reg_n_0_[27] ;
  wire \control_reg_reg_n_0_[28] ;
  wire \control_reg_reg_n_0_[29] ;
  wire \control_reg_reg_n_0_[2] ;
  wire \control_reg_reg_n_0_[30] ;
  wire \control_reg_reg_n_0_[31] ;
  wire \control_reg_reg_n_0_[3] ;
  wire \control_reg_reg_n_0_[4] ;
  wire \control_reg_reg_n_0_[5] ;
  wire \control_reg_reg_n_0_[6] ;
  wire \control_reg_reg_n_0_[7] ;
  wire \control_reg_reg_n_0_[8] ;
  wire \control_reg_reg_n_0_[9] ;
  wire cstate;
  wire cstate_i_1_n_0;
  wire load;
  wire nstate0_carry__0_i_1_n_0;
  wire nstate0_carry__0_i_2_n_0;
  wire nstate0_carry__0_i_3_n_0;
  wire nstate0_carry__0_i_4_n_0;
  wire nstate0_carry__0_n_0;
  wire nstate0_carry__0_n_1;
  wire nstate0_carry__0_n_2;
  wire nstate0_carry__0_n_3;
  wire nstate0_carry__1_i_1_n_0;
  wire nstate0_carry__1_i_2_n_0;
  wire nstate0_carry__1_i_3_n_0;
  wire nstate0_carry__1_n_1;
  wire nstate0_carry__1_n_2;
  wire nstate0_carry__1_n_3;
  wire nstate0_carry_i_1_n_0;
  wire nstate0_carry_i_2_n_0;
  wire nstate0_carry_i_3_n_0;
  wire nstate0_carry_i_4_n_0;
  wire nstate0_carry_n_0;
  wire nstate0_carry_n_1;
  wire nstate0_carry_n_2;
  wire nstate0_carry_n_3;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [3:0]NLW_nstate0_carry_O_UNCONNECTED;
  wire [3:0]NLW_nstate0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_nstate0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_nstate0_carry__1_O_UNCONNECTED;

  PRNG_IP_0_PRNG P0
       (.\CASR_reg[31]_0 ({slv_reg1[31:29],slv_reg1[27:0]}),
        .PRNG_enable(PRNG_enable),
        .PRNG_out(PRNG_out),
        .Q({\control_reg_reg_n_0_[31] ,load,\control_reg_reg_n_0_[0] }),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(PRNG_out[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[0]_i_1 
       (.I0(slv_reg0[0]),
        .I1(cstate),
        .O(\control_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(cstate),
        .O(\control_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(cstate),
        .O(\control_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(cstate),
        .O(\control_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(cstate),
        .O(\control_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[14]_i_1 
       (.I0(slv_reg0[14]),
        .I1(cstate),
        .O(\control_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(cstate),
        .O(\control_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(cstate),
        .O(\control_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(cstate),
        .O(\control_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(cstate),
        .O(\control_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(cstate),
        .O(\control_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(cstate),
        .O(\control_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(cstate),
        .O(\control_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(cstate),
        .O(\control_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(cstate),
        .O(\control_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(cstate),
        .O(\control_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(cstate),
        .O(\control_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(cstate),
        .O(\control_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(cstate),
        .O(\control_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(cstate),
        .O(\control_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(cstate),
        .O(\control_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(cstate),
        .O(\control_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(cstate),
        .O(\control_reg[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \control_reg[31]_i_1 
       (.I0(nstate0_carry__1_n_1),
        .I1(cstate),
        .O(\control_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \control_reg[31]_i_2 
       (.I0(cstate),
        .I1(slv_reg0[31]),
        .O(\control_reg[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(cstate),
        .O(\control_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[4]_i_1 
       (.I0(slv_reg0[4]),
        .I1(cstate),
        .O(\control_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[5]_i_1 
       (.I0(slv_reg0[5]),
        .I1(cstate),
        .O(\control_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(cstate),
        .O(\control_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[7]_i_1 
       (.I0(slv_reg0[7]),
        .I1(cstate),
        .O(\control_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(cstate),
        .O(\control_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \control_reg[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(cstate),
        .O(\control_reg[9]_i_1_n_0 ));
  FDCE \control_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[0]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[0] ));
  FDCE \control_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[10]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[10] ));
  FDCE \control_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[11]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[11] ));
  FDCE \control_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[12]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[12] ));
  FDCE \control_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[13]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[13] ));
  FDCE \control_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[14]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[14] ));
  FDCE \control_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[15]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[15] ));
  FDCE \control_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[16]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[16] ));
  FDCE \control_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[17]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[17] ));
  FDCE \control_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[18]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[18] ));
  FDCE \control_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[19]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[19] ));
  FDCE \control_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(slv_reg0[1]),
        .Q(load));
  FDCE \control_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[20]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[20] ));
  FDCE \control_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[21]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[21] ));
  FDCE \control_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[22]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[22] ));
  FDCE \control_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[23]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[23] ));
  FDCE \control_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[24]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[24] ));
  FDCE \control_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[25]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[25] ));
  FDCE \control_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[26]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[26] ));
  FDCE \control_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[27]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[27] ));
  FDCE \control_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[28]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[28] ));
  FDCE \control_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[29]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[29] ));
  FDCE \control_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[2]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[2] ));
  FDCE \control_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[30]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[30] ));
  FDPE \control_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(\control_reg[31]_i_2_n_0 ),
        .PRE(axi_awready_i_1_n_0),
        .Q(\control_reg_reg_n_0_[31] ));
  FDCE \control_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[3]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[3] ));
  FDCE \control_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[4]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[4] ));
  FDCE \control_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[5]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[5] ));
  FDCE \control_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[6]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[6] ));
  FDCE \control_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[7]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[7] ));
  FDCE \control_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[8]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[8] ));
  FDCE \control_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(\control_reg[9]_i_1_n_0 ),
        .Q(\control_reg_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    cstate_i_1
       (.I0(nstate0_carry__1_n_1),
        .I1(cstate),
        .O(cstate_i_1_n_0));
  FDCE cstate_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cstate_i_1_n_0),
        .Q(cstate));
  CARRY4 nstate0_carry
       (.CI(1'b0),
        .CO({nstate0_carry_n_0,nstate0_carry_n_1,nstate0_carry_n_2,nstate0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_nstate0_carry_O_UNCONNECTED[3:0]),
        .S({nstate0_carry_i_1_n_0,nstate0_carry_i_2_n_0,nstate0_carry_i_3_n_0,nstate0_carry_i_4_n_0}));
  CARRY4 nstate0_carry__0
       (.CI(nstate0_carry_n_0),
        .CO({nstate0_carry__0_n_0,nstate0_carry__0_n_1,nstate0_carry__0_n_2,nstate0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_nstate0_carry__0_O_UNCONNECTED[3:0]),
        .S({nstate0_carry__0_i_1_n_0,nstate0_carry__0_i_2_n_0,nstate0_carry__0_i_3_n_0,nstate0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry__0_i_1
       (.I0(\control_reg_reg_n_0_[21] ),
        .I1(slv_reg0[21]),
        .I2(slv_reg0[23]),
        .I3(\control_reg_reg_n_0_[23] ),
        .I4(slv_reg0[22]),
        .I5(\control_reg_reg_n_0_[22] ),
        .O(nstate0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry__0_i_2
       (.I0(\control_reg_reg_n_0_[18] ),
        .I1(slv_reg0[18]),
        .I2(slv_reg0[20]),
        .I3(\control_reg_reg_n_0_[20] ),
        .I4(slv_reg0[19]),
        .I5(\control_reg_reg_n_0_[19] ),
        .O(nstate0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry__0_i_3
       (.I0(\control_reg_reg_n_0_[15] ),
        .I1(slv_reg0[15]),
        .I2(slv_reg0[17]),
        .I3(\control_reg_reg_n_0_[17] ),
        .I4(slv_reg0[16]),
        .I5(\control_reg_reg_n_0_[16] ),
        .O(nstate0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry__0_i_4
       (.I0(\control_reg_reg_n_0_[12] ),
        .I1(slv_reg0[12]),
        .I2(slv_reg0[14]),
        .I3(\control_reg_reg_n_0_[14] ),
        .I4(slv_reg0[13]),
        .I5(\control_reg_reg_n_0_[13] ),
        .O(nstate0_carry__0_i_4_n_0));
  CARRY4 nstate0_carry__1
       (.CI(nstate0_carry__0_n_0),
        .CO({NLW_nstate0_carry__1_CO_UNCONNECTED[3],nstate0_carry__1_n_1,nstate0_carry__1_n_2,nstate0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_nstate0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,nstate0_carry__1_i_1_n_0,nstate0_carry__1_i_2_n_0,nstate0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    nstate0_carry__1_i_1
       (.I0(\control_reg_reg_n_0_[30] ),
        .I1(slv_reg0[30]),
        .I2(\control_reg_reg_n_0_[31] ),
        .I3(slv_reg0[31]),
        .O(nstate0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry__1_i_2
       (.I0(\control_reg_reg_n_0_[27] ),
        .I1(slv_reg0[27]),
        .I2(slv_reg0[29]),
        .I3(\control_reg_reg_n_0_[29] ),
        .I4(slv_reg0[28]),
        .I5(\control_reg_reg_n_0_[28] ),
        .O(nstate0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry__1_i_3
       (.I0(\control_reg_reg_n_0_[24] ),
        .I1(slv_reg0[24]),
        .I2(slv_reg0[26]),
        .I3(\control_reg_reg_n_0_[26] ),
        .I4(slv_reg0[25]),
        .I5(\control_reg_reg_n_0_[25] ),
        .O(nstate0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry_i_1
       (.I0(\control_reg_reg_n_0_[9] ),
        .I1(slv_reg0[9]),
        .I2(slv_reg0[11]),
        .I3(\control_reg_reg_n_0_[11] ),
        .I4(slv_reg0[10]),
        .I5(\control_reg_reg_n_0_[10] ),
        .O(nstate0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry_i_2
       (.I0(\control_reg_reg_n_0_[6] ),
        .I1(slv_reg0[6]),
        .I2(slv_reg0[8]),
        .I3(\control_reg_reg_n_0_[8] ),
        .I4(slv_reg0[7]),
        .I5(\control_reg_reg_n_0_[7] ),
        .O(nstate0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry_i_3
       (.I0(\control_reg_reg_n_0_[3] ),
        .I1(slv_reg0[3]),
        .I2(slv_reg0[5]),
        .I3(\control_reg_reg_n_0_[5] ),
        .I4(slv_reg0[4]),
        .I5(\control_reg_reg_n_0_[4] ),
        .O(nstate0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    nstate0_carry_i_4
       (.I0(\control_reg_reg_n_0_[0] ),
        .I1(slv_reg0[0]),
        .I2(slv_reg0[2]),
        .I3(\control_reg_reg_n_0_[2] ),
        .I4(slv_reg0[1]),
        .I5(load),
        .O(nstate0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
