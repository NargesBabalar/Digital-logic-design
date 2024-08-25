`timescale 1ns/1ns
module DFlipFlopTB3();
	reg DD, clk = 0, clr=1, pre=1;
	wire QQ, Qbb;
	DFlipFlop3 DFF(DD, clk, clr, pre, QQ,Qbb);
	always #100 clk <= ~clk;
	initial begin
	        #20 DD =1;
		#50 DD = 0;
		#100 clr = 0;
		#150 DD = 1;
		#100 DD = 0;
		#200 clr= 1;
		#100 DD = 1;
		#150 DD = 0;
		#200 pre = 0;
		#150 DD = 1;
		#100 DD = 0;
		#200 clr = 0;
		#150 DD = 1;
		#200 pre = 1;clr =1;
		#100 DD = 0;
		#50 $stop;
	end
endmodule
