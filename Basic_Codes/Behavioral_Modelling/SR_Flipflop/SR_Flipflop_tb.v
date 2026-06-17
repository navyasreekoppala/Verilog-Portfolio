// Code your testbench here
// or browse Examples
module testbench;

reg clk, reset, s, r;
wire q, qbar;

sr_flipflop dut(
    .clk(clk),
    .reset(reset),
    .s(s),
    .r(r),
    .q(q),
    .qbar(qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    clk = 0;
    reset = 1;
    s = 0;
    r = 0;

    #10 reset = 0;

    #10 s = 1; r = 0;  // Set
    #10 s = 0; r = 0;  // Hold
    #10 s = 0; r = 1;  // Reset
    #10 s = 0; r = 0;  // Hold
    #10 s = 1; r = 1;  // Invalid

    #20 $finish;
end

initial begin
    $monitor("Time=%0t clk=%b reset=%b s=%b r=%b q=%b qbar=%b",
             $time, clk, reset, s, r, q, qbar);
end

endmodule