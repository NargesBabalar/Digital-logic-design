`timescale 1ns/1ns
module registerQ(input [15:0] regin, input clk, rst, init1, ld,output reg [15:0] regout);
	always@(posedge clk, posedge rst) begin 
		if(rst)
			regout <= 16'b0;
		else
			if(init1)
				regout <= 16'b0000000100000000 ;
			else
				regout <= ld ? regin : regout;
	end
endmodule