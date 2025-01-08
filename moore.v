`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 15:52:20
// Design Name: 
// Module Name: moore
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


module moore(
    input [1:0] ain,
    input clk,
    input reset,
    output reg aout
    );
    reg state;
    always @(posedge clk)
    begin
    if(reset == 1'b1)
    state = 1'b0;
    else
    case (state)
    1'b0: state <= (ain == 2'b00 | ain == 2'b01) ? 1'b0 : 1'b1;
    1'b1: state <= (ain == 2'b00 | ain == 2'b11) ? 1'b1 : 1'b0;
    default: state <= 1'b0;
    endcase
    end
    
    always @(*)
    case(state)
    1'b0: aout <= 1'b0;
    1'b1: aout <= 1'b1;
    endcase
    
    endmodule
