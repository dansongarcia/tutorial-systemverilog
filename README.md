# tutorial-systemverilog

### Lessons

1. Build a circuit with no inputs and one output. That output should always drive 1 (or logic high).
2. Build a circuit with no inputs and one output that outputs a constant 0.
3. Create a module with one input and one output that behaves like a wire.
4. Create a module with 3 inputs and 4 outputs that behaves like wires that makes these connections:\
   a -> w\
   b -> x\
   b -> y\
   c -> z
5. Create a module that implements a NOT gate.
6. Create a module that implements an AND gate.
7. Create a module that implements a NOR gate.
8. Create a module that implements an XNOR gate.
9. Implement the following circuit. Create two intermediate wires (named anything you want) to connect the AND and OR
   gates together. Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to
   declare a third wire here. Notice how wires are driven by exactly one source (output of a gate), but can feed
   multiple inputs. ![image](img/Wiredecl2.png)
10. Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use
    an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as
    intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice,
    try it both ways. ![image](img/7458.png)
11. Build a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit
    outputs. Connect output o0 to the input vector's position 0, o1 to position 1, etc. In a diagram, a tick mark with a
    number next to it indicates the width of the vector (or "bus"), rather than drawing a separate line for each bit in
    the vector. ![image](img/Vector0.png)
12. Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8]
    bytes.
13. A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.). Build a circuit that will reverse
    the byte ordering of the 4-byte word.
    AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa
14. Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors, the logical-OR of the two
    vectors, and the inverse (NOT) of both vectors. Place the inverse of b in the upper half of out_not (i.e.,
    bits [5:3]), and the inverse of a in the lower half. ![image](img/Vectorgates.png)
15. Build a combinational circuit with four inputs, in[3:0].\
    There are 3 outputs:
    * out_and: output of a 4-input AND gate.
    * oout_or: output of a 4-input OR gate.
    * oout_xor: output of a 4-input XOR gate.
16. Given several input vectors, concatenate them together then split them up into several output vectors. There are six
    5-bit input vectors: a, b, c, d, e, and f, for a total of 30 bits of input. There are four 8-bit output vectors: w,
    x, y, and z, for 32 bits of output. The output should be a concatenation of the input vectors followed by two 1
    bits.
17. Given an 8-bit input vector [7:0], reverse its bit ordering.
18. One common place to see a replication operator is when sign-extending a smaller number to a larger one, while
    preserving its signed value. This is done by replicating the sign bit (the most significant bit) of the smaller
    number to the left. For example, sign-extending 4'b0101 (5) to 8 bits results in 8'b00000101 (5), while
    sign-extending 4'b1101 (-3) to 8 bits results in 8'b11111101 (-3). \
    Build a circuit that sign-extends an 8-bit number to 32 bits. This requires a concatenation of 24 copies of the sign
    bit (i.e., replicate bit[7] 24 times) followed by the 8-bit number itself.
19. Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output
    vector. The output should be 1 if the two bits being compared are equal. ![image](img/Vector5.png)\
    As the diagram shows, this can be done more easily using the replication and concatenation operators. 