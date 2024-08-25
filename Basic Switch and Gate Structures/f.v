`timescale 1ns/1ns
module Testbench3();
    reg aa,bb,cc;
    wire yy1,yy0, yy11, yy00;
    myOcgate oc(aa,bb,cc,yy1,yy0);
    myonenumber oc1(aa,bb,cc,yy11,yy00);
    myassign oc2(aa,bb,cc,yyy111,yyy000);
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
