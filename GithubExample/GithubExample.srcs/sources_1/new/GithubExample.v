
`timescale 1ns / 1ps

module GithubExample(q, clk, reset);
	output [3:0] q;
	input clk ,reset;
	T_FF t0 (q[0], clk, reset);
	T_FF t1 (q[1], q[0], reset);
	T_FF t2 (q[2], q[1], reset);
	T_FF t3 (q[3], q[2], reset);
endmodule

module T_FF(q, clk, reset);
	output q;
	input  clk, reset;
	wire d;
	D_FF dff0(q, d, clk, reset);
	not n1(d, q);
endmodule

module D_FF(q, d, clk, reset);
	output q;
	input d, clk, reset;
	reg q;
	always@(posedge clk or posedge reset)begin
		if(reset)
			q <= 1'b0;
		else 
			q <= d;
	end
endmodule
