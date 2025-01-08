`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 15:48:04
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb;
   wire q;
   wire qb;
   reg s;
   reg r;
   reg clk;
   sr_ff uut(q,qb,s,r,clk);
   initial begin
   s=0;
   r=0;
   clk=1;
   $monitor("q=%b qb=%b s=%b r=%b clk=%b",q,qb,s,r,clk);
   #500 $finish;
   end
   always #30 clk=~clk;
   always #50 s=~s;
   always #100 r=~r;
   
endmodule
