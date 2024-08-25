`timescale 1ns/1ns
module myassign7input(input a, b, c, d, e, f, g, output w6, w7, w5);
       wire w0, w1, w2, w3, w4;
       myassign oc11(a, b, c, w0, w1);
       myassign oc22(d, e, f, w2, w3);
       myassign oc33(w0, w2, w4, w6, w7);
       myassign oc44(w1, w3, g, w4, w5);
endmodule
