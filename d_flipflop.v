`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 14:47:35
// Design Name: 
// Module Name: d_flipflop
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


// D flip-flop
module d_ff(
    output reg q,
    input d,
    input reset_n,
    input clk
    );

    always @(posedge clk or negedge reset_n)
 begin
        if (!reset_n)
        begin
            q <= 0;
        end
        else
        begin
            q <= d;
        end
    end
  
endmodule