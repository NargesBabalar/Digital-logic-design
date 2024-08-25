`timescale 1ns/1ns
module ctrlerD(input clk, rst, start, out_det, out_cnt_8, out_downcnt, output reg ready, en_det,en_cnt_8,set_8, en_downcnt, ld_down);
	reg [2:0] ps, ns;
	parameter [2:0] Idle = 3'd0, init = 3'd1, detect = 3'd2, upcount = 3'd3, load = 3'd4, downcount = 3'd5;
	always@(ps, out_det, start, out_cnt_8,out_downcnt)begin
		ns = 3'd0;
		{ready, en_det,en_cnt_8,set_8, en_downcnt, ld_down} = 6'b0;
		case(ps)
			Idle : begin ns = start ? init : Idle; ready = 1; end
			init : begin ns = start ? init : detect; set_8 = 1; en_det = 1; end
			detect : begin ns = out_det ? upcount : detect; en_det = out_det ? 0 : 1; set_8 = 0; end
			upcount: begin ns = out_cnt_8 ? load : upcount; en_cnt_8 = out_det ? 1 : 0; end
			load : begin ns = downcount; ld_down = 1; en_cnt_8 = 0; en_downcnt = 1;end 
			downcount : begin ns = out_downcnt ? Idle : downcount; ld_down = 0;en_downcnt = out_downcnt ? 0 : 1;end
			default: ns = Idle;
		endcase
	end
	always@(posedge clk, posedge rst)begin
		if(rst)
			ps <= Idle;
		else
			ps <= ns;
	end
endmodule