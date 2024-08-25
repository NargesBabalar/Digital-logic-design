`timescale 1ns/1ns
module myoc15input(input a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, output y0, y1, y2, y3);
       wire w0, w1, w2, w3, w4, w5, w6, w7;
       myoc7input oc111(a, b, c, d, e, f, g, w0, w1, w2);
       myoc7input oc222(h, i, j, k, l, m, n, w3, w4, w5);
       myonenumber oc333(w2, w5, o, w7, y0);
       myonenumber oc444(w1, w4, w7, w6, y1);
       myonenumber oc555(w0, w3, w6, y3, y2);
       
endmodule
