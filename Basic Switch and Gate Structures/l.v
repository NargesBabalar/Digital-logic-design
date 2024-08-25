`timescale 1ns/1ns
module Testbench6();
    reg aa=0,bb=0,cc=0,dd=0,ee=0,ff=0,gg=0, hh=0, ii=0, jj=0, kk=0, ll=0, mm=0, nn=0, oo=0;
    wire yy0, yy1, yy2, yy3;
    myoc15input Oc111(aa,bb,cc,dd,ee,ff,gg,hh, ii, jj, kk, ll, mm, nn, oo,yy0, yy1, yy2, yy3);
    initial begin
            #200 aa = 1;
            #200 bb = 1;
            #200 cc = 1;
            #200 dd = 1;
            #200 ee = 1;
            #200 ff = 1;
            #200 gg = 1;
            #200 hh = 1;
            #200 ii = 1;
            #200 jj = 1;
            #200 kk = 1;
            #200 ll = 1;
            #200 mm = 1;
            #200 nn = 1;
            #200 oo = 1;
            #200 aa = 0;
            #200 bb = 0;
            #200 cc = 0;
            #200 dd = 0;
            #200 ee = 0;
            #200 ff = 0;
            #200 gg = 0;
            #200 hh = 0;
            #200 ii = 0;
            #200 jj = 0;
            #200 kk = 0;
            #200 ll = 0;
            #200 mm = 0;
            #200 nn = 0;
            #200 oo = 0;
            #700 $stop;
    end
endmodule
