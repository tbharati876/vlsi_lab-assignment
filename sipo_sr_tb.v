`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 14:47:19
// Design Name: 
// Module Name: sipo_sr_tb
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


module sipo_sr_tb;
reg clk;
reg clear;
reg si;
wire[3:0] po;
sipo_sr uut(.clk(clk), .clear(clear), .si(si), .po(po));
initial begin
clk=0;
clear=0;
si=0;
#5 clear = 1'b1;
#5 clear = 1'b0;
#10 si = 1'b1;
#10 si = 1'b0;
#10 si = 1'b0;
#10 si = 1'b1;
#10 si = 1'b0;
#10 si = 1'bx;
end
always #5 clk = ~clk;
initial #150 $stop;
endmodule
