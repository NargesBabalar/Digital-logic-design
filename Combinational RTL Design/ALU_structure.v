`timescale 1ns/1ns
module ALU_structual(input signed [15:0] A, B, input C, input [2:0]opc, output reg [15:0]W,output zer, neg);
       reg [15:0] outA, outB, out;
       reg outC;
       assign outA = (opc == 3'b000) ? ~A : A;
       assign outB = (opc == 3'b010) ? B: (opc == 3'b011) ? (B >>> 1) : 16'b1;
       assign outC = (opc == 3'b010) ? C : 1'b0;
       assign out = A + B + C;

       always @(A, B, C, opc, out) begin
                W = 16'b0;
                case(opc)
                        3'd0 : W = out;
                        3'd1 : W = out;
                        3'd2 : W = out;
                        3'd3 : W = out;
                        3'd4 : W =  A & B;
                        3'd5 : W =  A | B;
                        3'd6 : W = {A[7:0], B[7:0]};
                        default : W = 16'b0;
                endcase
       end
       assign zer = ~|W;
       assign neg = W[15];
endmodule
