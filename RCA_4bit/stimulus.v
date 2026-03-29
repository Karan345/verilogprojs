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
    
   reg A, B;
   reg C_IN;
   wire sum;
   wire C_OUT;

   RCA RCA_1(sum, C_OUT, A, B, C_IN);

   initial 
   begin 
    $monitor($time, " A= %b, B =%b, C_IN =%b, C_OUT= %b, SUM= %b\n", A,B,C_IN,C_OUT,sum);
   end

   initial
   begin
    $dumpfile("rca_test.vcd");
    $dumpvars(0, stimulus);
    A = 1'b0; B = 1'b0; C_IN = 1'b0;
    #5 A = 1'b1; B = 1'b0; C_IN = 1'b0;     
    #5 A = 1'b0; B = 1'b1; C_IN = 1'b0;     
    #5 A = 1'b1; B = 1'b1; C_IN = 1'b0;     
    #5 A = 1'b1; B = 1'b1; C_IN = 1'b1;     
    #5 A = 1'b1; B = 1'b0; C_IN = 1'b1;     
   end
           
endmodule
