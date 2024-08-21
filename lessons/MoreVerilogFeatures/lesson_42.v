/*
   Instance Array: Create a 100-bit binary ripple-carry adder by instantiating 100 full adders. The adder adds two
   100-bit numbers and a carry-in to produce a 100-bit sum and carry out. To encourage you to actually instantiate full
   adders, also output the carry-out from each full adder in the ripple-carry adder. cout[99] is the final carry-out
   from the last full adder, and is the carry-out you usually see.
*/

module fadd(
    input a, b, cin,
    output cout, sum );

    assign cout = (a & b) | (cin & (a ^ b));
    assign sum = (cin & (a ~^ b)) | (~cin &(a^b));

endmodule

module top_module(
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );


    fadd inst1 (a[0],b[0],cin,cout[0],sum[0]);
    fadd inst [99:1] (a[99:1],b[99:1], cout[98:0],cout[99:1],sum[99:1] );
endmodule
