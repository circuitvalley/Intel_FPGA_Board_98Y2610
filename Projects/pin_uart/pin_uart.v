module pin_uart #(
    parameter NAME = "AB12"
)
(
    input wire clk,
    input wire rst,
    output wire out
);

reg [63:0] data;

initial begin
    data = {64{1'b1}};
    data[0] = 1'b0;
    data[8:1] = (NAME >> 24) & 8'hff;
    data[9] = 1'b1;
    data[10] = 1'b0;
    data[18:11] = (NAME >> 16) & 8'hff;
    data[19] = 1'b1;
    data[20] = 1'b0;
    data[28:21] = (NAME >> 8) & 8'hff;
    data[29] = 1'b1;
    data[30] = 1'b0;
    data[38:31] = (NAME >> 0) & 8'hff;
    data[39] = 1'b1;
	 
end

reg out_reg = 1'b1;
reg [5:0] ptr_reg = 0;

assign out = out_reg;

always @(posedge clk) begin
    if (rst) begin
        out_reg <= 1'b1;
        ptr_reg <= 0;
    end
	 else 
	 begin
        out_reg <= data[ptr_reg];
        if (!(&ptr_reg)) begin
            ptr_reg <= ptr_reg + 1;
		  end
		  else 
		  begin
				ptr_reg <= 0;
        end
	 end
end

endmodule
