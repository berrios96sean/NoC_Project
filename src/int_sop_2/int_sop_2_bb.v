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
endmodule

