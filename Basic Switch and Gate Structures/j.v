`timescale 1ns/1ns
module Testbench5();
    reg aa=0,bb=0,cc=0,dd=0,ee=0,ff=0,gg=0;
    wire ww6,ww7,ww5;
    myassign7input Oc1(aa,bb,cc,dd,ee,ff,gg,ww6,ww7,ww5);
    initial begin
            #200 aa = 1;
            #200 bb = 1;
            #200 cc = 1;
            #200 dd = 1;
            #200 ee = 1;
            #200 ff = 1;
            #200 gg = 1;
            #200 aa = 0;
            #200 bb = 0;
            #200 cc = 0;
            #200 dd = 0;
            #200 ee = 0;
            #200 ff = 0;
            #200 gg = 0;
            #700 $stop;
    end
endmodule
