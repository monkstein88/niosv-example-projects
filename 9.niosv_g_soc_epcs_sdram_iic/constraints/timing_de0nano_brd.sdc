# Using Terasic's DE0 NANO (Intel EP4CE22F17C6F FPGA) Evaluation Board Kit 
# setting
set_time_format -unit ns -decimal_places 3

# clocks - this is the main external clock of DE0-NANO of the FPGA - at 50 [MHz]
create_clock -name EXT_CLK_50M -period 20.000 [get_ports {EXT_CLK_50M}]

# define all PLL clocks 
derive_pll_clocks 

# compute the jitter behavior of the PLLs 
derive_clock_uncertainty 