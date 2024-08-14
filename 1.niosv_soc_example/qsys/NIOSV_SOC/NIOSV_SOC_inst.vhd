	component NIOSV_SOC is
		port (
			gpi0_butn_external_connection_export    : in  std_logic                    := 'X';             -- export
			gpi1_dipsw_external_connection_export   : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			gpo2_ledg_external_connection_export    : out std_logic_vector(7 downto 0);                    -- export
			in_clock_bridge_in_clk_clk              : in  std_logic                    := 'X';             -- clk
			in_reset_bridge_in_reset_reset_n        : in  std_logic                    := 'X';             -- reset_n
			uart_serial_com_external_connection_rxd : in  std_logic                    := 'X';             -- rxd
			uart_serial_com_external_connection_txd : out std_logic                                        -- txd
		);
	end component NIOSV_SOC;

	u0 : component NIOSV_SOC
		port map (
			gpi0_butn_external_connection_export    => CONNECTED_TO_gpi0_butn_external_connection_export,    --       gpi0_butn_external_connection.export
			gpi1_dipsw_external_connection_export   => CONNECTED_TO_gpi1_dipsw_external_connection_export,   --      gpi1_dipsw_external_connection.export
			gpo2_ledg_external_connection_export    => CONNECTED_TO_gpo2_ledg_external_connection_export,    --       gpo2_ledg_external_connection.export
			in_clock_bridge_in_clk_clk              => CONNECTED_TO_in_clock_bridge_in_clk_clk,              --              in_clock_bridge_in_clk.clk
			in_reset_bridge_in_reset_reset_n        => CONNECTED_TO_in_reset_bridge_in_reset_reset_n,        --            in_reset_bridge_in_reset.reset_n
			uart_serial_com_external_connection_rxd => CONNECTED_TO_uart_serial_com_external_connection_rxd, -- uart_serial_com_external_connection.rxd
			uart_serial_com_external_connection_txd => CONNECTED_TO_uart_serial_com_external_connection_txd  --                                    .txd
		);

