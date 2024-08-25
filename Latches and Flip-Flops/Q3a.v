`timescale 1ns/1ns
module DFlipFlop3 (input D, clk, clr, pre, output Q,Qb);
	wire a,ab,c,cb;
        SRlatch3inputs SR1(pre, clk, cb, clr, a, ab),SR2(ab, D, clk, clr, c, cb), SR3(pre, c, ab, clr, Q, Qb);
endmodule   
