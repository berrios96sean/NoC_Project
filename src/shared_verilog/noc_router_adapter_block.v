module noc_router_adapter_block #(
    parameter noc_dw = 512, //NoC Data Width
    parameter byte_dw = 8,
    parameter user_dw = 32 
    )(
    input wire                            clk,
    input wire                            reset,
    input wire                            master_tready,
    output reg                            master_tdata,  /* synthesis preserve */
    output reg [          noc_dw - 1 : 0] master_tvalid, /* synthesis preserve */
    output reg [noc_dw / byte_dw - 1 : 0] master_tstrb,  /* synthesis preserve */
    output reg [noc_dw / byte_dw - 1 : 0] master_tkeep,  /* synthesis preserve */
    output reg [         byte_dw - 1 : 0] master_tid,    /* synthesis preserve */
    output reg [         byte_dw - 1 : 0] master_tdest,  /* synthesis preserve */
    output reg [         user_dw - 1 : 0] master_tuser,  /* synthesis preserve */
    output reg                            master_tlast,  /* synthesis preserve */
    input wire                            slave_tvalid,
    input wire [          noc_dw - 1 : 0] slave_tdata,
    input wire [noc_dw / byte_dw - 1 : 0] slave_tstrb,
    input wire [noc_dw / byte_dw - 1 : 0] slave_tkeep,
    input wire [         byte_dw - 1 : 0] slave_tid,
    input wire [         byte_dw - 1 : 0] slave_tdest,
    input wire [         user_dw - 1 : 0] slave_tuser,
    input wire                            slave_tlast,
    output reg                            slave_tready   /* synthesis preserve */
);



/*****************INPUT/OUTPUT Definition********************/


// registering all the out put ports so they are preserved in the vqm output //

wire temp_clk; /* synthesis keep */

always @(posedge temp_clk)
begin
	master_tvalid	<= 0;
	master_tdata 	<= 0;
	master_tstrb 	<= 0;
	master_tkeep 	<= 0;
	master_tid		<= 0;
	master_tdest	<= 0;
	master_tuser	<= 0;
	master_tlast	<= 0;
	slave_tready	<= 0; 
end
endmodule 
