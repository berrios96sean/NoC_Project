// int_sop_2.v

// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module int_sop_2 (
		input  wire [18:0] ay,       //       ay.ay
		input  wire [18:0] by,       //       by.by
		input  wire [17:0] ax,       //       ax.ax
		input  wire [17:0] bx,       //       bx.bx
		input  wire [63:0] chainin,  //  chainin.chainin
		output wire [36:0] resulta,  //  resulta.resulta
		output wire [63:0] chainout, // chainout.chainout
		input  wire        clk0,     //     clk0.clk
		input  wire        clk1,     //     clk1.clk
		input  wire        clk2,     //     clk2.clk
		input  wire [2:0]  ena,      //      ena.ena
		input  wire        aclr0,    //    aclr0.reset
		input  wire        aclr1     //    aclr1.reset
	);

	int_sop_2_altera_c10gx_native_fixed_point_dsp_1910_6lgytvi c10gx_native_fixed_point_dsp_0 (
		.ay       (ay),       //   input,  width = 19,       ay.ay
		.by       (by),       //   input,  width = 19,       by.by
		.ax       (ax),       //   input,  width = 18,       ax.ax
		.bx       (bx),       //   input,  width = 18,       bx.bx
		.chainin  (chainin),  //   input,  width = 64,  chainin.chainin
		.resulta  (resulta),  //  output,  width = 37,  resulta.resulta
		.chainout (chainout), //  output,  width = 64, chainout.chainout
		.clk0     (clk0),     //   input,   width = 1,     clk0.clk
		.clk1     (clk1),     //   input,   width = 1,     clk1.clk
		.clk2     (clk2),     //   input,   width = 1,     clk2.clk
		.ena      (ena),      //   input,   width = 3,      ena.ena
		.aclr0    (aclr0),    //   input,   width = 1,    aclr0.reset
		.aclr1    (aclr1)     //   input,   width = 1,    aclr1.reset
	);

endmodule
