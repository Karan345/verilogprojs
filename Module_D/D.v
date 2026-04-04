`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2026 09:43:50 PM
// Design Name: 
// Module Name: D Delay
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


module D(
    output reg out,
    input wire a,b,c,
    );
    
    wire e;

    //Instantiate primitive gares to build the circuit
    and #(5) a1(e, a, b); //Delay of 5 on gate a1
    or  #(4) o1(out, e,c); //Delay of 4 on gate o1 
        
endmodule
