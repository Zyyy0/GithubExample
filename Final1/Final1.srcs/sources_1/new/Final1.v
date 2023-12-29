`timescale 1ns / 1ps

module Final1(
		input [3:0] a,
		input [3:0] b,
		input rst, 
		input clk,
		output reg [4:0] result,
		output reg [1:0] cnt
	);
	
 	always@(posedge clk)begin
		if(rst)begin
			cnt <= 2'b0;
		end
		else begin
			cnt <= cnt + 1'b1;
		end
	end
	
	always@(*)begin
		case(cnt)
			2'b00 : result = a;
			2'b01 : result = b;
			2'b10 : result = a+b;
			2'b11 : result = a*b;
			default : result = 3'b000;
		endcase
	end  
endmodule
/* 
module cnt (
	input clk, rst,
	output reg [1:0] cnt
);

	always@(posedge clk)begin
		if(rst)begin
			cnt <= 2'b0;
		end
		else begin
			cnt <= cnt + 2'b1;
		end
	end
	
endmodule

module state (
	input clk ,rst,
	input [1:0] cnt,
	input [3:0] a, b,
	output reg [4:0] result
);
	
	always@(posedge clk) begin
		case(cnt)
			2'b00 : result = a;
			2'b01 : result = b;
			2'b10 : result = a+b;
			2'b11 : result = a*b;
		endcase
	end

endmodule */

