// Fix the bugs so that you will shut off the computer only if it's really overheated, and stop driving if you've
//   arrived at your destination or you need to refuel.
// synthesis verilog_input_version verilog_2001
module top_module (
	input      cpu_overheated,
	output reg shut_off_computer,
	input      arrived,
	input      gas_tank_empty,
	output reg keep_driving
); //

	always @(*) begin
		if (cpu_overheated)
			shut_off_computer = 1;
		else
			shut_off_computer = 0;
	end

	always @(*) begin
		keep_driving = ~gas_tank_empty && ~arrived;
	end

endmodule