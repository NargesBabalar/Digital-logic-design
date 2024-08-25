`timescale 1ns/1ns
module finalmachineTB();
	reg start = 0,serin = 0;
	reg clk = 0, rst = 0;
	wire ready, serout,out_valid;
        wire [2:0] upcounter;
	wire [7:0] downcounter, register;
	Finalfile lasttb(ready, clk, rst, start, serin, serout,out_valid, downcounter,upcounter,register);
	initial begin
		repeat (80) #100 clk = ~clk;
	end
	initial begin
		#50 start = 1;
		#150 start = 0;
		#300 serin = 0;
		#200 serin = 1;
		#500 serin = 0;
		#800 serin = 0;
		#300 serin = 1;
		#400 serin = 0;
		#900 serin = 0;
	end
endmodule
