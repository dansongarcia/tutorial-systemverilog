/*
Implement the following circuit. Create two intermediate wires (named anything you want) to connect the AND and OR
gates together. Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to
declare a third wire here. Notice how wires are driven by exactly one source (output of a gate), but can feed
multiple inputs.
*/
`default_nettype none
module top_module(
	input a,b,c,d,
	output out, out_n
);
	wire and_ab, and_cd, or_out;
	assign out = or_out;
	assign out_n = !or_out;
	assign or_out = and_ab | and_cd;
	assign and_ab = a & b;
	assign and_cd = c & d;
endmodule
