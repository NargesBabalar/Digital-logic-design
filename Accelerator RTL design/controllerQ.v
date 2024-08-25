`timescale 1ns/1ns
module controllerQ(input clk, rst, encom ,start, output reg ready, ldx, sel, enco, initco, initt,ldt,initr,ldr,addci);
	reg[3:0] ps, ns;
	parameter [3:0] idle = 0, init = 1, load = 2, mult1 = 3, mult2 = 4, mult3 = 5, mult4 = 6, compare = 7, subadd = 8;
	always @(ps, start, encom)begin
		ns = idle;
		{ldx,initt,ldt,initr,ldr,initco,enco,sel,ready} = 9'b0;
		case(ps)
			idle : begin ns = start ? init: idle; ready = 1; end
			init : begin ns = start ? init : load; initt = 1; initr = 1;initco = 1; enco = 0; addci = 1;ready = 0; end
			load : begin ns = mult1; ldx = 1; end
			mult1 : begin ns = mult2; ldt = 1; sel = 0;addci = ~addci;end
			mult2 : begin ns = mult3;ldt = 1; sel = 0;end
			mult3 : begin ns = mult4;ldt = 1 ;enco = 1;sel = 1;end
			mult4: begin ns = compare; ldt = 1;enco = 1; sel = 1;end
			compare : begin ns = encom ? subadd : idle; enco = 0; ldt = 0; end
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