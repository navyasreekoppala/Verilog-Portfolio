module testbench;

reg clk, reset, d;
wire q;

d_flipflop dut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial 
  begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    clk = 0;
    reset = 1;
    d = 0;

    #10 reset = 0; d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 reset = 1;
    #10 reset = 0; d = 0;

    #20 $finish;
end

initial begin
    $monitor("Time=%0t clk=%b reset=%b d=%b q=%b",
             $time, clk, reset, d, q);
end

endmodule