`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 14:33:08
// Design Name: 
// Module Name: jk_flipflop_tb
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


module jk_flipflop_tb;
reg j;
reg k;
reg clk;
always #5 clk = ~clk;

jk_flipflop jk0(.j(j), .k(k), .clk(clk), .q(q));

initial begin
j<=0;
k<=0;
#5j <= 0;
k<=1;
#20j <= 1;
k<=0;
#20j <= 1;
k<=1;
#20 $finish;
end

initial
$monitor("j=%0d k=%0d q=%0d",j,k,q);
endmodule
