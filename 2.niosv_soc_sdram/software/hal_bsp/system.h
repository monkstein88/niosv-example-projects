/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'NIOSV_M_CPU' in SOPC Builder design 'NIOSV_SOC'
 * SOPC Builder design path: ../../qsys/NIOSV_SOC.sopcinfo
 *
 * Generated: Wed Aug 14 23:29:06 EEST 2024
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * ALTPLL_CLKS configuration
 *
 */

#define ALTPLL_CLKS_BASE 0x2010080
#define ALTPLL_CLKS_IRQ -1
#define ALTPLL_CLKS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ALTPLL_CLKS_NAME "/dev/ALTPLL_CLKS"
#define ALTPLL_CLKS_SPAN 16
#define ALTPLL_CLKS_TYPE "altpll"
#define ALT_MODULE_CLASS_ALTPLL_CLKS altpll


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "intel_niosv_m"
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_DATA_ADDR_WIDTH 0x20
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HAS_CSR_SUPPORT 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x20
#define ALT_CPU_MTIME_OFFSET 0x02010000
#define ALT_CPU_NAME "NIOSV_M_CPU"
#define ALT_CPU_NIOSV_CORE_VARIANT 1
#define ALT_CPU_NUM_GPR 32
#define ALT_CPU_RESET_ADDR 0x00000000
#define ALT_CPU_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define ALT_CPU_TIMER_DEVICE_TYPE 2


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define ABBOTTSLAKE_CPU_FREQ 100000000u
#define ABBOTTSLAKE_DATA_ADDR_WIDTH 0x20
#define ABBOTTSLAKE_DCACHE_LINE_SIZE 0
#define ABBOTTSLAKE_DCACHE_LINE_SIZE_LOG2 0
#define ABBOTTSLAKE_DCACHE_SIZE 0
#define ABBOTTSLAKE_HAS_CSR_SUPPORT 1
#define ABBOTTSLAKE_HAS_DEBUG_STUB
#define ABBOTTSLAKE_ICACHE_LINE_SIZE 0
#define ABBOTTSLAKE_ICACHE_LINE_SIZE_LOG2 0
#define ABBOTTSLAKE_ICACHE_SIZE 0
#define ABBOTTSLAKE_INST_ADDR_WIDTH 0x20
#define ABBOTTSLAKE_MTIME_OFFSET 0x02010000
#define ABBOTTSLAKE_NIOSV_CORE_VARIANT 1
#define ABBOTTSLAKE_NUM_GPR 32
#define ABBOTTSLAKE_RESET_ADDR 0x00000000
#define ABBOTTSLAKE_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define ABBOTTSLAKE_TIMER_DEVICE_TYPE 2


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_UART
#define __ALTPLL
#define __INTEL_NIOSV_M


/*
 * EXT_SDRAM_PROGMEM configuration
 *
 */

#define ALT_MODULE_CLASS_EXT_SDRAM_PROGMEM altera_avalon_new_sdram_controller
#define EXT_SDRAM_PROGMEM_BASE 0x0
#define EXT_SDRAM_PROGMEM_CAS_LATENCY 3
#define EXT_SDRAM_PROGMEM_CONTENTS_INFO
#define EXT_SDRAM_PROGMEM_INIT_NOP_DELAY 0.0
#define EXT_SDRAM_PROGMEM_INIT_REFRESH_COMMANDS 2
#define EXT_SDRAM_PROGMEM_IRQ -1
#define EXT_SDRAM_PROGMEM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define EXT_SDRAM_PROGMEM_IS_INITIALIZED 1
#define EXT_SDRAM_PROGMEM_NAME "/dev/EXT_SDRAM_PROGMEM"
#define EXT_SDRAM_PROGMEM_POWERUP_DELAY 100.0
#define EXT_SDRAM_PROGMEM_REFRESH_PERIOD 15.625
#define EXT_SDRAM_PROGMEM_REGISTER_DATA_IN 1
#define EXT_SDRAM_PROGMEM_SDRAM_ADDR_WIDTH 0x18
#define EXT_SDRAM_PROGMEM_SDRAM_BANK_WIDTH 2
#define EXT_SDRAM_PROGMEM_SDRAM_COL_WIDTH 9
#define EXT_SDRAM_PROGMEM_SDRAM_DATA_WIDTH 16
#define EXT_SDRAM_PROGMEM_SDRAM_NUM_BANKS 4
#define EXT_SDRAM_PROGMEM_SDRAM_NUM_CHIPSELECTS 1
#define EXT_SDRAM_PROGMEM_SDRAM_ROW_WIDTH 13
#define EXT_SDRAM_PROGMEM_SHARED_DATA 0
#define EXT_SDRAM_PROGMEM_SIM_MODEL_BASE 1
#define EXT_SDRAM_PROGMEM_SPAN 33554432
#define EXT_SDRAM_PROGMEM_STARVATION_INDICATOR 0
#define EXT_SDRAM_PROGMEM_TRISTATE_BRIDGE_SLAVE ""
#define EXT_SDRAM_PROGMEM_TYPE "altera_avalon_new_sdram_controller"
#define EXT_SDRAM_PROGMEM_T_AC 5.5
#define EXT_SDRAM_PROGMEM_T_MRD 3
#define EXT_SDRAM_PROGMEM_T_RCD 20.0
#define EXT_SDRAM_PROGMEM_T_RFC 70.0
#define EXT_SDRAM_PROGMEM_T_RP 20.0
#define EXT_SDRAM_PROGMEM_T_WR 14.0


/*
 * GPI0_BUTN configuration
 *
 */

#define ALT_MODULE_CLASS_GPI0_BUTN altera_avalon_pio
#define GPI0_BUTN_BASE 0x20100a0
#define GPI0_BUTN_BIT_CLEARING_EDGE_REGISTER 1
#define GPI0_BUTN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define GPI0_BUTN_CAPTURE 1
#define GPI0_BUTN_DATA_WIDTH 1
#define GPI0_BUTN_DO_TEST_BENCH_WIRING 0
#define GPI0_BUTN_DRIVEN_SIM_VALUE 0
#define GPI0_BUTN_EDGE_TYPE "FALLING"
#define GPI0_BUTN_FREQ 100000000
#define GPI0_BUTN_HAS_IN 1
#define GPI0_BUTN_HAS_OUT 0
#define GPI0_BUTN_HAS_TRI 0
#define GPI0_BUTN_IRQ 2
#define GPI0_BUTN_IRQ_INTERRUPT_CONTROLLER_ID 0
#define GPI0_BUTN_IRQ_TYPE "EDGE"
#define GPI0_BUTN_NAME "/dev/GPI0_BUTN"
#define GPI0_BUTN_RESET_VALUE 0
#define GPI0_BUTN_SPAN 16
#define GPI0_BUTN_TYPE "altera_avalon_pio"


/*
 * GPI1_DIPSW configuration
 *
 */

#define ALT_MODULE_CLASS_GPI1_DIPSW altera_avalon_pio
#define GPI1_DIPSW_BASE 0x2010090
#define GPI1_DIPSW_BIT_CLEARING_EDGE_REGISTER 1
#define GPI1_DIPSW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define GPI1_DIPSW_CAPTURE 1
#define GPI1_DIPSW_DATA_WIDTH 4
#define GPI1_DIPSW_DO_TEST_BENCH_WIRING 0
#define GPI1_DIPSW_DRIVEN_SIM_VALUE 0
#define GPI1_DIPSW_EDGE_TYPE "ANY"
#define GPI1_DIPSW_FREQ 100000000
#define GPI1_DIPSW_HAS_IN 1
#define GPI1_DIPSW_HAS_OUT 0
#define GPI1_DIPSW_HAS_TRI 0
#define GPI1_DIPSW_IRQ -1
#define GPI1_DIPSW_IRQ_INTERRUPT_CONTROLLER_ID -1
#define GPI1_DIPSW_IRQ_TYPE "NONE"
#define GPI1_DIPSW_NAME "/dev/GPI1_DIPSW"
#define GPI1_DIPSW_RESET_VALUE 0
#define GPI1_DIPSW_SPAN 16
#define GPI1_DIPSW_TYPE "altera_avalon_pio"


/*
 * GPO2_LEDG configuration
 *
 */

#define ALT_MODULE_CLASS_GPO2_LEDG altera_avalon_pio
#define GPO2_LEDG_BASE 0x2010040
#define GPO2_LEDG_BIT_CLEARING_EDGE_REGISTER 0
#define GPO2_LEDG_BIT_MODIFYING_OUTPUT_REGISTER 1
#define GPO2_LEDG_CAPTURE 0
#define GPO2_LEDG_DATA_WIDTH 8
#define GPO2_LEDG_DO_TEST_BENCH_WIRING 0
#define GPO2_LEDG_DRIVEN_SIM_VALUE 0
#define GPO2_LEDG_EDGE_TYPE "NONE"
#define GPO2_LEDG_FREQ 100000000
#define GPO2_LEDG_HAS_IN 0
#define GPO2_LEDG_HAS_OUT 1
#define GPO2_LEDG_HAS_TRI 0
#define GPO2_LEDG_IRQ -1
#define GPO2_LEDG_IRQ_INTERRUPT_CONTROLLER_ID -1
#define GPO2_LEDG_IRQ_TYPE "NONE"
#define GPO2_LEDG_NAME "/dev/GPO2_LEDG"
#define GPO2_LEDG_RESET_VALUE 0
#define GPO2_LEDG_SPAN 32
#define GPO2_LEDG_TYPE "altera_avalon_pio"


/*
 * JTAG_UART_DBG configuration
 *
 */

#define ALT_MODULE_CLASS_JTAG_UART_DBG altera_avalon_jtag_uart
#define JTAG_UART_DBG_BASE 0x20100b8
#define JTAG_UART_DBG_IRQ 0
#define JTAG_UART_DBG_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_DBG_NAME "/dev/JTAG_UART_DBG"
#define JTAG_UART_DBG_READ_DEPTH 64
#define JTAG_UART_DBG_READ_THRESHOLD 8
#define JTAG_UART_DBG_SPAN 8
#define JTAG_UART_DBG_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_DBG_WRITE_DEPTH 64
#define JTAG_UART_DBG_WRITE_THRESHOLD 8


/*
 * SOC_SYSID configuration
 *
 */

#define ALT_MODULE_CLASS_SOC_SYSID altera_avalon_sysid_qsys
#define SOC_SYSID_BASE 0x20100b0
#define SOC_SYSID_ID -559038737
#define SOC_SYSID_IRQ -1
#define SOC_SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SOC_SYSID_NAME "/dev/SOC_SYSID"
#define SOC_SYSID_SPAN 8
#define SOC_SYSID_TIMESTAMP 1723665939
#define SOC_SYSID_TYPE "altera_avalon_sysid_qsys"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/JTAG_UART_DBG"
#define ALT_STDERR_BASE 0x20100b8
#define ALT_STDERR_DEV JTAG_UART_DBG
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/JTAG_UART_DBG"
#define ALT_STDIN_BASE 0x20100b8
#define ALT_STDIN_DEV JTAG_UART_DBG
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/JTAG_UART_DBG"
#define ALT_STDOUT_BASE 0x20100b8
#define ALT_STDOUT_DEV JTAG_UART_DBG
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "NIOSV_SOC"
#define ALT_SYS_CLK_TICKS_PER_SEC ALT_CPU_TICKS_PER_SEC
#define ALT_TIMESTAMP_CLK_TIMER_DEVICE_TYPE ALT_CPU_TIMER_DEVICE_TYPE


/*
 * UART_SERIAL_COM configuration
 *
 */

#define ALT_MODULE_CLASS_UART_SERIAL_COM altera_avalon_uart
#define UART_SERIAL_COM_BASE 0x2010060
#define UART_SERIAL_COM_BAUD 115200
#define UART_SERIAL_COM_DATA_BITS 8
#define UART_SERIAL_COM_FIXED_BAUD 1
#define UART_SERIAL_COM_FREQ 100000000
#define UART_SERIAL_COM_IRQ 1
#define UART_SERIAL_COM_IRQ_INTERRUPT_CONTROLLER_ID 0
#define UART_SERIAL_COM_NAME "/dev/UART_SERIAL_COM"
#define UART_SERIAL_COM_PARITY 'N'
#define UART_SERIAL_COM_SIM_CHAR_STREAM ""
#define UART_SERIAL_COM_SIM_TRUE_BAUD 0
#define UART_SERIAL_COM_SPAN 32
#define UART_SERIAL_COM_STOP_BITS 1
#define UART_SERIAL_COM_SYNC_REG_DEPTH 2
#define UART_SERIAL_COM_TYPE "altera_avalon_uart"
#define UART_SERIAL_COM_USE_CTS_RTS 0
#define UART_SERIAL_COM_USE_EOP_REGISTER 0


/*
 * hal2 configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK NIOSV_M_CPU
#define ALT_TIMESTAMP_CLK NIOSV_M_CPU
#define INTEL_FPGA_DFL_START_ADDRESS 0xffffffffffffffff
#define INTEL_FPGA_USE_DFL_WALKER 0


/*
 * intel_niosv_m_hal_driver configuration
 *
 */

#define NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND 1000

#endif /* __SYSTEM_H_ */
