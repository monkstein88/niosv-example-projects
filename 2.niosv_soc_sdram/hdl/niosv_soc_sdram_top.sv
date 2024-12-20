// Board: Terasic DE0-NANO (Cyclone IV E)
// File     : niosv_soc_example_top.sv
//-----------------------------------------------------------------------------
// Language : SystemVerilog
//-----------------------------------------------------------------------------
// Description:
//   Top level of project - NO/SMALL AMOUNT LOGIC ALLOWED AT THIS LEVEL
//-----------------------------------------------------------------------------

// Top Level - Parameters & External Pins
module niosv_soc_sdram_top 
#(
  parameter EXT_CLOCK_FREQ_Hz = 50000000, 
  parameter EXT_CLOCK_PERIOD_ns = 20.000,
  parameter INT_PLL_CLOCK_FREQ_Hz = 100000000, 
  parameter INT_PLL_CLOCK_PERIOD_ns = 10.000 
)(
  // Clocks:
  input         EXT_CLK_50MHz,      // Main external clock - 50 [MHz] 
  // SDRAM (external chip 32MB (16Mbit x 16) : 
  output [12:0]	SDRAM_ADDR,
  output  [1:0]	SDRAM_BA,
  output       	SDRAM_CAS_n,
  output       	SDRAM_CKE,
  output       	SDRAM_CLK, 
  output       	SDRAM_CS_n,
  inout  [15:0]	SDRAM_DQ,
  output  [1:0]	SDRAM_DQM,
  output       	SDRAM_RAS_n,
  output       	SDRAM_WE_n,
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
  always_ff@(posedge EXT_CLK_50MHz or negedge BTN_RESET_n)
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

// NIOS-V overall SoC - Qsys
NIOSV_SOC NIOSV_SOC_inst (
	.in_clock_bridge_clk_clk                 (EXT_CLK_50MHz),   //                 in_clock_bridge_clk.clk
	.in_reset_bridge_reset_reset_n           (BTN_RESET_n),     //               in_reset_bridge_reset.reset_n
	.altpll_clks_areset_in_export            (pll_areset),      //               altpll_clks_areset_in.export
	.altpll_clks_locked_out_export           (pll_locked),      //              altpll_clks_locked_out.export
	.altpll_clks_sdram_clk_clk               (SDRAM_CLK),       //               altpll_clks_sdram_clk.clk
	.ext_sdram_progmem_wire_addr             (SDRAM_ADDR),      //              ext_sdram_progmem_wire.addr
	.ext_sdram_progmem_wire_ba               (SDRAM_BA),        //                                    .ba
	.ext_sdram_progmem_wire_cas_n            (SDRAM_CAS_n),     //                                    .cas_n
	.ext_sdram_progmem_wire_cke              (SDRAM_CKE),       //                                    .cke
	.ext_sdram_progmem_wire_cs_n             (SDRAM_CS_n),      //                                    .cs_n
	.ext_sdram_progmem_wire_dq               (SDRAM_DQ),        //                                    .dq
	.ext_sdram_progmem_wire_dqm              (SDRAM_DQM),       //                                    .dqm
	.ext_sdram_progmem_wire_ras_n            (SDRAM_RAS_n),     //                                    .ras_n
	.ext_sdram_progmem_wire_we_n             (SDRAM_WE_n),      //                                    .we_n
	.gpi0_butn_external_connection_export    (BTN_USER_n),      //       gpi0_butn_external_connection.export
	.gpi1_dipsw_external_connection_export   (DIPSW),           //      gpi1_dipsw_external_connection.export
	.gpo2_ledg_external_connection_export    (LEDG),            //       gpo2_ledg_external_connection.export
	.uart_serial_com_external_connection_rxd (UART_RXD),        // uart_serial_com_external_connection.rxd
	.uart_serial_com_external_connection_txd (UART_TXD)         //                                    .txd
);

endmodule