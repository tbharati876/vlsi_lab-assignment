`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 16:15:04
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb;
reg t;
reg reset_n;
reg clk;
wire q;
t_ff dut(.q(q), .t(t), .reset_n(reset_n), .clk(clk));
always #5 clk=~clk;
initial begin
clk=0;
reset_n=0;
t=0;
#15;
reset_n=1;
#15;
t=1;
#15;
t=0;
#15;
t=0;
#15;
repeat(5) begin
t=1;
#5;
t=0;
#5;
end

$finish;
end
endmodule
