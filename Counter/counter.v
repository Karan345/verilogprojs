module counter (
    input clk,          // Clock signal
    input reset,        // Reset signal
    output reg [3:0] q  // 4-bit output
);

    // This block triggers every time the clock goes from 0 to 1
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000; // Reset the counter to zero
        else
            q <= q + 1;   // Increment by 1
    end

endmodule