`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 16:11:10
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    output reg q,
    input t,
    input reset_n,
    input clk
    );
    always@(posedge clk or negedge reset_n)
    begin
    if(!reset_n)
    begin
    q<=0;
    end
    else
    begin
    q<=~t;
    end
    end
endmodule
