// NIOSV_SOC_NIOSV_M_CPU.v

// This file was auto-generated from intel_niosv_m_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 23.1 993

`timescale 1 ps / 1 ps
module NIOSV_SOC_NIOSV_M_CPU (
		input  wire        clk,                          //                 clk.clk
		input  wire        reset_reset,                  //               reset.reset
		input  wire [15:0] platform_irq_rx_irq,          //     platform_irq_rx.irq
		input  wire        ndm_reset_in_reset,           //        ndm_reset_in.reset
		input  wire        timer_sw_agent_write,         //      timer_sw_agent.write
		input  wire [31:0] timer_sw_agent_writedata,     //                    .writedata
		input  wire [3:0]  timer_sw_agent_byteenable,    //                    .byteenable
		input  wire [5:0]  timer_sw_agent_address,       //                    .address
		input  wire        timer_sw_agent_read,          //                    .read
		output wire [31:0] timer_sw_agent_readdata,      //                    .readdata
		output wire        timer_sw_agent_readdatavalid, //                    .readdatavalid
		output wire        timer_sw_agent_waitrequest,   //                    .waitrequest
		output wire [31:0] instruction_manager_awaddr,   // instruction_manager.awaddr
		output wire [2:0]  instruction_manager_awprot,   //                    .awprot
		output wire        instruction_manager_awvalid,  //                    .awvalid
		input  wire        instruction_manager_awready,  //                    .awready
		output wire [31:0] instruction_manager_wdata,    //                    .wdata
		output wire [3:0]  instruction_manager_wstrb,    //                    .wstrb
		output wire        instruction_manager_wvalid,   //                    .wvalid
		input  wire        instruction_manager_wready,   //                    .wready
		input  wire [1:0]  instruction_manager_bresp,    //                    .bresp
		input  wire        instruction_manager_bvalid,   //                    .bvalid
		output wire        instruction_manager_bready,   //                    .bready
		output wire [31:0] instruction_manager_araddr,   //                    .araddr
		output wire [2:0]  instruction_manager_arprot,   //                    .arprot
		output wire        instruction_manager_arvalid,  //                    .arvalid
		input  wire        instruction_manager_arready,  //                    .arready
		input  wire [31:0] instruction_manager_rdata,    //                    .rdata
		input  wire [1:0]  instruction_manager_rresp,    //                    .rresp
		input  wire        instruction_manager_rvalid,   //                    .rvalid
		output wire        instruction_manager_rready,   //                    .rready
		output wire [31:0] data_manager_awaddr,          //        data_manager.awaddr
		output wire [2:0]  data_manager_awprot,          //                    .awprot
		output wire        data_manager_awvalid,         //                    .awvalid
		input  wire        data_manager_awready,         //                    .awready
		output wire [31:0] data_manager_wdata,           //                    .wdata
		output wire [3:0]  data_manager_wstrb,           //                    .wstrb
		output wire        data_manager_wvalid,          //                    .wvalid
		input  wire        data_manager_wready,          //                    .wready
		input  wire [1:0]  data_manager_bresp,           //                    .bresp
		input  wire        data_manager_bvalid,          //                    .bvalid
		output wire        data_manager_bready,          //                    .bready
		output wire [31:0] data_manager_araddr,          //                    .araddr
		output wire [2:0]  data_manager_arprot,          //                    .arprot
		output wire        data_manager_arvalid,         //                    .arvalid
		input  wire        data_manager_arready,         //                    .arready
		input  wire [31:0] data_manager_rdata,           //                    .rdata
		input  wire [1:0]  data_manager_rresp,           //                    .rresp
		input  wire        data_manager_rvalid,          //                    .rvalid
		output wire        data_manager_rready,          //                    .rready
		input  wire        dm_agent_write,               //            dm_agent.write
		input  wire [31:0] dm_agent_writedata,           //                    .writedata
		input  wire [15:0] dm_agent_address,             //                    .address
		input  wire        dm_agent_read,                //                    .read
		output wire [31:0] dm_agent_readdata,            //                    .readdata
		output wire        dm_agent_readdatavalid,       //                    .readdatavalid
		output wire        dm_agent_waitrequest,         //                    .waitrequest
		output wire        dbg_reset_out_reset,          //       dbg_reset_out.reset
		output wire [1:0]  cpu_ecc_status_ecc_status,    //      cpu_ecc_status.ecc_status
		output wire [3:0]  cpu_ecc_status_ecc_source     //                    .ecc_source
	);

	wire    irq_mapper_receiver0_irq;           // dbg_mod:dbg_irq -> irq_mapper:receiver0_irq
	wire    hart_debug_irq_rx_irq;              // irq_mapper:sender_irq -> hart:irq_debug
	wire    irq_mapper_001_receiver0_irq;       // timer_module:timer_irq -> irq_mapper_001:receiver0_irq
	wire    hart_timer_irq_rx_irq;              // irq_mapper_001:sender_irq -> hart:irq_timer
	wire    irq_mapper_002_receiver0_irq;       // timer_module:sw_irq -> irq_mapper_002:receiver0_irq
	wire    hart_sw_irq_rx_irq;                 // irq_mapper_002:sender_irq -> hart:irq_sw
	wire    rst_controller_reset_out_reset;     // rst_controller:reset_out -> hart:reset
	wire    rst_controller_001_reset_out_reset; // rst_controller_001:reset_out -> [irq_mapper:reset, irq_mapper_001:reset, irq_mapper_002:reset, timer_module:reset]

	niosv_m_top #(
		.RESET_VECTOR    (32'b00000010000100000000000000000000),
		.DBG_EXPN_VECTOR (32'b00000010100000000000000000000000),
		.CORE_EXTN       (256),
		.DEBUG_ENABLED   (1),
		.DEVICE_FAMILY   ("Cyclone IV E"),
		.USE_RESET_REQ   (0),
		.ECC_EN          (1),
		.SMALL_CORE      (0)
	) hart (
		.clk             (clk),                            //             cpu_clk.clk
		.reset           (rst_controller_reset_out_reset), //           cpu_reset.reset
		.core_ecc_status (cpu_ecc_status_ecc_status),      //      cpu_ecc_status.ecc_status
		.core_ecc_src    (cpu_ecc_status_ecc_source),      //                    .ecc_source
		.irq_plat_vec    (platform_irq_rx_irq),            //     platform_irq_rx.irq
		.irq_debug       (hart_debug_irq_rx_irq),          //        debug_irq_rx.irq
		.irq_timer       (hart_timer_irq_rx_irq),          //        timer_irq_rx.irq
		.irq_sw          (hart_sw_irq_rx_irq),             //           sw_irq_rx.irq
		.instr_awaddr    (instruction_manager_awaddr),     // instruction_manager.awaddr
		.instr_awprot    (instruction_manager_awprot),     //                    .awprot
		.instr_awvalid   (instruction_manager_awvalid),    //                    .awvalid
		.instr_awready   (instruction_manager_awready),    //                    .awready
		.instr_wdata     (instruction_manager_wdata),      //                    .wdata
		.instr_wstrb     (instruction_manager_wstrb),      //                    .wstrb
		.instr_wvalid    (instruction_manager_wvalid),     //                    .wvalid
		.instr_wready    (instruction_manager_wready),     //                    .wready
		.instr_bresp     (instruction_manager_bresp),      //                    .bresp
		.instr_bvalid    (instruction_manager_bvalid),     //                    .bvalid
		.instr_bready    (instruction_manager_bready),     //                    .bready
		.instr_araddr    (instruction_manager_araddr),     //                    .araddr
		.instr_arprot    (instruction_manager_arprot),     //                    .arprot
		.instr_arvalid   (instruction_manager_arvalid),    //                    .arvalid
		.instr_arready   (instruction_manager_arready),    //                    .arready
		.instr_rdata     (instruction_manager_rdata),      //                    .rdata
		.instr_rresp     (instruction_manager_rresp),      //                    .rresp
		.instr_rvalid    (instruction_manager_rvalid),     //                    .rvalid
		.instr_rready    (instruction_manager_rready),     //                    .rready
		.data_awaddr     (data_manager_awaddr),            //        data_manager.awaddr
		.data_awprot     (data_manager_awprot),            //                    .awprot
		.data_awvalid    (data_manager_awvalid),           //                    .awvalid
		.data_awready    (data_manager_awready),           //                    .awready
		.data_wdata      (data_manager_wdata),             //                    .wdata
		.data_wstrb      (data_manager_wstrb),             //                    .wstrb
		.data_wvalid     (data_manager_wvalid),            //                    .wvalid
		.data_wready     (data_manager_wready),            //                    .wready
		.data_bresp      (data_manager_bresp),             //                    .bresp
		.data_bvalid     (data_manager_bvalid),            //                    .bvalid
		.data_bready     (data_manager_bready),            //                    .bready
		.data_araddr     (data_manager_araddr),            //                    .araddr
		.data_arprot     (data_manager_arprot),            //                    .arprot
		.data_arvalid    (data_manager_arvalid),           //                    .arvalid
		.data_arready    (data_manager_arready),           //                    .arready
		.data_rdata      (data_manager_rdata),             //                    .rdata
		.data_rresp      (data_manager_rresp),             //                    .rresp
		.data_rvalid     (data_manager_rvalid),            //                    .rvalid
		.data_rready     (data_manager_rready),            //                    .rready
		.reset_req       (1'b0),                           //         (terminated)
		.reset_req_ack   (),                               //         (terminated)
		.instr_awsize    (),                               //         (terminated)
		.instr_wlast     (),                               //         (terminated)
		.instr_arsize    (),                               //         (terminated)
		.data_awsize     (),                               //         (terminated)
		.data_wlast      (),                               //         (terminated)
		.data_arsize     (),                               //         (terminated)
		.irq_ext         (1'b0)                            //         (terminated)
	);

	niosv_timer_msip #(
		.IRQ_EN (1)
	) timer_module (
		.clk                (clk),                                //            clk.clk
		.reset              (rst_controller_001_reset_out_reset), //          reset.reset
		.hart_write         (timer_sw_agent_write),               // timer_sw_agent.write
		.hart_writedata     (timer_sw_agent_writedata),           //               .writedata
		.hart_byteen        (timer_sw_agent_byteenable),          //               .byteenable
		.hart_address       (timer_sw_agent_address),             //               .address
		.hart_read          (timer_sw_agent_read),                //               .read
		.hart_readdata      (timer_sw_agent_readdata),            //               .readdata
		.hart_readdatavalid (timer_sw_agent_readdatavalid),       //               .readdatavalid
		.hart_waitrequest   (timer_sw_agent_waitrequest),         //               .waitrequest
		.timer_irq          (irq_mapper_001_receiver0_irq),       //      timer_irq.irq
		.sw_irq             (irq_mapper_002_receiver0_irq)        //         sw_irq.irq
	);

	niosv_dm_top #(
		.DEBUG_RESET_EN (1),
		.FPU_EN         (0),
		.DEVICE_FAMILY  ("Cyclone IV E")
	) dbg_mod (
		.clk                (clk),                      //           clk.clk
		.reset              (reset_reset),              //         reset.reset
		.hart_write         (dm_agent_write),           //      dm_agent.write
		.hart_writedata     (dm_agent_writedata),       //              .writedata
		.hart_address       (dm_agent_address),         //              .address
		.hart_read          (dm_agent_read),            //              .read
		.hart_readdata      (dm_agent_readdata),        //              .readdata
		.hart_readdatavalid (dm_agent_readdatavalid),   //              .readdatavalid
		.hart_waitrequest   (dm_agent_waitrequest),     //              .waitrequest
		.dbg_irq            (irq_mapper_receiver0_irq), //       dbg_irq.irq
		.dbg_reset          (dbg_reset_out_reset)       // dbg_reset_out.reset
	);

	NIOSV_SOC_NIOSV_M_CPU_irq_mapper irq_mapper (
		.clk           (clk),                                //       clk.clk
		.reset         (rst_controller_001_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),           // receiver0.irq
		.sender_irq    (hart_debug_irq_rx_irq)               //    sender.irq
	);

	NIOSV_SOC_NIOSV_M_CPU_irq_mapper irq_mapper_001 (
		.clk           (clk),                                //       clk.clk
		.reset         (rst_controller_001_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_001_receiver0_irq),       // receiver0.irq
		.sender_irq    (hart_timer_irq_rx_irq)               //    sender.irq
	);

	NIOSV_SOC_NIOSV_M_CPU_irq_mapper irq_mapper_002 (
		.clk           (clk),                                //       clk.clk
		.reset         (rst_controller_001_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_002_receiver0_irq),       // receiver0.irq
		.sender_irq    (hart_sw_irq_rx_irq)                  //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("none"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (reset_reset),                    // reset_in0.reset
		.reset_in1      (ndm_reset_in_reset),             // reset_in1.reset
		.clk            (),                               //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (reset_reset),                        // reset_in0.reset
		.reset_in1      (ndm_reset_in_reset),                 // reset_in1.reset
		.clk            (clk),                                //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
