	NIOSV_SOC u0 (
		.altpll_clks_areset_in_export            (<connected-to-altpll_clks_areset_in_export>),            //               altpll_clks_areset_in.export
		.altpll_clks_locked_out_export           (<connected-to-altpll_clks_locked_out_export>),           //              altpll_clks_locked_out.export
		.altpll_clks_sdram_clk_clk               (<connected-to-altpll_clks_sdram_clk_clk>),               //               altpll_clks_sdram_clk.clk
		.ext_sdram_progmem_wire_addr             (<connected-to-ext_sdram_progmem_wire_addr>),             //              ext_sdram_progmem_wire.addr
		.ext_sdram_progmem_wire_ba               (<connected-to-ext_sdram_progmem_wire_ba>),               //                                    .ba
		.ext_sdram_progmem_wire_cas_n            (<connected-to-ext_sdram_progmem_wire_cas_n>),            //                                    .cas_n
		.ext_sdram_progmem_wire_cke              (<connected-to-ext_sdram_progmem_wire_cke>),              //                                    .cke
		.ext_sdram_progmem_wire_cs_n             (<connected-to-ext_sdram_progmem_wire_cs_n>),             //                                    .cs_n
		.ext_sdram_progmem_wire_dq               (<connected-to-ext_sdram_progmem_wire_dq>),               //                                    .dq
		.ext_sdram_progmem_wire_dqm              (<connected-to-ext_sdram_progmem_wire_dqm>),              //                                    .dqm
		.ext_sdram_progmem_wire_ras_n            (<connected-to-ext_sdram_progmem_wire_ras_n>),            //                                    .ras_n
		.ext_sdram_progmem_wire_we_n             (<connected-to-ext_sdram_progmem_wire_we_n>),             //                                    .we_n
		.gpi0_butn_external_connection_export    (<connected-to-gpi0_butn_external_connection_export>),    //       gpi0_butn_external_connection.export
		.gpi1_dipsw_external_connection_export   (<connected-to-gpi1_dipsw_external_connection_export>),   //      gpi1_dipsw_external_connection.export
		.gpo2_ledg_external_connection_export    (<connected-to-gpo2_ledg_external_connection_export>),    //       gpo2_ledg_external_connection.export
		.in_clock_bridge_clk_clk                 (<connected-to-in_clock_bridge_clk_clk>),                 //                 in_clock_bridge_clk.clk
		.in_reset_bridge_reset_reset_n           (<connected-to-in_reset_bridge_reset_reset_n>),           //               in_reset_bridge_reset.reset_n
		.uart_serial_com_external_connection_rxd (<connected-to-uart_serial_com_external_connection_rxd>), // uart_serial_com_external_connection.rxd
		.uart_serial_com_external_connection_txd (<connected-to-uart_serial_com_external_connection_txd>)  //                                    .txd
	);

