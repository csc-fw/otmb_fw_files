///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 1.8
//  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
//  /   /         Filename : cmp_rx_buf_bypass.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module CMP_RX_BUF_BYPASS (a GTX Wrapper)
// Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
// 
// 
// (c) Copyright 2009-2010 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps


//***************************** Entity Declaration ****************************

(* CORE_GENERATION_INFO = "CMP_RX_BUF_BYPASS,v6_gtxwizard_v1_8,{protocol_file=Start_from_scratch}" *) module GTX_RX_BUF_BYPASS #
(
    // Simulation attributes
    parameter   WRAPPER_SIM_GTXRESET_SPEEDUP    = 0    // Set to 1 to speed up sim reset
)
(
    
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y11)

    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    output  [1:0]   GTX0_RXCHARISCOMMA_OUT,
    output  [1:0]   GTX0_RXCHARISK_OUT,
    output  [1:0]   GTX0_RXDISPERR_OUT,
    output  [1:0]   GTX0_RXNOTINTABLE_OUT,
    //------------- Receive Ports - Comma Detection and Alignment --------------
    output          GTX0_RXBYTEISALIGNED_OUT,
    output          GTX0_RXCOMMADET_OUT,
    input           GTX0_RXENMCOMMAALIGN_IN,
    input           GTX0_RXENPCOMMAALIGN_IN,
    //----------------- Receive Ports - RX Data Path interface -----------------
    output  [15:0]  GTX0_RXDATA_OUT,
    output          GTX0_RXRECCLK_OUT,
    input           GTX0_RXUSRCLK2_IN,
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    input           GTX0_RXN_IN,
    input           GTX0_RXP_IN,
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    input           GTX0_RXDLYALIGNDISABLE_IN,
    input           GTX0_RXDLYALIGNMONENB_IN,
    output  [7:0]   GTX0_RXDLYALIGNMONITOR_OUT,
    input           GTX0_RXDLYALIGNOVERRIDE_IN,
    input           GTX0_RXDLYALIGNRESET_IN,
    input           GTX0_RXENPMAPHASEALIGN_IN,
    input           GTX0_RXPMASETPHASE_IN,
    //------------- Receive Ports - RX Loss-of-sync State Machine --------------
    output  [1:0]   GTX0_RXLOSSOFSYNC_OUT,
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    input           GTX0_GTXRXRESET_IN,
    input           GTX0_MGTREFCLKRX_IN,
    input           GTX0_PLLRXRESET_IN,
    input           RX_POLARITY_IN,  // JGnew
    output          GTX0_RXPLLLKDET_OUT,
    output          GTX0_RXRESETDONE_OUT,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output          GTX0_TXN_OUT,
    output          GTX0_TXP_OUT,
  output      sump

);

//***************************** Wire Declarations *****************************

    // ground and vcc signals
    wire            tied_to_ground_i;
//jk    wire    [63:0]  tied_to_ground_vec_i;
//jk    wire            tied_to_vcc_i;
//jk    wire    [63:0]  tied_to_vcc_vec_i;
 
//********************************* Main Body of Code**************************

    assign tied_to_ground_i             = 1'b0;
//jk    assign tied_to_ground_vec_i         = 64'h0000000000000000;
//jk    assign tied_to_vcc_i                = 1'b1;
//jk    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;


//------------------------- GTX Instances  -------------------------------



    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y11)

    GTX_RX_BUF_BYPASS_GTX #
    (
        // Simulation attributes
        .GTX_SIM_GTXRESET_SPEEDUP   (WRAPPER_SIM_GTXRESET_SPEEDUP),
        
        // Share RX PLL parameter
        .GTX_TX_CLK_SOURCE           ("TXPLL"),
        // Save power parameter
//        .GTX_POWER_SAVE (10'b0000010000)  // MFS: For ISE 12.4: do not bypass the RX Delay Aligner. JGhere, uncomment for dlyalign tests
        .GTX_POWER_SAVE (10'b0000110000)  // MFS: For ISE 14.5: bypass the RX Delay Aligner. JGhere, comment this for dlyalign tests
         // JK set POWER_SAVE bits [5:4]=2'b11 per http://www.xilinx.com/support/answers/39430.htm
  )
  gtx0_cmp_rx_buf_bypass_i
    (
        //--------------------- Receive Ports - 8b10b Decoder ----------------------
        .RXCHARISCOMMA_OUT              (GTX0_RXCHARISCOMMA_OUT),
        .RXCHARISK_OUT                  (GTX0_RXCHARISK_OUT),
        .RXDISPERR_OUT                  (GTX0_RXDISPERR_OUT),
        .RXNOTINTABLE_OUT               (GTX0_RXNOTINTABLE_OUT),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .RXBYTEISALIGNED_OUT            (GTX0_RXBYTEISALIGNED_OUT),
        .RXCOMMADET_OUT                 (GTX0_RXCOMMADET_OUT),
        .RXENMCOMMAALIGN_IN             (GTX0_RXENMCOMMAALIGN_IN),
        .RXENPCOMMAALIGN_IN             (GTX0_RXENPCOMMAALIGN_IN),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .RXDATA_OUT                     (GTX0_RXDATA_OUT),
        .RXRECCLK_OUT                   (GTX0_RXRECCLK_OUT),
        .RXUSRCLK2_IN                   (GTX0_RXUSRCLK2_IN),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .RXN_IN                         (GTX0_RXN_IN),
        .RXP_IN                         (GTX0_RXP_IN),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .RXDLYALIGNDISABLE_IN           (GTX0_RXDLYALIGNDISABLE_IN),
        .RXDLYALIGNMONENB_IN            (GTX0_RXDLYALIGNMONENB_IN),
        .RXDLYALIGNMONITOR_OUT          (GTX0_RXDLYALIGNMONITOR_OUT),
        .RXDLYALIGNOVERRIDE_IN          (GTX0_RXDLYALIGNOVERRIDE_IN),
        .RXDLYALIGNRESET_IN             (GTX0_RXDLYALIGNRESET_IN),
        .RXENPMAPHASEALIGN_IN           (GTX0_RXENPMAPHASEALIGN_IN),
        .RXPMASETPHASE_IN               (GTX0_RXPMASETPHASE_IN),
        //------------- Receive Ports - RX Loss-of-sync State Machine --------------
        .RXLOSSOFSYNC_OUT               (GTX0_RXLOSSOFSYNC_OUT),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTXRXRESET_IN                  (GTX0_GTXRXRESET_IN),
        .MGTREFCLKRX_IN                 ({tied_to_ground_i , GTX0_MGTREFCLKRX_IN}),
        .PLLRXRESET_IN                  (GTX0_PLLRXRESET_IN),
        .RXPOL_IN                       (RX_POLARITY_IN), // JGnew
        .RXPLLLKDET_OUT                 (GTX0_RXPLLLKDET_OUT),
        .RXRESETDONE_OUT                (GTX0_RXRESETDONE_OUT),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .TXN_OUT                        (GTX0_TXN_OUT),
        .TXP_OUT                        (GTX0_TXP_OUT),
    .sump              (sump)
    );



endmodule

    
