/*
   Given a 100-bit input vector [99:0], reverse its bit ordering.
*/

module top_module (
    input  [99:0] in,
    output [99:0] out
);
    int i, j;
    always @(*) begin
        j = $size(out) - 1;
        for (i = 0; i < $size(in); i++) begin
            out[j] = in[i];
            j--;
        end
    end
endmodule
