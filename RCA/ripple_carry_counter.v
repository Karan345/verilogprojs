`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:43:50 PM
// Design Name: 
// Module Name: ripple_carry_counter
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


module ripple_carry_counter(
    output [3:0] q,
    input clk,
    input reset
    );
    
    T_FF tff0(q[0],clk,reset);
    T_FF tff1(q[1],q[0],reset);
    T_FF tff2(q[2],q[1],reset);
    T_FF tff3(q[3],q[2],reset);
endmodule
