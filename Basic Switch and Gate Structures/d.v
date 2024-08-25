`timescale 1ns/1ns
module Testbench2();
    reg aa,bb,cc;
    wire yy1,yy0, yy11, yy00;
    myOcgate oc(aa,bb,cc,yy1,yy0);
    myonenumber od(aa,bb,cc,yy11,yy00);
    initial begin
            aa = 0;
            bb = 0;
            cc = 0;
            #50 aa = 1;
            #100 bb = 1;
            #150 cc = 1;
            #200 aa = 0;
            #250 bb = 0;
            #300 cc = 0;
            #500 $stop;
    end
endmodule
