/*
Build a combinational circuit with four inputs, in[3:0].\
    There are 3 outputs:
    * out_and: output of a 4-input AND gate.
    * oout_or: output of a 4-input OR gate.
    * oout_xor: output of a 4-input XOR gate.
 */
module top_module (
	input [3:0] in,
	output out_and, out_or, out_xor
);

	assign out_and = (in[0] & in[1]) & (in[2] & in[3]);
	assign out_or = in[3:2] || in[1:0];
	assign out_xor = (in[0] ^ in[1]) ^ (in[2] ^ in[3]);
endmodule