`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 14:43:01
// Design Name: 
// Module Name: sipo_sr
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


module sipo_sr(clk,clear,si,po);
input clk,si, clear;
output[3:0] po;
reg[3:0] tmp;
reg[3:0] po;
always @(posedge clk)
begin
if(clear)
tmp<=4'b0000;
else
tmp<=tmp<<1;
tmp[0]<=si;
po=tmp;
end
endmodule
