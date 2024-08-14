	NIOSV_SOC u0 (
		.gpi0_butn_external_connection_export    (<connected-to-gpi0_butn_external_connection_export>),    //       gpi0_butn_external_connection.export
		.gpi1_dipsw_external_connection_export   (<connected-to-gpi1_dipsw_external_connection_export>),   //      gpi1_dipsw_external_connection.export
		.gpo2_ledg_external_connection_export    (<connected-to-gpo2_ledg_external_connection_export>),    //       gpo2_ledg_external_connection.export
		.in_clock_bridge_in_clk_clk              (<connected-to-in_clock_bridge_in_clk_clk>),              //              in_clock_bridge_in_clk.clk
		.in_reset_bridge_in_reset_reset_n        (<connected-to-in_reset_bridge_in_reset_reset_n>),        //            in_reset_bridge_in_reset.reset_n
		.uart_serial_com_external_connection_rxd (<connected-to-uart_serial_com_external_connection_rxd>), // uart_serial_com_external_connection.rxd
		.uart_serial_com_external_connection_txd (<connected-to-uart_serial_com_external_connection_txd>)  //                                    .txd
	);

