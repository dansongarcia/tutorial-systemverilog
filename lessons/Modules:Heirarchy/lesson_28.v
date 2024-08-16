/*
	An adder-subtractor can be built from an adder by optionally negating one of the inputs, which is equivalent to
    inverting the input then adding 1. The net result is a circuit that can do two operations: (a + b + 0) and (a + ~b +
    1). See Wikipedia if you want a more detailed explanation of how this circuit works.\
    You are provided with a 16-bit adder module, which you need to instantiate twice:\
    module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );\
    Use a 32-bit wide XOR gate to invert the b input whenever sub is 1. (This can also be viewed as b[31:0] XORed with
    sub replicated 32 times. See replication operator.). Also connect the sub input to the carry-in of the adder.
 */

module top_module(
	input [31:0] a,
	input [31:0] b,
	input sub,
	output [31:0] sum
);
	reg [31:0] sub_xor_b;
	wire cout;
	assign sub_xor_b = b ^ {32{sub}};

	add16 inst1(a[15:0], sub_xor_b[15:0], sub, sum[15:0], cout);
	add16 inst2(a[31:16], sub_xor_b[31:16], cout, sum[31:16]);

endmodule
//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
