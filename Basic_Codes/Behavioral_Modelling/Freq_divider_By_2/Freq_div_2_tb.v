// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst;
  wire f_2;
  
  freq_div_2 dut(.clk(clk),.rst(rst),.f_2(f_2));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk = 0;
      rst = 1; #10;
      rst = 0;
      #80;
      $finish;
      
    end
endmodule
      