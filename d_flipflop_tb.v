`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 14:53:16
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_ff_tb;


    reg d;
    reg reset_n;
    reg clk;

    
    wire q;

    
    d_ff uut (
        .q(q),
        .d(d),
        .reset_n(reset_n),
        .clk(clk)
    );

    
    always #5 clk = ~clk;

    
    initial begin
        
      #1  d = 0;
        reset_n = 0;
        clk = 0;

        
        #10 reset_n = 1;

        
        #10 d = 1;
        #10 d = 0;
        #30 d = 1;

        
        #100 $finish;
    end

   
endmodule
