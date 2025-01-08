`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 14:21:25
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(input j, input k, input clk, output q);
reg q;
always @(posedge clk)
case ({j,k})
2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=~q;
endcase
endmodule
