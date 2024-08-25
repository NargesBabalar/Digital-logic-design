`timescale 1ns/1ns
module Testbench4();
    reg aa=0,bb=0,cc=0,dd=0,ee=0,ff=0,gg=0;
    wire ww6,ww7,ww5;
    myoc7input Oc(aa,bb,cc,dd,ee,ff,gg,ww6,ww7,ww5);
    initial begin
            #50 aa = 1;
            #100 bb = 1;
            #150 cc = 1;
            #50 dd = 1;
            #100 ee = 1;
            #150 ff = 1;
            #50 gg = 1;
            #100 aa = 0;
            #150 bb = 0;
            #200 cc = 0;
            #250 dd = 0;
            #300 ee = 0;
            #200 ff = 0;
            #200 gg = 0;
            #500 $stop;
    end
endmodule
