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