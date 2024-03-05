`timescale 1ns / 1ps

module mvm1_tb;

parameter DATA_WIDTH = 64;

// Testbench Signals
reg clk;
reg reset;
reg [DATA_WIDTH-1:0] dispatcher0_ififo_wdata;
reg dispatcher0_ififo_wen;
reg [DATA_WIDTH-1:0] dispatcher1_ififo_wdata;
reg dispatcher1_ififo_wen;
reg [DATA_WIDTH-1:0] dispatcher2_ififo_wdata;
reg dispatcher2_ififo_wen;
reg [DATA_WIDTH-1:0] dispatcher3_ififo_wdata;
reg dispatcher3_ififo_wen;

wire collector_ofifo_rdata; 
reg collector_ofifo_ren;
wire dispatcher0_ififo_rdy, dispatcher1_ififo_rdy, dispatcher2_ififo_rdy, dispatcher3_ififo_rdy;
wire collector_ofifo_rdy;

// Instance of traffic generators 
axis_traffic_gen #(.DATA_WIDTH(DATA_WIDTH)) dispatcher0_gen (
    .clk(clk),
    .reset(reset),
    .tdata(dispatcher0_ififo_wdata),
    .tvalid(dispatcher0_ififo_wen),
    .tready(dispatcher0_ififo_rdy) 
);

axis_traffic_gen #(.DATA_WIDTH(DATA_WIDTH)) dispatcher1_gen (
    .clk(clk),
    .reset(reset),
    .tdata(dispatcher1_ififo_wdata),
    .tvalid(dispatcher1_ififo_wen),
    .tready(dispatcher1_ififo_rdy) 
);

axis_traffic_gen #(.DATA_WIDTH(DATA_WIDTH)) dispatcher2_gen (
    .clk(clk),
    .reset(reset),
    .tdata(dispatcher2_ififo_wdata),
    .tvalid(dispatcher2_ififo_wen),
    .tready(dispatcher2_ififo_rdy) 
);

axis_traffic_gen #(.DATA_WIDTH(DATA_WIDTH)) dispatcher3_gen (
    .clk(clk),
    .reset(reset),
    .tdata(dispatcher3_ififo_wdata),
    .tvalid(dispatcher3_ififo_wen),
    .tready(dispatcher3_ififo_rdy) 
);

// Instance of the mlp_1 module
mlp_1 DUT (
    .clk(clk),
    .reset(reset),
    .dispatcher0_ififo_wdata(dispatcher0_ififo_wdata),
    .dispatcher0_ififo_wen(dispatcher0_ififo_wen),
    .dispatcher1_ififo_wdata(dispatcher0_ififo_wdata),
    .dispatcher1_ififo_wen(dispatcher0_ififo_wen),
    .dispatcher2_ififo_wdata(dispatcher0_ififo_wdata),
    .dispatcher2_ififo_wen(dispatcher0_ififo_wen),
    .dispatcher3_ififo_wdata(dispatcher0_ififo_wdata),
    .dispatcher3_ififo_wen(dispatcher0_ififo_wen),
    .collector_ofifo_rdata(collector_ofifo_rdata),
    .collector_ofifo_ren(collector_ofifo_ren),
    .dispatcher0_ififo_rdy(dispatcher0_ififo_rdy),
    .dispatcher1_ififo_rdy(dispatcher1_ififo_rdy),
    .dispatcher2_ififo_rdy(dispatcher2_ififo_rdy),
    .dispatcher3_ififo_rdy(dispatcher3_ififo_rdy),
    .collector_ofifo_rdy(collector_ofifo_rdy)
);

initial begin
    // Initialize Inputs
    clk = 0;
    reset = 1;
    dispatcher0_ififo_wdata = 0;
    dispatcher0_ififo_wen = 0;
    dispatcher1_ififo_wdata = 0;
    dispatcher1_ififo_wen = 0;
    dispatcher2_ififo_wdata = 0;
    dispatcher2_ififo_wen = 0;
    dispatcher3_ififo_wdata = 0;
    dispatcher3_ififo_wen = 0;
    collector_ofifo_ren = 0; 

    // clear reset 
    #100; 
    reset = 0;


end

// Clock generation
always #5 clk = ~clk; // Generate a clock with a period of 10ns

always @(posedge clk) begin
    if (reset) begin
        collector_ofifo_ren <= 0;
    end else begin
        collector_ofifo_ren <= collector_ofifo_rdy;
    end
end

endmodule
