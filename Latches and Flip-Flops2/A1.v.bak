`timescale 1ns/1ns
module detector(input clk, rst, j, output w);
      reg [2:0] ns,ps;
      parameter [2:0] A = 3'd0, B = 3'd1, C = 3'd2, D= 3'd3, E = 3'd4, F = 3'd5, G = 3'd6, H = 3'd7;
      always @(ps,j) begin
	     ns=3'b000;
             case(ps)
	             A : ns = j ? A : B;
                     B : ns = j ? C : B;
                     C : ns = j ? D : B;
                     D : ns = j ? E : B;
                     E : ns = j ? F : B;
                     F : ns = j ? G : B;
                     G : ns = j ? A : H;
                     H : ns = j ? C : B;
		     default : ns = A;
	     endcase
     end
     assign w = (ps == H) ? 1'b1 : 1'b0;
     always @(posedge clk, posedge rst) begin
		if(rst)
			ps <= 3'b000;
		else
			ps <= ns;
     end
endmodule
