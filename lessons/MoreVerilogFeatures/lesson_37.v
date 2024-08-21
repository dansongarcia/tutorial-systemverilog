/*
   Conditional ternary operator: Given four unsigned numbers, find the minimum. Unsigned numbers can be compared with
   standard comparison operators (a < b). Use the conditional operator to make two-way min circuits, then compose a
   few of them to create a 4-way min circuit. You'll probably want some wire vectors for the intermediate results.
*/

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    reg [7:0] ab, abc;

    assign ab = a <= b? a : b;
    assign abc = ab <= c? ab : c;
    assign min = abc <= d? abc : d;


    // assign intermediate_result1 = compare? true: false;

endmodule