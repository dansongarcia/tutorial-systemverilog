// Create a module that implements an XNOR gate.
module top_module(
	input a,b,
	output out );
	// assign out = (a&b) | (!a&!b);
	assign out = !(a^b);
endmodule