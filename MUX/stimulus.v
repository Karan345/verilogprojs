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
    
   reg IN0, IN1, IN2, IN3;
   reg S1, S0;

    wire OUTPUT;

    MUX mux1(OUTPUT, IN0, IN1, IN2, IN3, S1, S0);

    initial
    begin
        // Setup for GTKWave: This creates the "dump" file
        $dumpfile("mux_test.vcd");
        $dumpvars(0, stimulus);
        //set input lines
        IN0 = 1; IN1 = 0; IN2 = 1; IN3 = 0;
        #1 $display("IN0 = %b, IN1 = %b, IN2 = %b, IN3 = %b\n", IN0, IN1, IN2, IN3);

        //choose IN0
        S1 = 0; S0 = 0;
        #1 $display("S1 = %b, S0 = %b, OUTPUT =%b \n", S1, S0, OUTPUT);

        //choose IN0
        S1 = 0; S0 = 1;
        #1 $display("S1 = %b, S0 = %b, OUTPUT =%b \n", S1, S0, OUTPUT);

        //choose IN0
        S1 = 1; S0 = 0;
        #1 $display("S1 = %b, S0 = %b, OUTPUT =%b \n", S1, S0, OUTPUT);

        //choose IN0
        S1 = 1; S0 = 1;
        #1 $display("S1 = %b, S0 = %b, OUTPUT =%b \n", S1, S0, OUTPUT);
    end           
           
endmodule
