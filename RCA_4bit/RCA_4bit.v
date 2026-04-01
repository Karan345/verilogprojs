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


module RCA(
    output sum, c_out,
    input a, b, c_in
    
    );
    
    //Internal wires
    wire s1,c1, c2;
    
    //Instantiate logic gate primitives
    xor(s1, a, b);
    and(c1, a, b);

    xor(sum, s1, c_in);
    and(c2, s1, c_in);

    xor(c_out, c2, c1);

endmodule
