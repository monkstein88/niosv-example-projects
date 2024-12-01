	component NIOSV_G_SOC is
		port (
			altpll_clks_areset_conduit_export : in    std_logic                     := 'X';             -- export
			altpll_clks_c1_phaseshift_clk     : out   std_logic;                                        -- clk
			altpll_clks_locked_conduit_export : out   std_logic;                                        -- export
			clock_bridge_in_clk_clk           : in    std_logic                     := 'X';             -- clk
			gpi0_btn_externals_export         : in    std_logic                     := 'X';             -- export
			gpi1_dipsw_externals_export       : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			gpo2_ledg_externals_export        : out   std_logic_vector(7 downto 0);                     -- export
			reset_bridge_in_reset_n_reset_n   : in    std_logic                     := 'X';             -- reset_n
			sdram_controller_externals_addr   : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_controller_externals_ba     : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_controller_externals_cas_n  : out   std_logic;                                        -- cas_n
			sdram_controller_externals_cke    : out   std_logic;                                        -- cke
			sdram_controller_externals_cs_n   : out   std_logic;                                        -- cs_n
			sdram_controller_externals_dq     : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_controller_externals_dqm    : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_controller_externals_ras_n  : out   std_logic;                                        -- ras_n
			sdram_controller_externals_we_n   : out   std_logic;                                        -- we_n
			serial_uart_com_externals_rxd     : in    std_logic                     := 'X';             -- rxd
			serial_uart_com_externals_txd     : out   std_logic                                         -- txd
		);
	end component NIOSV_G_SOC;

	u0 : component NIOSV_G_SOC
		port map (
			altpll_clks_areset_conduit_export => CONNECTED_TO_altpll_clks_areset_conduit_export, -- altpll_clks_areset_conduit.export
			altpll_clks_c1_phaseshift_clk     => CONNECTED_TO_altpll_clks_c1_phaseshift_clk,     --  altpll_clks_c1_phaseshift.clk
			altpll_clks_locked_conduit_export => CONNECTED_TO_altpll_clks_locked_conduit_export, -- altpll_clks_locked_conduit.export
			clock_bridge_in_clk_clk           => CONNECTED_TO_clock_bridge_in_clk_clk,           --        clock_bridge_in_clk.clk
			gpi0_btn_externals_export         => CONNECTED_TO_gpi0_btn_externals_export,         --         gpi0_btn_externals.export
			gpi1_dipsw_externals_export       => CONNECTED_TO_gpi1_dipsw_externals_export,       --       gpi1_dipsw_externals.export
			gpo2_ledg_externals_export        => CONNECTED_TO_gpo2_ledg_externals_export,        --        gpo2_ledg_externals.export
			reset_bridge_in_reset_n_reset_n   => CONNECTED_TO_reset_bridge_in_reset_n_reset_n,   --    reset_bridge_in_reset_n.reset_n
			sdram_controller_externals_addr   => CONNECTED_TO_sdram_controller_externals_addr,   -- sdram_controller_externals.addr
			sdram_controller_externals_ba     => CONNECTED_TO_sdram_controller_externals_ba,     --                           .ba
			sdram_controller_externals_cas_n  => CONNECTED_TO_sdram_controller_externals_cas_n,  --                           .cas_n
			sdram_controller_externals_cke    => CONNECTED_TO_sdram_controller_externals_cke,    --                           .cke
			sdram_controller_externals_cs_n   => CONNECTED_TO_sdram_controller_externals_cs_n,   --                           .cs_n
			sdram_controller_externals_dq     => CONNECTED_TO_sdram_controller_externals_dq,     --                           .dq
			sdram_controller_externals_dqm    => CONNECTED_TO_sdram_controller_externals_dqm,    --                           .dqm
			sdram_controller_externals_ras_n  => CONNECTED_TO_sdram_controller_externals_ras_n,  --                           .ras_n
			sdram_controller_externals_we_n   => CONNECTED_TO_sdram_controller_externals_we_n,   --                           .we_n
			serial_uart_com_externals_rxd     => CONNECTED_TO_serial_uart_com_externals_rxd,     --  serial_uart_com_externals.rxd
			serial_uart_com_externals_txd     => CONNECTED_TO_serial_uart_com_externals_txd      --                           .txd
		);

