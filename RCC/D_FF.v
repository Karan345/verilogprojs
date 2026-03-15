`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:43:50 PM
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    output reg q,
    input wire d,
    input wire clk,
    input wire reset
    );
    
    
    always @(posedge reset or negedge clk) begin 
        if(reset) begin
            q   <= 1'b0;
        end else begin
            q <= d;
        end
    end
        
endmodule
