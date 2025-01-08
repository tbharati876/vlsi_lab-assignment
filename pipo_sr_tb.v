`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 15:01:30
// Design Name: 
// Module Name: pipo_sr_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pipo_sr_tb;
reg clk;
reg clear;
reg[3:0] pi;
wire[3:0] po;
pipo_sr uut(.clk(clk), .clear(clear), .pi(pi), .po(po));
initial begin
clk=0;
clear=0;
pi=0;
#5 clear = 1'b1;
#5 clear = 1'b0;
#10 pi = 4'b1001;
#10 pi = 4'b1010;
#10 pi = 4'b1011;
#10 pi = 4'b1110;
#10 pi = 4'b1111;
#10 pi = 4'b0000;
end
always #5 clk = ~clk;
initial #150 $stop;
endmodule
