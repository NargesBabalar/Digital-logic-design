`timescale 1ns/1ns
module myOcgate(input a, b, c, output y1, y0);
        wire e, f, g, h, i, j, k, l, m, n, o;
        and #(7, 5) A1(e, f, a), A2(g, b, c), A3(i, b, c), A4(j, c, ~b), A5(k, b, ~c), A6(m, ~b, ~c), A7(n, h, ~a), A8(o, l, a);
        or #(5, 3.5) O1(f, b, c), O2(y1, e, g), O3(h, j, k), O4(l, i, m), O5(y0, n, o);
endmodule
