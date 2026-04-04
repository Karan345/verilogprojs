`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:43:50 PM
// Design Name: 
// Module Name: RCA
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


module RCA_4bit(
    output [3:0] sum, 
    output c_out,
    input [3:0] a, b, 
    input c_in
    );
    
    //Internal wires
    wire c1, c2,c3;
    
    //Instantiate logic gate primitives
    RCA rca1(sum[0], c1, a[0], b[0], c_in);
    RCA rca2(sum[1], c2, a[1], b[1], c1);
    RCA rca3(sum[2], c3, a[2], b[2], c2);
    RCA rca4(sum[3], c_out, a[3], b[3], c3);

endmodule
