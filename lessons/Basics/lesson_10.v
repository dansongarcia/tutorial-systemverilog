/*
Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use
    an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as
    intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice,
    try it both ways.
 */
module top_module(
	input p1a, p1b, p1c, p1d, p1e, p1f,
	input p2a, p2b, p2c, p2d,
	output p1y, p2y
);
	// declare 4-wires
	// wire p2_ab, p2_cd;
	// wire p1_abc, p1_def;
	//
	// assign p2y = p2_ab | p2_cd;
	// assign p2_ab = p2a & p2b;
	// assign p2_cd = p2c & p2d;
	//
	// assign p1y = p1_abc | p1_def;
	// assign p1_abc = p1a & p1b & p1c;
	// assign p1_def = p1d & p1e & p1f;
	//
	assign p2y = (p2a & p2b) | (p2c & p2d);
	assign p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f);
endmodule