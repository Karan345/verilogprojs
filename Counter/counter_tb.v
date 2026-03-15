`timescale 1ns / 1ps

module counter_tb;
    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Generate a clock signal (toggles every 5ns)
    always #5 clk = ~clk;

    initial begin
        // Setup for GTKWave: This creates the "dump" file
        $dumpfile("counter_test.vcd");
        $dumpvars(0, counter_tb);

        // Initialize signals
        clk = 0;
        reset = 1;
        #20 reset = 0;  // Release reset after 20ns

        #100 $finish;   // Stop simulation after 100ns
    end
endmodule