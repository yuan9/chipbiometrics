// bioqsys.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module bioqsys (
		input  wire       clk_clk,       //  clk.clk
		output wire [6:0] hex0_readdata, // hex0.readdata
		output wire [6:0] hex1_name,     // hex1.name
		output wire [6:0] hex2_readdata, // hex2.readdata
		output wire [6:0] hex3_readdata, // hex3.readdata
		output wire [6:0] hex4_readdata, // hex4.readdata
		output wire [6:0] hex5_readdata  // hex5.readdata
	);

	wire         master_0_master_reset_reset;                              // master_0:master_reset_reset -> [master_0:clk_reset_reset, rst_controller:reset_in0]
	wire  [31:0] master_0_master_readdata;                                 // mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	wire         master_0_master_waitrequest;                              // mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_address;                                  // master_0:master_address -> mm_interconnect_0:master_0_master_address
	wire         master_0_master_read;                                     // master_0:master_read -> mm_interconnect_0:master_0_master_read
	wire   [3:0] master_0_master_byteenable;                               // master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	wire         master_0_master_readdatavalid;                            // mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_write;                                    // master_0:master_write -> mm_interconnect_0:master_0_master_write
	wire  [31:0] master_0_master_writedata;                                // master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	wire  [31:0] mm_interconnect_0_ro16_mm_0_avalon_slave_0_readdata;      // ro16_mm_0:readdata -> mm_interconnect_0:ro16_mm_0_avalon_slave_0_readdata
	wire         mm_interconnect_0_ro16_mm_0_avalon_slave_0_waitrequest;   // ro16_mm_0:waitrequest -> mm_interconnect_0:ro16_mm_0_avalon_slave_0_waitrequest
	wire   [0:0] mm_interconnect_0_ro16_mm_0_avalon_slave_0_address;       // mm_interconnect_0:ro16_mm_0_avalon_slave_0_address -> ro16_mm_0:address
	wire         mm_interconnect_0_ro16_mm_0_avalon_slave_0_read;          // mm_interconnect_0:ro16_mm_0_avalon_slave_0_read -> ro16_mm_0:read
	wire         mm_interconnect_0_ro16_mm_0_avalon_slave_0_readdatavalid; // ro16_mm_0:readdatavalid -> mm_interconnect_0:ro16_mm_0_avalon_slave_0_readdatavalid
	wire         mm_interconnect_0_ro16_mm_0_avalon_slave_0_write;         // mm_interconnect_0:ro16_mm_0_avalon_slave_0_write -> ro16_mm_0:write
	wire  [31:0] mm_interconnect_0_ro16_mm_0_avalon_slave_0_writedata;     // mm_interconnect_0:ro16_mm_0_avalon_slave_0_writedata -> ro16_mm_0:writedata
	wire   [0:0] mm_interconnect_0_hexdriver_0_avalon_slave_0_address;     // mm_interconnect_0:hexdriver_0_avalon_slave_0_address -> hexdriver_0:address
	wire         mm_interconnect_0_hexdriver_0_avalon_slave_0_write;       // mm_interconnect_0:hexdriver_0_avalon_slave_0_write -> hexdriver_0:write
	wire  [31:0] mm_interconnect_0_hexdriver_0_avalon_slave_0_writedata;   // mm_interconnect_0:hexdriver_0_avalon_slave_0_writedata -> hexdriver_0:writedata
	wire         rst_controller_reset_out_reset;                           // rst_controller:reset_out -> [hexdriver_0:reset, mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:ro16_mm_0_reset_reset_bridge_in_reset_reset, ro16_mm_0:reset]

	hexdriver hexdriver_0 (
		.clk       (clk_clk),                                                //          clock.clk
		.reset     (rst_controller_reset_out_reset),                         //          reset.reset
		.address   (mm_interconnect_0_hexdriver_0_avalon_slave_0_address),   // avalon_slave_0.address
		.write     (mm_interconnect_0_hexdriver_0_avalon_slave_0_write),     //               .write
		.writedata (mm_interconnect_0_hexdriver_0_avalon_slave_0_writedata), //               .writedata
		.HEX0      (hex0_readdata),                                          //    conduit_end.readdata
		.HEX1      (hex1_name),                                              //  conduit_end_1.name
		.HEX2      (hex2_readdata),                                          //  conduit_end_2.readdata
		.HEX3      (hex3_readdata),                                          //  conduit_end_3.readdata
		.HEX4      (hex4_readdata),                                          //  conduit_end_4.readdata
		.HEX5      (hex5_readdata)                                           //  conduit_end_5.readdata
	);

	bioqsys_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (clk_clk),                       //          clk.clk
		.clk_reset_reset      (master_0_master_reset_reset),   //    clk_reset.reset
		.master_address       (master_0_master_address),       //       master.address
		.master_readdata      (master_0_master_readdata),      //             .readdata
		.master_read          (master_0_master_read),          //             .read
		.master_write         (master_0_master_write),         //             .write
		.master_writedata     (master_0_master_writedata),     //             .writedata
		.master_waitrequest   (master_0_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (master_0_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (master_0_master_byteenable),    //             .byteenable
		.master_reset_reset   (master_0_master_reset_reset)    // master_reset.reset
	);

	ro16_mm ro16_mm_0 (
		.clk           (clk_clk),                                                  //          clock.clk
		.reset         (rst_controller_reset_out_reset),                           //          reset.reset
		.address       (mm_interconnect_0_ro16_mm_0_avalon_slave_0_address),       // avalon_slave_0.address
		.read          (mm_interconnect_0_ro16_mm_0_avalon_slave_0_read),          //               .read
		.readdata      (mm_interconnect_0_ro16_mm_0_avalon_slave_0_readdata),      //               .readdata
		.write         (mm_interconnect_0_ro16_mm_0_avalon_slave_0_write),         //               .write
		.writedata     (mm_interconnect_0_ro16_mm_0_avalon_slave_0_writedata),     //               .writedata
		.readdatavalid (mm_interconnect_0_ro16_mm_0_avalon_slave_0_readdatavalid), //               .readdatavalid
		.waitrequest   (mm_interconnect_0_ro16_mm_0_avalon_slave_0_waitrequest)    //               .waitrequest
	);

	bioqsys_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                  (clk_clk),                                                  //                                clk_0_clk.clk
		.master_0_clk_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                           // master_0_clk_reset_reset_bridge_in_reset.reset
		.ro16_mm_0_reset_reset_bridge_in_reset_reset    (rst_controller_reset_out_reset),                           //    ro16_mm_0_reset_reset_bridge_in_reset.reset
		.master_0_master_address                        (master_0_master_address),                                  //                          master_0_master.address
		.master_0_master_waitrequest                    (master_0_master_waitrequest),                              //                                         .waitrequest
		.master_0_master_byteenable                     (master_0_master_byteenable),                               //                                         .byteenable
		.master_0_master_read                           (master_0_master_read),                                     //                                         .read
		.master_0_master_readdata                       (master_0_master_readdata),                                 //                                         .readdata
		.master_0_master_readdatavalid                  (master_0_master_readdatavalid),                            //                                         .readdatavalid
		.master_0_master_write                          (master_0_master_write),                                    //                                         .write
		.master_0_master_writedata                      (master_0_master_writedata),                                //                                         .writedata
		.hexdriver_0_avalon_slave_0_address             (mm_interconnect_0_hexdriver_0_avalon_slave_0_address),     //               hexdriver_0_avalon_slave_0.address
		.hexdriver_0_avalon_slave_0_write               (mm_interconnect_0_hexdriver_0_avalon_slave_0_write),       //                                         .write
		.hexdriver_0_avalon_slave_0_writedata           (mm_interconnect_0_hexdriver_0_avalon_slave_0_writedata),   //                                         .writedata
		.ro16_mm_0_avalon_slave_0_address               (mm_interconnect_0_ro16_mm_0_avalon_slave_0_address),       //                 ro16_mm_0_avalon_slave_0.address
		.ro16_mm_0_avalon_slave_0_write                 (mm_interconnect_0_ro16_mm_0_avalon_slave_0_write),         //                                         .write
		.ro16_mm_0_avalon_slave_0_read                  (mm_interconnect_0_ro16_mm_0_avalon_slave_0_read),          //                                         .read
		.ro16_mm_0_avalon_slave_0_readdata              (mm_interconnect_0_ro16_mm_0_avalon_slave_0_readdata),      //                                         .readdata
		.ro16_mm_0_avalon_slave_0_writedata             (mm_interconnect_0_ro16_mm_0_avalon_slave_0_writedata),     //                                         .writedata
		.ro16_mm_0_avalon_slave_0_readdatavalid         (mm_interconnect_0_ro16_mm_0_avalon_slave_0_readdatavalid), //                                         .readdatavalid
		.ro16_mm_0_avalon_slave_0_waitrequest           (mm_interconnect_0_ro16_mm_0_avalon_slave_0_waitrequest)    //                                         .waitrequest
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
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
	) rst_controller (
		.reset_in0      (master_0_master_reset_reset),    // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
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

endmodule