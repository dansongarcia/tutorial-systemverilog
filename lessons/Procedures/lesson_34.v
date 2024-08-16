// Build a 4-bit priority encoder. For this problem, if none of the input bits are high (i.e., input is zero), output
//   zero. Note that a 4-bit number has 16 possible combinations.
// synthesis verilog_input_version verilog_2001
module top_module (
	input [3:0] in,
	output reg [1:0] pos
);
	always @(*) begin
		if (in & 4'h1) begin
			pos = 2'b00;
		end
		else if (in & 4'h2) begin
			pos = 2'b01;
		end
		else if (in & 4'h4) begin
			pos = 2'b10;
		end
		else if (in & 4'h8) begin
			pos = 2'b11;
		end
		else begin
			pos = 0;
		end
	end
endmodule