`timescale 1ns / 1ps

module mvm_top_tb;

// Inputs
reg clk;
reg rst;
reg rx_tvalid;
reg [511:0] rx_tdata;
reg [63:0] rx_tstrb;
reg [63:0] rx_tkeep;
reg [7:0] rx_tid;
reg [7:0] rx_tdest;
reg [31:0] rx_tuser;
reg rx_tlast;
reg tx_tready;

// Outputs
wire rx_tready;
wire tx_tvalid;
wire [511:0] tx_tdata;
wire [63:0] tx_tstrb;
wire [63:0] tx_tkeep;
wire [7:0] tx_tid;
wire [7:0] tx_tdest;
wire [31:0] tx_tuser;
wire tx_tlast;

reg [511:0] test_vectors[0:99];
reg [31:0]  store_vectors[0:99];
reg [255:0] line;
integer i;
integer file;
integer scan; 

mvm uut (
    .clk(clk), 
    .rst(rst), 
    .rx_tvalid(rx_tvalid), 
    .rx_tdata(rx_tdata), 
    .rx_tstrb(rx_tstrb), 
    .rx_tkeep(rx_tkeep), 
    .rx_tid(rx_tid), 
    .rx_tdest(rx_tdest), 
    .rx_tuser(rx_tuser), 
    .rx_tlast(rx_tlast), 
    .rx_tready(rx_tready), 
    .tx_tvalid(tx_tvalid), 
    .tx_tdata(tx_tdata), 
    .tx_tstrb(tx_tstrb), 
    .tx_tkeep(tx_tkeep), 
    .tx_tid(tx_tid), 
    .tx_tdest(tx_tdest), 
    .tx_tuser(tx_tuser), 
    .tx_tlast(tx_tlast), 
    .tx_tready(tx_tready)
);

initial begin
    // Initialize Inputs
    clk = 0;
    rst = 1;
    rx_tvalid = 0;
    rx_tdata = 0;
    rx_tstrb = 0;
    rx_tkeep = 0;
    rx_tid = 0;
    rx_tdest = 0;
    rx_tuser = 0;
    rx_tlast = 0;
    tx_tready = 0;
    #100;
    
    rst = 0; // Release reset

    file = $fopen("mvm_vectors.in", "r");
    if (file == 0) begin
        $display("Failed to open vector file.");
        $finish;
    end

    // TO-DO: Use Vector file to store and send data to the MVM to 
    // drive the calculations. 
    while (!$feof(file)) begin
            $fgets(line, file);
            $display("data = %s", line);
    end

    // Close the file
    $fclose(file);


end

always #5 clk = ~clk; // Generate clock with period of 10 ns

endmodule
