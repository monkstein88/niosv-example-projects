
module NIOSV_SOC (
	gpi0_butn_external_connection_export,
	gpi1_dipsw_external_connection_export,
	gpo2_ledg_external_connection_export,
	in_clock_bridge_in_clk_clk,
	in_reset_bridge_in_reset_reset_n,
	uart_serial_com_external_connection_rxd,
	uart_serial_com_external_connection_txd);	

	input		gpi0_butn_external_connection_export;
	input	[3:0]	gpi1_dipsw_external_connection_export;
	output	[7:0]	gpo2_ledg_external_connection_export;
	input		in_clock_bridge_in_clk_clk;
	input		in_reset_bridge_in_reset_reset_n;
	input		uart_serial_com_external_connection_rxd;
	output		uart_serial_com_external_connection_txd;
endmodule
