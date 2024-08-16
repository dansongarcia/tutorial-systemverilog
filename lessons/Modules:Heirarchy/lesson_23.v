/*
	You are given a module my_dff with two inputs and one output (that implements a D flip-flop). Instantiate three of
    them, then chain them together to make a shift register of length 3. The clk port needs to be connected to all
    instances. \
    Note that to make the internal connections, you will need to declare some wires. Be careful about naming your wires
    and module instances: the names must be unique.
   	module my_dff ( input clk, input d, output q );

 */
module top_module ( input clk, input d, output q );
	wire dff1, dff2;
	my_dff inst1(.clk(clk), .d(d), .q(dff1));
	my_dff inst2(.clk(clk), .d(dff1), .q(dff2));
	my_dff inst3(.clk(clk), .d(dff2), .q(q));
endmodule
