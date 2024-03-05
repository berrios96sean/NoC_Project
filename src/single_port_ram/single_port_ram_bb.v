module single_port_ram (
		input  wire [31:0] data,    //    data.datain
		output wire [31:0] q,       //       q.dataout
		input  wire [8:0]  address, // address.address
		input  wire        wren,    //    wren.wren
		input  wire        clock    //   clock.clk
	);
endmodule

