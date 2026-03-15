`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2026 03:44:23 PM
// Design Name: 
// Module Name: stimulus
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


module stimulus;
    
    reg clk;
    reg reset;
    wire[3:0] q;
    
    ripple_carry_counter r1(q, clk, reset);
    
    initial 
        clk = 1'b0;
    always
        #5 clk = ~clk;
        
    initial
    begin
        // Setup for GTKWave: This creates the "dump" file
        $dumpfile("rca_test.vcd");
        $dumpvars(0, stimulus);
        reset = 1'b1;
        #15 reset = 1'b0;
        #180 reset = 1'b1;
        #10 reset = 1'b0;
        #20 $finish;
    end
           
           
endmodule
