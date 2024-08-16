// Create a module that implements a NOR gate.
module top_module(
	input a, b,
	output out);
	assign out = !(a|b);
endmodule