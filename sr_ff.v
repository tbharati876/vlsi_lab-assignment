`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 15:13:36
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
   output reg q, qb, input s,r,clk);
   always@(posedge clk)
   begin
   q=1'b0; qb=1'b1;
   if(clk==1) begin
   if(s==0 && r==0) begin
   q=q;
   qb=qb;
   end
   else if(s==0 && r==1) begin
   q=1'b0; qb=1'b1;
   end
   else if(s==1 && r==0) begin
   q=1'b1; qb=1'b0;
   end
   else if(s==1 && r==1) begin
   q=1'bx; qb=1'bx;
   end
   end
   if(clk==0) begin
   q=q; qb=qb;
   end
   end
endmodule
