module clk_div(input iclk,
			output  oclk);

reg [63:0]div_reg = 64'b1;
assign oclk = div_reg[63];
always @(posedge iclk)
begin
		div_reg <= {div_reg[62:1], div_reg[0], div_reg[63]};
end 
endmodule