`timescale 1ns/1ns
module myonenumber(input a, b, c, output y1, y0);
  wire d, e, f, g, h, i, j, k, l, m, n, o, p;
  supply1 Vdd;
  supply0 Gnd;
  pmos #(5,6,7) T1(d, Vdd, ~a), T2(y1, d, ~b), T3(y1, d, ~c), T4(e, Vdd, ~c), T5(y1, e, ~b);
  pmos #(5,6,7) T11(h, Vdd, a), T12(i, Vdd, ~a), T13(j, h, b), T14(y0, j, ~c), T15(k, h, ~b), T16(y0, k, c), T17(l, i, b), T18(y0, l, c), T19(m, i, ~b), T20(y0, m, ~c);
  nmos #(3,4,5) T6(y1, f, ~b), T7(y1, f, ~c), T8(f, Gnd, ~a), T9(f, g, ~c), T10(g, Gnd, ~b);
  nmos #(3,4,5) T21(y0, n, ~c), T22(y0, n, ~b), T23(y0, o, ~a), T24(n, o, c), T25(n, o, b), T26(o, Gnd, a), T27(o, p, b), T28(o, p, ~c), T29(p, Gnd, c), T30(p, Gnd, ~b);
endmodule
