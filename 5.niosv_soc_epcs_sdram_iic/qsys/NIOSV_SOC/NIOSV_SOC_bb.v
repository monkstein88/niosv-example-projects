
module NIOSV_SOC (
	altpll_clks_areset_in_export,
	altpll_clks_locked_out_export,
	altpll_clks_sdram_clk_clk,
	ext_sdram_progmem_wire_addr,
	ext_sdram_progmem_wire_ba,
	ext_sdram_progmem_wire_cas_n,
	ext_sdram_progmem_wire_cke,
	ext_sdram_progmem_wire_cs_n,
	ext_sdram_progmem_wire_dq,
	ext_sdram_progmem_wire_dqm,
	ext_sdram_progmem_wire_ras_n,
	ext_sdram_progmem_wire_we_n,
	gpi0_butn_external_connection_export,
	gpi1_dipsw_external_connection_export,
	gpo2_ledg_external_connection_export,
	in_clock_bridge_clk_clk,
	in_reset_bridge_reset_reset_n,
	uart_serial_com_external_connection_rxd,
	uart_serial_com_external_connection_txd);	

	input		altpll_clks_areset_in_export;
	output		altpll_clks_locked_out_export;
	output		altpll_clks_sdram_clk_clk;
	output	[12:0]	ext_sdram_progmem_wire_addr;
	output	[1:0]	ext_sdram_progmem_wire_ba;
	output		ext_sdram_progmem_wire_cas_n;
	output		ext_sdram_progmem_wire_cke;
	output		ext_sdram_progmem_wire_cs_n;
	inout	[15:0]	ext_sdram_progmem_wire_dq;
	output	[1:0]	ext_sdram_progmem_wire_dqm;
	output		ext_sdram_progmem_wire_ras_n;
	output		ext_sdram_progmem_wire_we_n;
	input		gpi0_butn_external_connection_export;
	input	[3:0]	gpi1_dipsw_external_connection_export;
	output	[7:0]	gpo2_ledg_external_connection_export;
	input		in_clock_bridge_clk_clk;
	input		in_reset_bridge_reset_reset_n;
	input		uart_serial_com_external_connection_rxd;
	output		uart_serial_com_external_connection_txd;
endmodule
