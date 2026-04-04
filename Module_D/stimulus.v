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

// Stimulus Top-level module
module stimulus;
    
    //Declare variables
    reg A,B,C;
    wire OUT;

    //Instantiate the module D 
    D d1(OUT, A, B, C);

    //Stimulate the inputs. Finish the stimulation at 40 time units        
    initial
    begin
        $dumpfile("delay_test.vcd");
        $dumpvars(0, stimulus);

            A=1'b0; B=1'b0; C=1'b0;
        #10 A=1'b1; B=1'b1; C=1'b1;
        #10 A=1'b1; B=1'b0; C=1'b0;
        #20 $finish;
    end
           
           
endmodule
