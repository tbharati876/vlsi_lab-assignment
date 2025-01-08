`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 16:00:50
// Design Name: 
// Module Name: moore_tb
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


module moore_tb();

reg [1:0] ain;
reg clk, reset;
wire aout;
moore mo(.ain(ain), .clk(clk), .reset(reset), .aout(aout));
initial 
begin
reset=1'b0;
clk=1'b0;
ain=2'b00;
#4 reset = 1'b1;
#10 reset = 1'b0;
#19 ain = 2'b11;
#100 $finish;
end

always
begin
#5 clk = ~clk;
end
endmodule
