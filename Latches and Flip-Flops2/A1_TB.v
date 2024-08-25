`timescale 1ns/1ns
module detector_TB();
	wire ww;
	reg clk = 1'b0, rst = 1'b0, jj = 1'b1;
	detector detector1(clk, rst, jj, ww);
	always #150 clk <= ~clk;
	initial begin
		#150 jj=0;
		#100 jj=1;
		#250 jj=0;
		#500 jj=1;
		#200 $stop;
        end
endmodule
