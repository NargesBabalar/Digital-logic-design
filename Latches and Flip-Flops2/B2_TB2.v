`timescale 1ns/1ns
module counter_TB3();
	reg clk = 0, rst = 0, en = 0, set = 0, serin = 0;
	wire Co;
	wire [2:0] cnen;
	wire [7:0] serout;
	upcounter cntB2tb(Co, set, clk, en, rst, serout, serin ,cnen);
	always #100 clk <= ~clk;
	initial begin
		#150 en = 1;
		#200 set = 1;
		#80  set = 0;
		#60  serin = $urandom % 2;
		repeat (15) #150 serin = $urandom % 2;
		#200 rst =1;
		#600 $stop;
	end
endmodule
