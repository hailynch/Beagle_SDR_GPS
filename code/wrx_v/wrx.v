//////////////////////////////////////////////////////////////////////////
// Homemade GPS Receiver
// Copyright (C) 2013 Andrew Holme
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// http://www.holmea.demon.co.uk/GPS/Main.htm
//////////////////////////////////////////////////////////////////////////


// Copyright (c) 2014 John Seamons, ZL/KF6VO

`default_nettype none

`include "wrx.vh"

`ifdef ARTIX_7
module wrx (

    input  wire	signed [13:0] ADC_DATA,
    input  wire	ADC_OVFL,
    input  wire	ADC_CLK,

    input  wire IF_SGN,
    input  wire IF_MAG,
    input  wire GPS_TCXO,

    input  wire	BBB_SCLK,
    input  wire [1:0] BBB_CS_N,
    input  wire BBB_MOSI,
    output wire BBB_MISO,

    input  wire [5:0] EXP_P9,
    input  wire [13:0] EXP_P8,
    output wire EWP
    );
`endif
    
`ifdef SPARTAN_6
module wrx (

    input  wire	signed [13:0] ADC_DATA,
    input  wire	ADC_OVFL,
    input  wire	ADC_CLKOUT,
    output wire	ADC_CLKIN,
    output wire	ADC_OSC_EN,

    input  wire IF_SGN,
    input  wire GPS_TCXO,

    input  wire	BBB_SCLK,
    input  wire [1:0] BBB_CS_N,
    input  wire BBB_MOSI,
    output wire BBB_MISO,
    
    output wire LED_0,
    output wire LED_1,
    input  wire [6:0] X
    );
`endif
    
    // clocks
    wire clk_slow;
    wire gps_clk, adc_clk, cpu_clk;
    
`ifdef CLK_STD
	localparam CLOCK_ID = 4'd0;

    IBUFG vcxo_ibufg(.I(ADC_CLK), .O(adc_clk));

    IBUFG tcxo_ibufg(.I(GPS_TCXO), .O(gps_clk));		// 16.368 MHz TCXO
    assign cpu_clk = gps_clk;
`endif

`ifdef CLK_16M_65M
	localparam CLOCK_ID = 4'd6;

	wire gps_tcxo;
    IBUFG tcxo_ibufg(.I(GPS_TCXO), .O(gps_tcxo));		// 16.368 MHz TCXO

    assign gps_clk = clk_slow;
    assign cpu_clk = clk_slow;

	ip_clkgen_16M_65M clkgen_65M_inst (
		.CLK_IN1	(gps_tcxo),							// set no buf on input
		.CLK_OUT1	(clk_slow),							// set BUFG on output
		.CLK_OUT2	(adc_clk)							// set BUFG on output
	);
`endif

`ifdef CLK_16M_49M
	localparam CLOCK_ID = 4'd4;

	wire gps_tcxo;
    IBUFG tcxo_ibufg(.I(GPS_TCXO), .O(gps_tcxo));		// 16.368 MHz TCXO

    assign gps_clk = clk_slow;
    assign cpu_clk = clk_slow;

	ip_clkgen_16M_49M clkgen_49M_inst (
		.CLK_IN1	(gps_tcxo),							// set no buf on input
		.CLK_OUT1	(clk_slow),							// set BUFG on output
		.CLK_OUT2	(adc_clk)							// set BUFG on output
	);
`endif
	
`ifdef CLK_16M_82M
	localparam CLOCK_ID = 4'd2;

	wire gps_tcxo;
    IBUFG tcxo_ibufg(.I(GPS_TCXO), .O(gps_tcxo));		// 16.368 MHz TCXO

    assign gps_clk = clk_slow;
    assign cpu_clk = clk_slow;

	ip_clkgen_16M_82M clkgen_82M_inst (
		.CLK_IN1	(gps_tcxo),							// set no buf on input
		.CLK_OUT1	(clk_slow),							// set BUFG on output
		.CLK_OUT2	(adc_clk)							// set BUFG on output
	);
`endif
	
`ifdef CLK_80M_20M
	localparam CLOCK_ID = 4'd9;

    assign gps_clk = clk_slow;
    assign cpu_clk = clk_slow;

	wire adc_clkout;
    IBUFG vcxo_ibufg(.I(ADC_CLKOUT), .O(adc_clkout));

	ip_clkgen_80M_20M clkgen_80M_inst (
		.CLK_IN1	(adc_clkout),
		.CLK_OUT1	(adc_clk),
		.CLK_OUT2	(clk_slow)
	);
`endif

`ifdef CLK_80M_16M
	localparam CLOCK_ID = 4'd8;

    IBUFG tcxo_ibufg(.I(GPS_TCXO), .O(clk_slow));		// 16.368 MHz TCXO

    assign gps_clk = clk_slow;
    assign cpu_clk = clk_slow;

	wire adc_clkout;
    IBUFG vcxo_ibufg(.I(ADC_CLKOUT), .O(adc_clkout));

	ip_clkgen_80M_20M clkgen_80M_inst (
		.CLK_IN1	(adc_clkout),
		.CLK_OUT1	(adc_clk),
		.CLK_OUT2	()
	);
`endif

`ifdef SPARTAN_6

// have to do this because DCM outputs are directly tied to a clock net and you can't generate an output pin
// from a clock net without skew problems.
`ifdef CLK_80M_20M
	assign ADC_OSC_EN = ctrl[CTRL_OSC_EN];
	assign ADC_CLKIN = 1'b0;
`elsif CLK_80M_16M
	assign ADC_OSC_EN = ctrl[CTRL_OSC_EN];
	assign ADC_CLKIN = 1'b0;
`else
	assign ADC_OSC_EN = 1'b0;

    // indirect way of generating an output clock from clock routing (can't otherwise use logic cells)
    ODDR2 adc_clkin_drv(
    	.S(1'b0), .R(1'b0), .D0(1'b1), .D1(1'b0), .CE(ctrl[CTRL_ADCLK_GEN]),
    	.C0(adc_clk), .C1(~adc_clk), .Q(ADC_CLKIN)
    );
`endif

`endif


	reg signed [13:0] reg_adc_data;
    always @ (posedge adc_clk)
    begin
    	reg_adc_data <= ADC_DATA;
    end

    wire  [2:1] rst;

	wire [15:0] op;
    wire [31:0] nos, tos;
    reg  [15:0] par;
    wire [1:0]  ser;
    wire        rdBit, rdBit2, rdReg, rdReg2, wrReg, wrReg2, wrEvt, wrEvt2;

    wire        boot_done, host_srq, mem_rd, gps_rd;
    wire [15:0] host_dout, mem_dout, gps_dout;
    
    //////////////////////////////////////////////////////////////////////////
    // global control & status registers
    reg [15:0] ctrl;
    wire [15:0] status;
    
    always @ (posedge cpu_clk)
    begin
        if (wrReg2 && op[SET_CTRL]) ctrl <= tos[15:0];
    end

`ifdef ARTIX_7
	assign EWP = ctrl[CTRL_EEPROM_WP];
`endif

`ifdef SPARTAN_6
	assign LED_0 = ctrl[CTRL_LED_0];
	assign LED_1 = ctrl[CTRL_LED_1];
`endif

    //////////////////////////////////////////////////////////////////////////
    // receiver

	wire rx_rd, wf_rd;
	wire [15:0] rx_dout, wf_dout;

    RECEIVER receiver (
    	.adc_clk	(adc_clk),
    	.adc_data	(reg_adc_data),

		// these are all on the cpu_clk
        .rx_rd_C	(rx_rd),
        .rx_dout_C	(rx_dout),

        .wf_rd_C	(wf_rd),
        .wf_dout_C	(wf_dout),

		.cpu_clk	(cpu_clk),
        .ser		(ser[1]),        
        .tos		(tos),
        .op			(op),        
        .rdBit2     (rdBit2),
        .wrReg2     (wrReg2),
        .wrEvt2     (wrEvt2),
        .ctrl       (ctrl)
    	);
    
	reg rx_overflow;
    assign status[15:0] = { rx_overflow, 3'b0, FPGA_VER, CLOCK_ID, FPGA_ID };

	wire rx_ovfl;
	SYNC_PULSE sync_adc_ovfl (.in_clk(adc_clk), .in(ADC_OVFL), .out_clk(cpu_clk), .out(rx_ovfl));

    always @ (posedge cpu_clk)
    begin
    	if (wrEvt & op[CLR_RX_OVFL]) rx_overflow <= rx_ovfl; else
    	rx_overflow <= rx_overflow | rx_ovfl;
    end

    //////////////////////////////////////////////////////////////////////////
    // CPU parallel port input mux
	
wire [31:0] wcnt;

    always @*
`ifdef USE_CPU_CTR
		if (rdReg & op[GET_CPU_CTR0]) par = { cpu_ctr[1][ 7 -:8], cpu_ctr[0][ 7 -:8] }; else
		if (rdReg & op[GET_CPU_CTR1]) par = { cpu_ctr[1][15 -:8], cpu_ctr[0][15 -:8] }; else
		if (rdReg & op[GET_CPU_CTR2]) par = { cpu_ctr[1][23 -:8], cpu_ctr[0][23 -:8] }; else
		if (rdReg & op[GET_CPU_CTR3]) par = { cpu_ctr[1][31 -:8], cpu_ctr[0][31 -:8] }; else
`endif

		if (rdReg && op[GET_STATUS]) par = status; else
		par = host_dout;
	
    HOST host (
        .hb_clk		(gps_clk),
        .rst		(rst),
        .spi_sclk   (BBB_SCLK),
        .spi_cs		(~BBB_CS_N),
        .spi_mosi   (BBB_MOSI),
        .spi_miso   (BBB_MISO),
        .host_srq   (host_srq),
        
        .gps_rd 	(gps_rd),
        .gps_dout	(gps_dout),

        .rx_rd		(rx_rd),
        .rx_dout	(rx_dout),

        .wf_rd		(wf_rd),
        .wf_dout	(wf_dout),

        .host_dout  (host_dout),
        .mem_rd     (mem_rd),
        .mem_dout   (mem_dout),
        .boot_done  (boot_done),

        .tos        (tos),
        .op         (op),
        .rdReg      (rdReg),
        .wrReg      (wrReg),
        .wrEvt      (wrEvt),

        .ctrl       (ctrl)
        );


    //////////////////////////////////////////////////////////////////////////
    // CPU cycle counters

`ifdef USE_CPU_CTR
    reg cpu_ctr_ena;
    wire [31:0] cpu_ctr[1:0];
    wire sclr = wrEvt2 & op[CPU_CTR_CLR];
    
	ip_acc_u32b cpu_ctr0 (.clk(cpu_clk), .sclr(sclr), .b(1), .q(cpu_ctr[0]));
	ip_acc_u32b cpu_ctr1 (.clk(cpu_clk), .sclr(sclr), .b({{31{1'b0}}, cpu_ctr_ena}), .q(cpu_ctr[1]));

	always @ (posedge cpu_clk)
	begin
		if (wrEvt2 & op[CPU_CTR_ENA]) cpu_ctr_ena <= 1;
		if (wrEvt2 & op[CPU_CTR_DIS]) cpu_ctr_ena <= 0;
	end
`endif

    CPU cpu (
        .clk        (cpu_clk),
        .rst        (rst),
        
        .par        (par),
        .ser        (ser),
        .mem_rd     (mem_rd),
        .mem_dout   (mem_dout),
        .boot_done  (boot_done),
        
        .tos        (tos),
        .op         (op),
        .rdBit      (rdBit),
        .rdBit2     (rdBit2),
        .rdReg      (rdReg),
        .rdReg2     (rdReg2),
        .wrReg      (wrReg),
        .wrReg2     (wrReg2),
        .wrEvt      (wrEvt),
        .wrEvt2     (wrEvt2)
        );


`ifdef DEF_GPS_CHANS
    GPS gps (
        .clk        (gps_clk),
        .adc_clk	(adc_clk),
        .host_srq   (host_srq),

        .I_data		(IF_SGN),
        .gps_rd 	(gps_rd),
        .gps_dout	(gps_dout),
        
        .ser		(ser[0]),        
        .tos		(tos),			// fixme: cpu_clk?
        .op			(op),        
        .rdBit      (rdBit),
        .rdReg      (rdReg),
        .wrReg      (wrReg),
        .wrEvt      (wrEvt)
        );
`else

	// if no GPS configured, still need to capture host_srq in the same way as GPS.
	assign ser[0] = srq_out;
	reg srq_noted, srq_out;
	
    always @ (posedge gps_clk)
    begin
        if (rdReg & op[GET_SRQ]) srq_noted <= host_srq;
        else				     srq_noted <= host_srq | srq_noted;
        if (rdReg & op[GET_SRQ]) srq_out <= srq_noted;
    end
`endif

endmodule
