`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 15:34:06
// Design Name: 
// Module Name: mealy
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


module mealy(
    input ain,
    input clk,
    input reset,
    output aout
    );
    reg[1:0] state;
    always @(posedge clk)
    begin
    if(reset == 1'b1)
    state <= 1'b1;
    else
    case (state)
    1'b0: state <= (ain==1'b1) ? 1'b0 : 1'b1;
    1'b1: state <= (ain==1'b1) ? 1'b0 : 1'b1;
    default: state <= 1'b0;
    endcase
    end
    assign aout = (ain && (state == 1'b1)) ? 1'b1 : 1'b0;
endmodule
