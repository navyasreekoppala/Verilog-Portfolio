// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst,enb;
  wire [1:0]count;
  
  mod4_counter dut(.clk(clk),.rst(rst),.enb(enb),.count(count));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk = 0;
      rst = 1; #10;
      rst = 0;
      
      enb = 1;
      #50;
      enb = 0;
      
      #20;
      $finish;
      
    end
  initial
    begin
      $monitor("the count is %d",count);
    end
endmodule
      
      