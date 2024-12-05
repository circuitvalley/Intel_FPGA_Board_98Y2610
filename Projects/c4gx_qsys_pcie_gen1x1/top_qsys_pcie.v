//Legal Notice: (C)2010 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module top_qsys_pcie (
 // inputs:
  clkin_sys,
  pcie_rstn,
  
  local_rstn_ext,
  reconfig_clk,
  refclk,
  rx_in0,

 // outputs:
  L0_led,
//  alive_led,
//  comp_led,
  tx_out0,
  
  //I/O
  user_pb,
  user_led
  
  );

  output           L0_led;
//  output           alive_led;
//  output           comp_led;
//  output  [  3: 0] lane_active_led;
  output           tx_out0;
  input            local_rstn_ext;
  input            pcie_rstn;
  input            reconfig_clk;
  input            refclk;
  input            rx_in0;
  input				clkin_sys; // 50MHz system clk
  input	[1:0]	user_pb;
  output	[2:0]	user_led;
  

  reg              L0_led;
//  reg     [ 24: 0] alive_cnt;
//  reg              alive_led;
//  reg              comp_led;
//  reg     [  3: 0] lane_active_led;
  wire    [ 39: 0] test_in;
  wire    [  63: 0] test_out_icm;
  wire             tx_out0;
  assign test_in[39 : 32] = 0;
  assign test_in[31 : 9] = 0;
  assign test_in[8 : 5] = 4'b0101;
  assign test_in[4 : 0] = 5'b01000;
  
	wire locked;
	reconfig_pll reconfig_pll(
		.locked(locked),
		.inclk0(clkin_sys),
		.c0(clk50),
		.c1(clk125)
	);
  

  //LED logic
  always @(posedge clk125 or negedge pcie_rstn)
    begin
      if (pcie_rstn == 0)
        begin
//          alive_cnt <= 0;
//          alive_led <= 0;
//          comp_led <= 0;
          L0_led <= 0;
//          lane_active_led <= 0;
        end
      else 
        begin
//          alive_cnt <= alive_cnt +1;
//          alive_led <= alive_cnt[24];
//          comp_led <= ~(test_out_icm[4 : 0] == 5'b00011);
          L0_led <= ~(test_out_icm[4 : 0] == 5'b01111);
//          lane_active_led[3 : 0] <= ~(test_out_icm[28 : 25]);
        end
    end

	 
	 
	altgx_reconfig altgx_reconfig (
			//.offset_cancellation_reset (!locked),
			.reconfig_clk (clk50),
			.reconfig_fromgxb (reconfig_fromgxb),
			.busy (busy),
			.reconfig_togxb (reconfig_togxb)
		);

    q_sys u0 (
        .clk_clk                                           (clk50),
        .reset_reset_n                                     (pcie_rstn),

        .pcie_hard_ip_0_refclk_export                      (refclk),
        .pcie_hard_ip_0_test_in_test_in                    (test_in),
        .pcie_hard_ip_0_pcie_rstn_export                   (pcie_rstn),
        .pcie_hard_ip_0_reconfig_busy_busy_altgxb_reconfig (busy),
		  
        .pcie_hard_ip_0_test_out_test_out                  (test_out_icm),
        .pcie_hard_ip_0_rx_in_rx_datain_0                  (rx_in0),
        .pcie_hard_ip_0_tx_out_tx_dataout_0                (tx_out0),
        .pcie_hard_ip_0_reconfig_togxb_data                (reconfig_togxb),
        .pcie_hard_ip_0_reconfig_fromgxb_0_data            (reconfig_fromgxb),
        .pcie_hard_ip_0_fixedclk_clk                       (clk125),
        .pcie_hard_ip_0_pipe_ext_pll_powerdown             (~pcie_rstn),
        .pcie_hard_ip_0_pipe_ext_gxb_powerdown             (~pcie_rstn),
		  
        .pio_led_out_export                                (user_led),
        .pio_pb_in_export                                  (user_pb),
    );


endmodule

