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
    reg d;
    wire q;
    
    D_FF D1(.q(q), .d(d), .clk(clk), .reset(reset));
    
    always begin #5 clk = ~clk; end
        
    initial
    begin
        $dumpfile("cdff_test.vcd");
        $dumpvars(0, stimulus);

        clk = 0;
        d = 1;
        reset = 0;
        #15 reset = 1;
        #5 reset = 0;
        #180 reset = 1;
        #10 reset = 0;
        #20 $finish;
    end
           
           
endmodule
