`timescale 1ns/1ns
module SRlatchtransistor1(input S,R,n, output Q,Qb);
       wire a, b, c;
       supply1 Vdd;
       supply0 Gnd;
       pmos #(6) T1(Q,Vdd,S), T2(Q,Vdd,n), T3(Q,Vdd,Qb), T7(Qb, Vdd, Qb), T8(Qb, Vdd, R);
       nmos #(4) T4(a,S,Q), T5(b,a,n), T6(Gnd,b,Qb), T9(c,Qb,Qb), T10(Gnd, c, R);
endmodule
