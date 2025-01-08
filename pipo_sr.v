`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 14:56:58
// Design Name: 
// Module Name: pipo_sr
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


module pipo_sr(clk,clear,pi,po);
input clk,clear;
input [3:0] pi;
output [3:0] po;
wire[3:0] pi;
reg[3:0] po;
always @(posedge clk)
begin
if(clear)
po<=4'b0000;
else
po<=pi;
end
endmodule
