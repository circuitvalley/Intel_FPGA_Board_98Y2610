 module pin_uart_top (
 
output wire pin_L4,
output wire pin_M4,
output wire pin_N4,
output wire pin_M6,
output wire pin_N6,
output wire pin_L5,
output wire pin_L7,
output wire pin_N8,
output wire pin_N9,
output wire pin_K8,
output wire pin_K9,
output wire pin_L9,
output wire pin_M9,
output wire pin_N10,
output wire pin_N11,
output wire pin_M11,
output wire pin_N12,
output wire pin_K10,
output wire pin_L11,
output wire pin_N13,
output wire pin_M13,
output wire pin_K12,
output wire pin_K11,
output wire pin_L13,
output wire pin_L12,
output wire pin_H12,
output wire pin_H10,
output wire pin_J13,
output wire pin_K13,
output wire pin_G10,
output wire pin_G9,
output wire pin_F11,
output wire pin_F10,
output wire pin_E13,
output wire pin_F9,
output wire pin_D10,
output wire pin_E10,
output wire pin_D12,
output wire pin_D11,
output wire pin_C11,
output wire pin_C12,
output wire pin_C13,
output wire pin_D13,
output wire pin_A13,
output wire pin_B13,
output wire pin_B11,
output wire pin_B10,
output wire pin_B8,
output wire pin_C8,
output wire pin_A11,
output wire pin_A12,
output wire pin_C6,
output wire pin_B6,
output wire pin_A7,
output wire pin_A8,
output wire pin_A6

 
 );
 wire iclk;
 wire clk;
 int_osc u0 (
		.oscena (1'b1), // oscena.oscena
		.clkout (iclk)  // clkout.clk
	);
clk_div(.iclk(iclk), .oclk(clk));
	
pin_uart #(.NAME("L4"))  pin_uart_ins_L4(.clk(clk), .rst(1'b0), .out(pin_L4));
pin_uart #(.NAME("M4"))  pin_uart_ins_M4(.clk(clk), .rst(1'b0), .out(pin_M4));
pin_uart #(.NAME("N4"))  pin_uart_ins_N4(.clk(clk), .rst(1'b0), .out(pin_N4));
pin_uart #(.NAME("M6"))  pin_uart_ins_M6(.clk(clk), .rst(1'b0), .out(pin_M6));
pin_uart #(.NAME("N6"))  pin_uart_ins_N6(.clk(clk), .rst(1'b0), .out(pin_N6));
pin_uart #(.NAME("L5"))  pin_uart_ins_L5(.clk(clk), .rst(1'b0), .out(pin_L5));
pin_uart #(.NAME("L7"))  pin_uart_ins_L7(.clk(clk), .rst(1'b0), .out(pin_L7));
pin_uart #(.NAME("N8"))  pin_uart_ins_N8(.clk(clk), .rst(1'b0), .out(pin_N8));
pin_uart #(.NAME("N9"))  pin_uart_ins_N9(.clk(clk), .rst(1'b0), .out(pin_N9));
pin_uart #(.NAME("K8"))  pin_uart_ins_K8(.clk(clk), .rst(1'b0), .out(pin_K8));
pin_uart #(.NAME("K9"))  pin_uart_ins_K9(.clk(clk), .rst(1'b0), .out(pin_K9));
pin_uart #(.NAME("L9"))  pin_uart_ins_L9(.clk(clk), .rst(1'b0), .out(pin_L9));
pin_uart #(.NAME("M9"))  pin_uart_ins_M9(.clk(clk), .rst(1'b0), .out(pin_M9));
pin_uart #(.NAME("N10")) pin_uart_ins_N10(.clk(clk), .rst(1'b0), .out(pin_N10));
pin_uart #(.NAME("N11")) pin_uart_ins_N11(.clk(clk), .rst(1'b0), .out(pin_N11));
pin_uart #(.NAME("M11")) pin_uart_ins_M11(.clk(clk), .rst(1'b0), .out(pin_M11));
pin_uart #(.NAME("N12")) pin_uart_ins_N12(.clk(clk), .rst(1'b0), .out(pin_N12));
pin_uart #(.NAME("K10")) pin_uart_ins_K10(.clk(clk), .rst(1'b0), .out(pin_K10));
pin_uart #(.NAME("L11")) pin_uart_ins_L11(.clk(clk), .rst(1'b0), .out(pin_L11));
pin_uart #(.NAME("N13")) pin_uart_ins_N13(.clk(clk), .rst(1'b0), .out(pin_N13));
pin_uart #(.NAME("M13")) pin_uart_ins_M13(.clk(clk), .rst(1'b0), .out(pin_M13));
pin_uart #(.NAME("K12")) pin_uart_ins_K12(.clk(clk), .rst(1'b0), .out(pin_K12));
pin_uart #(.NAME("K11")) pin_uart_ins_K11(.clk(clk), .rst(1'b0), .out(pin_K11));
pin_uart #(.NAME("L13")) pin_uart_ins_L13(.clk(clk), .rst(1'b0), .out(pin_L13));
pin_uart #(.NAME("L12")) pin_uart_ins_L12(.clk(clk), .rst(1'b0), .out(pin_L12));
pin_uart #(.NAME("H12")) pin_uart_ins_H12(.clk(clk), .rst(1'b0), .out(pin_H12));
pin_uart #(.NAME("H10")) pin_uart_ins_H10(.clk(clk), .rst(1'b0), .out(pin_H10));
pin_uart #(.NAME("J13")) pin_uart_ins_J13(.clk(clk), .rst(1'b0), .out(pin_J13));
pin_uart #(.NAME("K13")) pin_uart_ins_K13(.clk(clk), .rst(1'b0), .out(pin_K13));
pin_uart #(.NAME("G10")) pin_uart_ins_G10(.clk(clk), .rst(1'b0), .out(pin_G10));
pin_uart #(.NAME("G9"))  pin_uart_ins_G9(.clk(clk), .rst(1'b0), .out( pin_G9));
pin_uart #(.NAME("F11")) pin_uart_ins_F11(.clk(clk), .rst(1'b0), .out(pin_F11));
pin_uart #(.NAME("F10")) pin_uart_ins_F10(.clk(clk), .rst(1'b0), .out(pin_F10));
pin_uart #(.NAME("E13")) pin_uart_ins_E13(.clk(clk), .rst(1'b0), .out(pin_E13));
pin_uart #(.NAME("F9"))  pin_uart_ins_F9(.clk(clk), .rst(1'b0), .out( pin_F9));
pin_uart #(.NAME("D10")) pin_uart_ins_D10(.clk(clk), .rst(1'b0), .out(pin_D10));
pin_uart #(.NAME("E10")) pin_uart_ins_E10(.clk(clk), .rst(1'b0), .out(pin_E10));
pin_uart #(.NAME("D12")) pin_uart_ins_D12(.clk(clk), .rst(1'b0), .out(pin_D12));
pin_uart #(.NAME("D11")) pin_uart_ins_D11(.clk(clk), .rst(1'b0), .out(pin_D11));
pin_uart #(.NAME("C11")) pin_uart_ins_C11(.clk(clk), .rst(1'b0), .out(pin_C11));
pin_uart #(.NAME("C12")) pin_uart_ins_C12(.clk(clk), .rst(1'b0), .out(pin_C12));
pin_uart #(.NAME("C13")) pin_uart_ins_C13(.clk(clk), .rst(1'b0), .out(pin_C13));
pin_uart #(.NAME("D13")) pin_uart_ins_D13(.clk(clk), .rst(1'b0), .out(pin_D13));
pin_uart #(.NAME("A13")) pin_uart_ins_A13(.clk(clk), .rst(1'b0), .out(pin_A13));
pin_uart #(.NAME("B13")) pin_uart_ins_B13(.clk(clk), .rst(1'b0), .out(pin_B13));
pin_uart #(.NAME("B11")) pin_uart_ins_B11(.clk(clk), .rst(1'b0), .out(pin_B11));
pin_uart #(.NAME("B10")) pin_uart_ins_B10(.clk(clk), .rst(1'b0), .out(pin_B10));
pin_uart #(.NAME("B8"))  pin_uart_ins_B8(.clk(clk), .rst(1'b0), .out( pin_B8));
pin_uart #(.NAME("C8"))  pin_uart_ins_C8(.clk(clk), .rst(1'b0), .out( pin_C8));
pin_uart #(.NAME("A11")) pin_uart_ins_A11(.clk(clk), .rst(1'b0), .out(pin_A11));
pin_uart #(.NAME("A12")) pin_uart_ins_A12(.clk(clk), .rst(1'b0), .out(pin_A12));
pin_uart #(.NAME("C6"))  pin_uart_ins_C6(.clk(clk), .rst(1'b0), .out( pin_C6));
pin_uart #(.NAME("B6"))  pin_uart_ins_B6(.clk(clk), .rst(1'b0), .out( pin_B6));
pin_uart #(.NAME("A7"))  pin_uart_ins_A7(.clk(clk), .rst(1'b0), .out( pin_A7));
pin_uart #(.NAME("A8"))  pin_uart_ins_A8(.clk(clk), .rst(1'b0), .out( pin_A8));
pin_uart #(.NAME("A6"))  pin_uart_ins_A6(.clk(clk), .rst(1'b0), .out( pin_A6));


 endmodule
 