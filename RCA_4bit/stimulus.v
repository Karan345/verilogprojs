`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2026 03:44:23 PM
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
    
   reg [3:0] A, B;
   reg C_IN;
   wire [3:0] sum;
   wire C_OUT;

   /// 4bit full adder setup
   RCA_4bit RCA_4bit_1(sum, C_OUT, A, B, C_IN);

   initial 
   begin 
    $monitor($time, " A= %b, B =%b, C_IN =%b, C_OUT= %b, SUM= %b\n", A,B,C_IN,C_OUT,sum);
   end

   initial
   begin
    $dumpfile("rca4bit_test.vcd");
    $dumpvars(0, stimulus);
       A = 4'd0; B = 4'd0; C_IN = 1'b0;
    #5 A = 4'd3; B = 4'd4;      
    #5 A = 4'd4; B = 4'd5;   
    #5 A = 4'd9; B = 4'd9;  
    #5 A = 4'd10; B = 4'd15; 
    #5 A = 4'd10; B = 4'd5; C_IN = 1'b1;     
   end
           
endmodule
