module testbench;

reg clk, reset, j, k;
wire q;

jk_flipflop dut (
    .clk(clk),
    .reset(reset),
    .j(j),
    .k(k),
    .q(q)
);

always #5 clk = ~clk;

initial 
  begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    clk = 0;
    reset = 1;
    j = 0;
    k = 0;

    #10 reset = 0;

    #10 j = 0; k = 0; // Hold
    #10 j = 0; k = 1; // Reset
    #10 j = 1; k = 0; // Set
    #10 j = 1; k = 1; // Toggle
    #20 j = 1; k = 1; // Toggle again

    #20 $finish;
end

initial begin
    $monitor("Time=%0t reset=%b j=%b k=%b q=%b",
             $time, reset, j, k, q);
end

endmodule