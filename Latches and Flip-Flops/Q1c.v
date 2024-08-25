`timescale 1ns/1ns
module SRlatchTB1();
       reg SS,RR,nn=1;
       wire QQ1, Qbb1;
       SRlatch1 srlatch(SS,RR,nn,QQ1,Qbb1);
       initial begin
               #100 SS=1;RR=1;
               #100 SS=1;RR=0;
               #100 SS=0;RR=1;
               #100 SS=0;RR=0;
               #100 SS=1;RR=0;
               #100 SS=1;RR=1;
               #100 SS=0;RR=1;
               #100 SS=0;RR=0;
               #100 $stop;
       end
endmodule
