/*
    In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit
    numbers with carry-in and produces a carry-out and 16-bit sum. You must instantiate three of these to build the
    carry-select adder, using your own 16-bit 2-to-1 multiplexer.
*/
module top_module(
	input [31:0] a,
	input [31:0] b,
	output [31:0] sum
);
	wire [15:0] sel0, sel1;
	wire cout;
	add16 inst1(a[15:0],b[15:0], 0, sum[15:0], cout);
	add16 inst2(a[31:16],b[31:16], 0, sel0);
	add16 inst3(a[31:16],b[31:16], 1, sel1);
	always @(*) begin
		if (cout) begin
			sum[31:16] = sel1;
		end
		else begin
			sum[31:16] = sel0;
		end
	end
endmodule
//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );