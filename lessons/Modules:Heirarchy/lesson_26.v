/*
	In this exercise, you will create a circuit with two levels of hierarchy. Your top_module will instantiate two
    copies of add16 (provided), each of which will instantiate 16 copies of add1 (which you must write). Thus, you must
    write two modules: top_module and add1.
 */

module top_module (
input [31:0] a,
input [31:0] b,
output [31:0] sum
);//
	wire cout1;
	add16 inst1(a[15:0], b[15:0], 0, sum[15:0], cout1);
	add16 inst2(a[31:16], b[31:16], cout1, sum[31:16]);
endmodule

//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module add1 ( input a, input b, input cin,   output sum, output cout );
	wire [1:0] out;
	assign out = a + b + cin;
	assign sum = out[0];
	assign cout = out[1];
// Full adder module here

endmodule


