/*
Build a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit
outputs. Connect output o0 to the input vector's position 0, o1 to position 1, etc.
 */

module top_module(
	input wire [2:0] vec,
	output wire [2:0] outv,
	output wire o2, o1, o0
);
	assign outv = vec;
	assign o2 = vec[2];
	assign o1 = vec[1];
	assign o0 = vec[0];
// This is ok too: assign {o2, o1, o0} = vec;
endmodule