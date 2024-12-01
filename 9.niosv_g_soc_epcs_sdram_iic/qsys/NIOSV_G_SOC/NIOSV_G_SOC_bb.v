
module NIOSV_G_SOC (
	altpll_clks_areset_conduit_export,
	altpll_clks_c1_phaseshift_clk,
	altpll_clks_locked_conduit_export,
	clock_bridge_in_clk_clk,
	gpi0_btn_externals_export,
	gpi1_dipsw_externals_export,
	gpo2_ledg_externals_export,
	reset_bridge_in_reset_n_reset_n,
	sdram_controller_externals_addr,
	sdram_controller_externals_ba,
	sdram_controller_externals_cas_n,
	sdram_controller_externals_cke,
	sdram_controller_externals_cs_n,
	sdram_controller_externals_dq,
	sdram_controller_externals_dqm,
	sdram_controller_externals_ras_n,
	sdram_controller_externals_we_n,
	serial_uart_com_externals_rxd,
	serial_uart_com_externals_txd);	

	input		altpll_clks_areset_conduit_export;
	output		altpll_clks_c1_phaseshift_clk;
	output		altpll_clks_locked_conduit_export;
	input		clock_bridge_in_clk_clk;
	input		gpi0_btn_externals_export;
	input	[3:0]	gpi1_dipsw_externals_export;
	output	[7:0]	gpo2_ledg_externals_export;
	input		reset_bridge_in_reset_n_reset_n;
	output	[12:0]	sdram_controller_externals_addr;
	output	[1:0]	sdram_controller_externals_ba;
	output		sdram_controller_externals_cas_n;
	output		sdram_controller_externals_cke;
	output		sdram_controller_externals_cs_n;
	inout	[15:0]	sdram_controller_externals_dq;
	output	[1:0]	sdram_controller_externals_dqm;
	output		sdram_controller_externals_ras_n;
	output		sdram_controller_externals_we_n;
	input		serial_uart_com_externals_rxd;
	output		serial_uart_com_externals_txd;
endmodule
