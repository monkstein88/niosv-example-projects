	component NIOSV_SOC is
		port (
			altpll_clks_areset_in_export            : in    std_logic                     := 'X';             -- export
			altpll_clks_locked_out_export           : out   std_logic;                                        -- export
			altpll_clks_sdram_clk_clk               : out   std_logic;                                        -- clk
			ext_sdram_progmem_wire_addr             : out   std_logic_vector(12 downto 0);                    -- addr
			ext_sdram_progmem_wire_ba               : out   std_logic_vector(1 downto 0);                     -- ba
			ext_sdram_progmem_wire_cas_n            : out   std_logic;                                        -- cas_n
			ext_sdram_progmem_wire_cke              : out   std_logic;                                        -- cke
			ext_sdram_progmem_wire_cs_n             : out   std_logic;                                        -- cs_n
			ext_sdram_progmem_wire_dq               : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			ext_sdram_progmem_wire_dqm              : out   std_logic_vector(1 downto 0);                     -- dqm
			ext_sdram_progmem_wire_ras_n            : out   std_logic;                                        -- ras_n
			ext_sdram_progmem_wire_we_n             : out   std_logic;                                        -- we_n
			gpi0_butn_external_connection_export    : in    std_logic                     := 'X';             -- export
			gpi1_dipsw_external_connection_export   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			gpo2_ledg_external_connection_export    : out   std_logic_vector(7 downto 0);                     -- export
			in_clock_bridge_clk_clk                 : in    std_logic                     := 'X';             -- clk
			in_reset_bridge_reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			uart_serial_com_external_connection_rxd : in    std_logic                     := 'X';             -- rxd
			uart_serial_com_external_connection_txd : out   std_logic                                         -- txd
		);
	end component NIOSV_SOC;

	u0 : component NIOSV_SOC
		port map (
			altpll_clks_areset_in_export            => CONNECTED_TO_altpll_clks_areset_in_export,            --               altpll_clks_areset_in.export
			altpll_clks_locked_out_export           => CONNECTED_TO_altpll_clks_locked_out_export,           --              altpll_clks_locked_out.export
			altpll_clks_sdram_clk_clk               => CONNECTED_TO_altpll_clks_sdram_clk_clk,               --               altpll_clks_sdram_clk.clk
			ext_sdram_progmem_wire_addr             => CONNECTED_TO_ext_sdram_progmem_wire_addr,             --              ext_sdram_progmem_wire.addr
			ext_sdram_progmem_wire_ba               => CONNECTED_TO_ext_sdram_progmem_wire_ba,               --                                    .ba
			ext_sdram_progmem_wire_cas_n            => CONNECTED_TO_ext_sdram_progmem_wire_cas_n,            --                                    .cas_n
			ext_sdram_progmem_wire_cke              => CONNECTED_TO_ext_sdram_progmem_wire_cke,              --                                    .cke
			ext_sdram_progmem_wire_cs_n             => CONNECTED_TO_ext_sdram_progmem_wire_cs_n,             --                                    .cs_n
			ext_sdram_progmem_wire_dq               => CONNECTED_TO_ext_sdram_progmem_wire_dq,               --                                    .dq
			ext_sdram_progmem_wire_dqm              => CONNECTED_TO_ext_sdram_progmem_wire_dqm,              --                                    .dqm
			ext_sdram_progmem_wire_ras_n            => CONNECTED_TO_ext_sdram_progmem_wire_ras_n,            --                                    .ras_n
			ext_sdram_progmem_wire_we_n             => CONNECTED_TO_ext_sdram_progmem_wire_we_n,             --                                    .we_n
			gpi0_butn_external_connection_export    => CONNECTED_TO_gpi0_butn_external_connection_export,    --       gpi0_butn_external_connection.export
			gpi1_dipsw_external_connection_export   => CONNECTED_TO_gpi1_dipsw_external_connection_export,   --      gpi1_dipsw_external_connection.export
			gpo2_ledg_external_connection_export    => CONNECTED_TO_gpo2_ledg_external_connection_export,    --       gpo2_ledg_external_connection.export
			in_clock_bridge_clk_clk                 => CONNECTED_TO_in_clock_bridge_clk_clk,                 --                 in_clock_bridge_clk.clk
			in_reset_bridge_reset_reset_n           => CONNECTED_TO_in_reset_bridge_reset_reset_n,           --               in_reset_bridge_reset.reset_n
			uart_serial_com_external_connection_rxd => CONNECTED_TO_uart_serial_com_external_connection_rxd, -- uart_serial_com_external_connection.rxd
			uart_serial_com_external_connection_txd => CONNECTED_TO_uart_serial_com_external_connection_txd  --                                    .txd
		);

