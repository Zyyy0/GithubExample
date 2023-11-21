
`timescale 1ns / 1ps

module GithubExample_tb;
	reg clk, reset;
	wire [3:0] q;
	GithubExample UUT(
		.clk(clk),
		.reset(reset),
		.q(q)
		);
	
	initial begin
		reset = 1;
		clk = 0;
		#10 reset = 0;
		#200 $finish;
	end
	always #5 clk = ~clk;
endmodule
