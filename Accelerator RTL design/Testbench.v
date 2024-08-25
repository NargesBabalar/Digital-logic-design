`timescale 1ns/1ns
module CosTB();
    reg start = 0, clk = 0, rst = 0;
    reg [15:0] xInp = 16'b0000000100001100;//pi/3
    reg [15:0] yInp = 16'b0;
    wire [15:0] w;
    wire Ready;
    finalDP Cosx(Ready, clk, rst, xInp, yInp, start, w);
    
        always #100 clk = ~clk;
    
    initial begin
        #10 yInp = 16'b0000000001100110;
        #240 start = 1;
        #200 start = 0;
        #4000 yInp = 16'b0000000000001010;
        #240 start = 1;
        #200 start = 0;
        #6000 rst = 1;
        #200 rst = 0;
        #2000 $stop;
    end
endmodule
