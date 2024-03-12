module axis_traffic_gen #(
    parameter DATA_WIDTH = 64 // mvm top uses 512/8 making this adjustable when called
)(
    input wire clk, 
    input wire rst, 
    output reg [DATA_WIDTH-1:0] axis_tdata, 
    output reg axis_tvalid,
    input wire axis_tready
);

// simple incrementor should adjust later 
always @(posedge clk) begin
    if (rst) begin
        axis_tdata  <= 0; 
        axis_tvalid <= 0;
    end else begin 
        if (axis_tready && axis_tvalid) begin 
            axis_tdata  <= axis_tdata + 1; 
        end else if (axis_tvalid == 0) begin
            axis_tdata  <= axis_tdata + 1; 
            axis_tvalid <= 1;
        end else if (axis_tready == 0) begin 
            axis_tdata  <= 0;
            axis_tvalid <= 0; 
        end
    end
end

endmodule