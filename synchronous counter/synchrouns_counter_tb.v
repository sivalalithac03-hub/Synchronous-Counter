// Testbench for 4-Bit Synchronous Counter

module synchronous_counter_tb;

reg clk;
reg reset;

wire [3:0] count;

synchronous_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    clk = 1'b0;
    reset = 1'b1;

    // Reset counter
    #10;

    reset = 1'b0;

    // Allow counter to count
    #160;

    $finish;
end

initial begin
    $monitor("Time = %0t | Reset = %b | Count = %b",
             $time, reset, count);
end

endmodule