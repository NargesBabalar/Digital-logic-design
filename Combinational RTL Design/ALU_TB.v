`timescale 1ns/1ns
module ALU_Testbench();
       reg [15:0] aa, bb;
       reg cc;
       reg [2:0] opc;
       wire[15:0] ww,ww1;
       wire j1,j2,j3,j4;
       myALU myalu(aa, bb, cc, opc, ww, j1, j3);
       ALU_synth myalusynth(aa, bb, cc, opc, ww1,j2,j4);
       initial begin
               #150 aa = 16'b0; bb = 16'b0; cc = 16'b0; opc = 3'd0;
               repeat(10) begin
                        #200 opc = opc + 1'b1;
                        repeat(10) #100 {aa, bb, cc} = $random;
               end
               #100 $stop;
       end
endmodule

