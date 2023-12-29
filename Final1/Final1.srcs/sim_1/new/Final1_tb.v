`timescale 1ns / 1ps
/*Testbench*/
module Final1_tb;
	
	reg [3:0] a, b;
	reg rst, clk;
	wire [4:0] result;
	wire [1:0] cnt;
	
	Final1 UUT (
		.clk(clk),
		.rst(rst),
		.a(a),
		.b(b),
		.result(result),
		.cnt(cnt)
	);
	initial begin
		clk = 1'b0;
	    a = 3'd0; b = 3'd0;
		rst = 1'd0;
	end
	initial begin
		#1 rst = 1'd1;
		#6 rst = 1'd0;
		#10 a = 3'd5; b = 3'd2;
		#30 rst = 1'd1;
		#9	rst = 1'd0;
		
	end
	always #5 clk = ~clk;
endmodule
