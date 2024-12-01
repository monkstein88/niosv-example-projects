/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'NIOSV_G_CPU' in SOPC Builder design 'NIOSV_G_SOC'
 * SOPC Builder design path: ../../qsys/NIOSV_G_SOC.sopcinfo
 *
 * Generated: Sun Dec 01 17:51:53 EET 2024
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

#define ALTPLL_CLKS_BASE 0x81a0c0
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

#define ALT_CPU_ARCHITECTURE "intel_niosv_g"
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_DATA_ADDR_WIDTH 0x20
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 1024
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HAS_CSR_SUPPORT 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 1024
#define ALT_CPU_INST_ADDR_WIDTH 0x20
#define ALT_CPU_MTIME_OFFSET 0x0081a000
#define ALT_CPU_NAME "NIOSV_G_CPU"
#define ALT_CPU_NIOSV_CORE_VARIANT 3
#define ALT_CPU_NUM_GPR 32
#define ALT_CPU_RESET_ADDR 0x00100000
#define ALT_CPU_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define ALT_CPU_TIMER_DEVICE_TYPE 2


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define BANTAMLAKE_CPU_FREQ 100000000u
#define BANTAMLAKE_DATA_ADDR_WIDTH 0x20
#define BANTAMLAKE_DCACHE_LINE_SIZE 32
#define BANTAMLAKE_DCACHE_LINE_SIZE_LOG2 5
#define BANTAMLAKE_DCACHE_SIZE 1024
#define BANTAMLAKE_HAS_CSR_SUPPORT 1
#define BANTAMLAKE_HAS_DEBUG_STUB
#define BANTAMLAKE_ICACHE_LINE_SIZE 32
#define BANTAMLAKE_ICACHE_LINE_SIZE_LOG2 5
#define BANTAMLAKE_ICACHE_SIZE 1024
#define BANTAMLAKE_INST_ADDR_WIDTH 0x20
#define BANTAMLAKE_MTIME_OFFSET 0x0081a000
#define BANTAMLAKE_NIOSV_CORE_VARIANT 3
#define BANTAMLAKE_NUM_GPR 32
#define BANTAMLAKE_RESET_ADDR 0x00100000
#define BANTAMLAKE_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define BANTAMLAKE_TIMER_DEVICE_TYPE 2


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_UART
#define __ALTERA_EPCQ_CONTROLLER
#define __ALTPLL
#define __ALTSYNCRAM
#define __INTEL_NIOSV_G


/*
 * EPCS_FLASH_CONTROLLER_PROG_avl_csr configuration
 *
 */

#define ALT_MODULE_CLASS_EPCS_FLASH_CONTROLLER_PROG_avl_csr altera_epcq_controller
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_BASE 0x81a080
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_FLASH_TYPE "EPCS64"
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_IRQ 0
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_IRQ_INTERRUPT_CONTROLLER_ID 0
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_IS_EPCS 1
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_NAME "/dev/EPCS_FLASH_CONTROLLER_PROG_avl_csr"
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_NUMBER_OF_SECTORS 128
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_PAGE_SIZE 256
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_SECTOR_SIZE 65536
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_SPAN 32
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_SUBSECTOR_SIZE 4096
#define EPCS_FLASH_CONTROLLER_PROG_AVL_CSR_TYPE "altera_epcq_controller"


/*
 * EPCS_FLASH_CONTROLLER_PROG_avl_mem configuration
 *
 */

#define ALT_MODULE_CLASS_EPCS_FLASH_CONTROLLER_PROG_avl_mem altera_epcq_controller
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_BASE 0x0
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_FLASH_TYPE "EPCS64"
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_IRQ -1
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_IS_EPCS 1
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_NAME "/dev/EPCS_FLASH_CONTROLLER_PROG_avl_mem"
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_NUMBER_OF_SECTORS 128
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_PAGE_SIZE 256
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_SECTOR_SIZE 65536
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_SPAN 8388608
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_SUBSECTOR_SIZE 4096
#define EPCS_FLASH_CONTROLLER_PROG_AVL_MEM_TYPE "altera_epcq_controller"


/*
 * GPI0_BTN configuration
 *
 */

#define ALT_MODULE_CLASS_GPI0_BTN altera_avalon_pio
#define GPI0_BTN_BASE 0x81a0b0
#define GPI0_BTN_BIT_CLEARING_EDGE_REGISTER 1
#define GPI0_BTN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define GPI0_BTN_CAPTURE 1
#define GPI0_BTN_DATA_WIDTH 1
#define GPI0_BTN_DO_TEST_BENCH_WIRING 1
#define GPI0_BTN_DRIVEN_SIM_VALUE 0
#define GPI0_BTN_EDGE_TYPE "FALLING"
#define GPI0_BTN_FREQ 100000000
#define GPI0_BTN_HAS_IN 1
#define GPI0_BTN_HAS_OUT 0
#define GPI0_BTN_HAS_TRI 0
#define GPI0_BTN_IRQ 3
#define GPI0_BTN_IRQ_INTERRUPT_CONTROLLER_ID 0
#define GPI0_BTN_IRQ_TYPE "EDGE"
#define GPI0_BTN_NAME "/dev/GPI0_BTN"
#define GPI0_BTN_RESET_VALUE 0
#define GPI0_BTN_SPAN 16
#define GPI0_BTN_TYPE "altera_avalon_pio"


/*
 * GPI1_DIPSW configuration
 *
 */

#define ALT_MODULE_CLASS_GPI1_DIPSW altera_avalon_pio
#define GPI1_DIPSW_BASE 0x81a0a0
#define GPI1_DIPSW_BIT_CLEARING_EDGE_REGISTER 1
#define GPI1_DIPSW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define GPI1_DIPSW_CAPTURE 1
#define GPI1_DIPSW_DATA_WIDTH 4
#define GPI1_DIPSW_DO_TEST_BENCH_WIRING 1
#define GPI1_DIPSW_DRIVEN_SIM_VALUE 0
#define GPI1_DIPSW_EDGE_TYPE "ANY"
#define GPI1_DIPSW_FREQ 100000000
#define GPI1_DIPSW_HAS_IN 1
#define GPI1_DIPSW_HAS_OUT 0
#define GPI1_DIPSW_HAS_TRI 0
#define GPI1_DIPSW_IRQ 4
#define GPI1_DIPSW_IRQ_INTERRUPT_CONTROLLER_ID 0
#define GPI1_DIPSW_IRQ_TYPE "EDGE"
#define GPI1_DIPSW_NAME "/dev/GPI1_DIPSW"
#define GPI1_DIPSW_RESET_VALUE 0
#define GPI1_DIPSW_SPAN 16
#define GPI1_DIPSW_TYPE "altera_avalon_pio"


/*
 * GPO2_LEDG configuration
 *
 */

#define ALT_MODULE_CLASS_GPO2_LEDG altera_avalon_pio
#define GPO2_LEDG_BASE 0x81a040
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
 * JTAG_UART_COM configuration
 *
 */

#define ALT_MODULE_CLASS_JTAG_UART_COM altera_avalon_jtag_uart
#define JTAG_UART_COM_BASE 0x81a0d8
#define JTAG_UART_COM_IRQ 1
#define JTAG_UART_COM_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_COM_NAME "/dev/JTAG_UART_COM"
#define JTAG_UART_COM_READ_DEPTH 128
#define JTAG_UART_COM_READ_THRESHOLD 8
#define JTAG_UART_COM_SPAN 8
#define JTAG_UART_COM_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_COM_WRITE_DEPTH 128
#define JTAG_UART_COM_WRITE_THRESHOLD 8


/*
 * SERIAL_UART_COM configuration
 *
 */

#define ALT_MODULE_CLASS_SERIAL_UART_COM altera_avalon_uart
#define SERIAL_UART_COM_BASE 0x81a060
#define SERIAL_UART_COM_BAUD 115200
#define SERIAL_UART_COM_DATA_BITS 8
#define SERIAL_UART_COM_FIXED_BAUD 1
#define SERIAL_UART_COM_FREQ 100000000
#define SERIAL_UART_COM_IRQ 2
#define SERIAL_UART_COM_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SERIAL_UART_COM_NAME "/dev/SERIAL_UART_COM"
#define SERIAL_UART_COM_PARITY 'N'
#define SERIAL_UART_COM_SIM_CHAR_STREAM ""
#define SERIAL_UART_COM_SIM_TRUE_BAUD 0
#define SERIAL_UART_COM_SPAN 32
#define SERIAL_UART_COM_STOP_BITS 1
#define SERIAL_UART_COM_SYNC_REG_DEPTH 2
#define SERIAL_UART_COM_TYPE "altera_avalon_uart"
#define SERIAL_UART_COM_USE_CTS_RTS 0
#define SERIAL_UART_COM_USE_EOP_REGISTER 0


/*
 * SOC_SYS_ID configuration
 *
 */

#define ALT_MODULE_CLASS_SOC_SYS_ID altera_avalon_sysid_qsys
#define SOC_SYS_ID_BASE 0x81a0d0
#define SOC_SYS_ID_ID 14550284
#define SOC_SYS_ID_IRQ -1
#define SOC_SYS_ID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SOC_SYS_ID_NAME "/dev/SOC_SYS_ID"
#define SOC_SYS_ID_SPAN 8
#define SOC_SYS_ID_TIMESTAMP 1733067715
#define SOC_SYS_ID_TYPE "altera_avalon_sysid_qsys"


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
#define ALT_STDERR "/dev/JTAG_UART_COM"
#define ALT_STDERR_BASE 0x81a0d8
#define ALT_STDERR_DEV JTAG_UART_COM
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/JTAG_UART_COM"
#define ALT_STDIN_BASE 0x81a0d8
#define ALT_STDIN_DEV JTAG_UART_COM
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/JTAG_UART_COM"
#define ALT_STDOUT_BASE 0x81a0d8
#define ALT_STDOUT_DEV JTAG_UART_COM
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "NIOSV_G_SOC"
#define ALT_SYS_CLK_TICKS_PER_SEC ALT_CPU_TICKS_PER_SEC
#define ALT_TIMESTAMP_CLK_TIMER_DEVICE_TYPE ALT_CPU_TIMER_DEVICE_TYPE


/*
 * hal2 configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK NIOSV_G_CPU
#define ALT_TIMESTAMP_CLK NIOSV_G_CPU
#define INTEL_FPGA_DFL_START_ADDRESS 0xffffffffffffffff
#define INTEL_FPGA_USE_DFL_WALKER 0


/*
 * intel_niosv_g_hal_driver configuration
 *
 */

#define NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND 1000


/*
 * niosvdtcm1 configuration
 *
 */

#define ALT_MODULE_CLASS_niosvdtcm1 altsyncram
#define NIOSVDTCM1_BASE 0x818000
#define NIOSVDTCM1_IRQ -1
#define NIOSVDTCM1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define NIOSVDTCM1_NAME "/dev/niosvdtcm1"
#define NIOSVDTCM1_SPAN 8192
#define NIOSVDTCM1_TYPE "altsyncram"


/*
 * niosvitcm1 configuration
 *
 */

#define ALT_MODULE_CLASS_niosvitcm1 altsyncram
#define NIOSVITCM1_BASE 0x810000
#define NIOSVITCM1_IRQ -1
#define NIOSVITCM1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define NIOSVITCM1_NAME "/dev/niosvitcm1"
#define NIOSVITCM1_SPAN 32768
#define NIOSVITCM1_TYPE "altsyncram"

#endif /* __SYSTEM_H_ */
