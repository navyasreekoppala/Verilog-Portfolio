module testbench;

reg clk, reset, t;
wire q;

t_flipflop dut (
    .clk(clk),
    .reset(reset),
    .t(t),
    .q(q)
);

always #5 clk = ~clk;

initial 
  begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    clk = 0;
    reset = 1;
    t = 0;

    #10 reset = 0;

    #10 t = 1;  // Toggle
    #20 t = 0;  // Hold
    #20 t = 1;  // Toggle
    #20 t = 0;  // Hold

    #20 $finish;
end

initial begin
    $monitor("Time=%0t reset=%b t=%b q=%b",
              $time, reset, t, q);
end

endmodule