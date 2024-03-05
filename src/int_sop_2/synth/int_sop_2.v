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
		output wire [63:0] chainout  // chainout.chainout
	);

	int_sop_2_altera_c10gx_native_fixed_point_dsp_1910_a67kikq c10gx_native_fixed_point_dsp_0 (
		.ay       (ay),       //   input,  width = 19,       ay.ay
		.by       (by),       //   input,  width = 19,       by.by
		.ax       (ax),       //   input,  width = 18,       ax.ax
		.bx       (bx),       //   input,  width = 18,       bx.bx
		.chainin  (chainin),  //   input,  width = 64,  chainin.chainin
		.resulta  (resulta),  //  output,  width = 37,  resulta.resulta
		.chainout (chainout)  //  output,  width = 64, chainout.chainout
	);

endmodule
