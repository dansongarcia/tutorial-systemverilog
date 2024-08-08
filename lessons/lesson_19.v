/*
	Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output
    vector. The output should be 1 if the two bits being compared are equal.
 */
module top_module(
	input a, b, c,d, e,
	output [24:0] out
);
	// assign out[24:20] = {1'b1, a~^b, a~^c, a~^d, a~^e};
	// assign out[19:15] = {a~^b, 1'b1, b~^c, b~^d, b~^e};
	// assign out[14:10] = {a~^c,b~^c, 1'b1,c~^d,c~^e};
	// assign out[9:5] = {a~^d,b~^d, c~^d,1'b1,d~^e};
	// assign out[4:0] = {a~^e,b~^e, c~^e,d~^e,1'b1};
	assign out = {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ~^ {5{a,b,c,d,e}};
endmodule