`timescale 1ns/1ns
module counterC_TB();
	wire Co, serout;
	wire [7:0] Qo;
	reg load = 1 , clk= 0, en = 0, rst =0, serin = 0;
	reg [7:0] dta;
	downcounter cntC2tb(Co, serout, serin, en, Qo, rst, load, clk, dta);
	always #100 clk <= ~clk;
	initial begin
		#100 dta = 8'b10110000;
		#80 serin = 1;
		#60 en = 1;
		#90 dta = 8'b00001011;
		#250 load = 0;
		repeat(20) #250 serin = $urandom % 2;
		#150 rst = 1;
		#300 $stop;
	end
endmodule
