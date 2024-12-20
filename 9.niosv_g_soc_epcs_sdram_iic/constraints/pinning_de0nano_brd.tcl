# Using Terasic's DE0 NANO (Intel EP4CE22F17C6F FPGA) Evaluation Board Kit 
# Set (allocate) the pins to the appropriate ports of the entity/module 

# The main clock source for the FPGA - external
set_location_assignment PIN_R8 -to EXT_CLK_50M ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to EXT_CLK_50M ; 


# RAM Chip - 32MB SDRAM (Synchronous Dynamic Random Access Memory) device with 16-bit data lines
set_location_assignment PIN_M7 -to SDRAM_BA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_BA[0]
set_location_assignment PIN_M6 -to SDRAM_BA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_BA[1]
set_location_assignment PIN_R6 -to SDRAM_DQM[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQM[0]
set_location_assignment PIN_T5 -to SDRAM_DQM[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQM[1]
set_location_assignment PIN_L2 -to SDRAM_RAS_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_RAS_n
set_location_assignment PIN_L1 -to SDRAM_CAS_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CAS_n
set_location_assignment PIN_L7 -to SDRAM_CKE
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CKE
set_location_assignment PIN_R4 -to SDRAM_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CLK
set_location_assignment PIN_C2 -to SDRAM_WE_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_WE_n
set_location_assignment PIN_P6 -to SDRAM_CS_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CS_n
set_location_assignment PIN_G2 -to SDRAM_DQ[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[0]
set_location_assignment PIN_G1 -to SDRAM_DQ[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[1]
set_location_assignment PIN_L8 -to SDRAM_DQ[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[2]
set_location_assignment PIN_K5 -to SDRAM_DQ[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[3]
set_location_assignment PIN_K2 -to SDRAM_DQ[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[4]
set_location_assignment PIN_J2 -to SDRAM_DQ[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[5]
set_location_assignment PIN_J1 -to SDRAM_DQ[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[6]
set_location_assignment PIN_R7 -to SDRAM_DQ[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[7]
set_location_assignment PIN_T4 -to SDRAM_DQ[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[8]
set_location_assignment PIN_T2 -to SDRAM_DQ[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[9]
set_location_assignment PIN_T3 -to SDRAM_DQ[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[10]
set_location_assignment PIN_R3 -to SDRAM_DQ[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[11]
set_location_assignment PIN_R5 -to SDRAM_DQ[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[12]
set_location_assignment PIN_P3 -to SDRAM_DQ[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[13]
set_location_assignment PIN_N3 -to SDRAM_DQ[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[14]
set_location_assignment PIN_K1 -to SDRAM_DQ[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[15]
set_location_assignment PIN_P2 -to SDRAM_ADDR[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[0]
set_location_assignment PIN_N5 -to SDRAM_ADDR[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[1]
set_location_assignment PIN_N6 -to SDRAM_ADDR[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[2]
set_location_assignment PIN_M8 -to SDRAM_ADDR[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[3]
set_location_assignment PIN_P8 -to SDRAM_ADDR[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[4]
set_location_assignment PIN_T7 -to SDRAM_ADDR[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[5]
set_location_assignment PIN_N8 -to SDRAM_ADDR[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[6]
set_location_assignment PIN_T6 -to SDRAM_ADDR[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[7]
set_location_assignment PIN_R1 -to SDRAM_ADDR[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[8]
set_location_assignment PIN_P1 -to SDRAM_ADDR[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[9]
set_location_assignment PIN_N2 -to SDRAM_ADDR[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[10]
set_location_assignment PIN_N1 -to SDRAM_ADDR[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[11]
set_location_assignment PIN_L4 -to SDRAM_ADDR[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_ADDR[12]

# Push buttons - active low (GND) - inputs 
set_location_assignment PIN_J15 -to BTN_RESET_n ; # KEY0 , will be used to cause a general reset 
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BTN_RESET_n ;
set_location_assignment PIN_E1 -to BTN_USER_n ; # KEY1 , will be used for user interaction (of some sort)
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BTN_USER_n ;

# Toggle switches - SW[x] - inputs 
set_location_assignment PIN_M1 -to DIPSW[0] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DIPSW[0] ;
set_location_assignment PIN_T8 -to DIPSW[1] ; 
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DIPSW[1] ;
set_location_assignment PIN_B9 -to DIPSW[2] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DIPSW[2] ;
set_location_assignment PIN_M15 -to DIPSW[3] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DIPSW[3] ;

# LEDs Green - LEDG[x] - outputs 
set_location_assignment PIN_A15 -to LEDG[0] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[0] ;
set_location_assignment PIN_A13 -to LEDG[1] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[1] ;
set_location_assignment PIN_B13 -to LEDG[2] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[2] ;
set_location_assignment PIN_A11 -to LEDG[3] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[3] ;
set_location_assignment PIN_D1 -to LEDG[4] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[4] ;
set_location_assignment PIN_F3 -to LEDG[5] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[5] ;
set_location_assignment PIN_B1 -to LEDG[6] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[6] ;
set_location_assignment PIN_L3 -to LEDG[7] ;
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[7] ;

# UART communication - RX and TX (8N1 - 115200 baud/s) 
set_location_assignment PIN_C9 -to UART_RXD ; # GPIO-0 connector (header) - GPIO_024 (pin 31)
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to UART_RXD ;
set_location_assignment PIN_D9 -to UART_TXD ; # GPIO-0 connector (header) - GPIO_025 (pin 32)
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to UART_TXD ;

# Set the rest of the unused pins to inputs (in tri-state) 
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"