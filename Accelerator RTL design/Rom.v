`timescale 1ns/1ns
module rom(input [3:0] adr, output[15:0]data);
	reg[15:0] datat;
	always@(adr) begin
		case(adr)
			0: datat = 16'b0000000011111111;
			1: datat = 16'b0000000010000000;
			2: datat = 16'b0000000001010101;
			3: datat = 16'b0000000001000000;
			4: datat = 16'b0000000000110011;
			5: datat = 16'b0000000000101010;
			6: datat = 16'b0000000000100100;
			7: datat = 16'b0000000000100000;
			8: datat = 16'b0000000000011100;
			9: datat = 16'b0000000000011001;
			10: datat = 16'b0000000000010111;
			11: datat = 16'b0000000000010101;
		endcase
	end
	assign data = datat;
endmodule
