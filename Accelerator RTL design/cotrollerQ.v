`timescale 1ns/1ns
module controllerQ(input clk, rst, enc,start, output reg ready, ldx, selx, selrom, enco, initco, initt,ldt,initr,ldr,addci);
	reg[3:0] ps, ns;
	parameter [3:0] idle = 0, init = 1, load = 2, mult1 = 3, mult2 = 4, mult3 = 5, mult4 = 6, compare = 7, subadd = 8;
	always @(ps, start, enc)begin
		ns = idle;
		case(ps)
			idle : begin ns = start ? init: idle; ready = 1; end
			init : begin ns = start ? init : load; initt = 1; initr = 1;initco = 1; enco = 0; addci = 0;ready = 0; end
			load : begin ns = mult1; ldx = 1; ldt = 0; ldr = 0; end
			mult1 : begin ns = mult2; ldt = 1; selx = 1; selrom = 0;addci = ~addci;end
			mult2 : ns = mult3;
			mult3 : begin ns = mult4; selrom = 1; selx = 0; enco = 1;end
			mult4: ns = compare;
			compare : begin ns = enc ? subadd : idle; enco = 0; ldt = 0; end
			subadd : begin ns = mult1; ldr = 1; end
			default : ns = idle;
		endcase
	end
	always@(posedge clk, posedge rst)begin
		if(rst)
			ps <= idle;
		else
			ps <= ns;
	end
endmodule