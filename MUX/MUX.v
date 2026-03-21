`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:43:50 PM
// Design Name: 
// Module Name: MUX
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


module MUX(
    output out,
    input i0,i1,i2,i3,
    input s1,s2
    
    );
    
    //Internal wires
    wire s1n, s0n;
    wire y0,y1,y2,y3;
    
    //Internal gates
    not(s1n,s1);
    not(s0n,s0);

    //3-input gates
    and(y0, i0, s1n, s0n);
    and(y1, i1, s1n, s0);
    and(y2, i2, s1, s0n);
    and(y3, i3, s1n, s0n);

    // 4-input OR gates
    or(out,y0,y1,y2,y3);
endmodule
