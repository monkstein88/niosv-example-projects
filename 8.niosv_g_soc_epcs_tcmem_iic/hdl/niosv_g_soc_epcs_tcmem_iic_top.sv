// Board: Terasic DE0-NANO (Cyclone IV E)
// File     : niosv_g_soc_epcs_tcmem_iic_top.sv
//-----------------------------------------------------------------------------
// Language : SystemVerilog
//-----------------------------------------------------------------------------
// Description:
//   Top level of project - NO/SMALL AMOUNT LOGIC ALLOWED AT THIS LEVEL
//-----------------------------------------------------------------------------

// Top Level - Parameters & External Pins
module niosv_g_soc_epcs_tcmem_iic_top 
#(
  parameter EXT_CLOCK_FREQ = 50000000, // in [Hz]
  parameter EXT_CLOCK_PERIOD = 20.000, // in [ns]
  parameter INT_PLL_CLOCK_FREQ = 100000000, // in [Hz]
  parameter INT_PLL_CLOCK_PERIOD = 10.000   // in [ns]
)(
  // Clocks:
  input         EXT_CLK_50M,      // Main external clock of the DE0-NANO (FPGA) board - 50 [MHz] 
  // Buttons: 
  input         BTN_RESET_n,        // push-button for main Fabric/SoC (general) reset - active-low
  input         BTN_USER_n,         // push button for user level interaction - active-low
  // DIP Switches:
  input    [3:0] DIPSW, 
  // LEDs (green) :
  output   [7:0] LEDG,
  // UART Communication: 
  input UART_RXD,
  output UART_TXD
);

  wire  pll_areset  ;  // This is an (output) signal we must set/clear and provide it to the NIOSV_SOC system  
  wire  pll_locked  ;  // This is an (input) signal we must read from the NIOSV_SOC system, to infer if the pll clock is locked.
  reg   [7:0] pwrup_timer ; // For the POR reset - a timer counter (unsigned) that is going to allow some time to pass. 
  // POR (reset) generator with hold-up 
  always_ff@(posedge EXT_CLK_50M or negedge BTN_RESET_n)
    begin
	if(~BTN_RESET_n) // Asyncrhonous reset 
	  begin
	  pll_areset <= 1'b1;  // assert (active-high) the pll reset
	  pwrup_timer <= 7'h0; // zero the timer
	  end 
	else // Syncrhonous process
      begin 	  
	  if(pwrup_timer != 8'd127) // Check if enought the power up time had elapsed
        begin
	    pll_areset  <= 1'b1; //  keep asserted (active-high) the internal reset
	    pwrup_timer++ ; // increment the timer
	    end 
      else // If enough time had passed ...
	    begin
		pll_areset <= 1'b0 ; // release (deassert) the pll from reset
		end
	  end
    end 		

//-----------------------------------------------------------------------------
// MODULE INSTANTIATIONS
//-----------------------------------------------------------------------------

// NIOS-V 'G' type overall SoC - Qsys
NIOSV_G_SOC NIOSV_G_SOC_inst (
	.reset_bridge_in_reset_n_reset_n   (BTN_RESET_n),  //    reset_bridge_in_reset_n.reset_n
	.clock_bridge_in_clk_clk           (EXT_CLK_50M),  //        clock_bridge_in_clk.clk
	.altpll_clks_areset_conduit_export (pll_areset),   // altpll_clks_areset_conduit.export
	.altpll_clks_locked_conduit_export (pll_locked),   // altpll_clks_locked_conduit.export
	.serial_uart_com_externals_rxd     (UART_RXD),     //  serial_uart_com_externals.rxd
	.serial_uart_com_externals_txd     (UART_TXD),     //                           .txd
	.gpi0_btn_externals_export         (BTN_USER_n),   //         gpi0_btn_externals.export
	.gpi1_dipsw_externals_export       (DIPSW),        //       gpi1_dipsw_externals.export
	.gpo2_ledg_externals_export        (LEDG)          //        gpo2_ledg_externals.export
);

endmodule