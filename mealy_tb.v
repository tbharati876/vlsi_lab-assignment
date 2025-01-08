`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 15:43:38
// Design Name: 
// Module Name: mealy_tb
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


module mealy_tb();
reg ain, clk, reset;
wire aout;
mealy m(.ain(ain), .clk(clk), .reset(reset), .aout(aout));
initial 
begin
reset=1'b0;
clk=1'b0;
ain=1'b0;
#4 reset = 1'b1;
#10 reset = 1'b0;
#19 ain = 1'b1;
#100 $finish;
end
always
begin
#5 clk = ~clk;
end

endmodule
