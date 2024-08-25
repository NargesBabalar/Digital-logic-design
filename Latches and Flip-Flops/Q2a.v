`timescale 1ns/1ns
module DFlipFlop(input D, clk, output Q, Qb);
       wire a, ab, c, cb;
       SRlatch1 SR1(cb,clk, 1, a, ab), SR2(ab, D, clk, c, cb), SR3(ab, c, 1, Q, Qb);
endmodule