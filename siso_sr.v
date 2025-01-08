`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 14:26:17
// Design Name: 
// Module Name: siso_sr
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


module siso_sr(clk,clear,si,so);
input clk,si,clear;
output so;
reg so;
reg[3:0] tmp;
always @(posedge clk)
begin
if(clear)
tmp<=4'b0000;
else
tmp<=tmp<<1;
tmp[0]<=si;
so=tmp[3];
end
endmodule
