`timescale 1ns/1ns
module myoc7input(input a, b, c, d, e, f, g, output w6, w7, w5);
       wire w0, w1, w2, w3, w4;
       myonenumber oc1(a, b, c, w0, w1);
       myonenumber oc2(d, e, f, w2, w3);
       myonenumber oc3(w0, w2, w4, w6, w7);
       myonenumber oc4(w1, w3, g, w4, w5);
endmodule
