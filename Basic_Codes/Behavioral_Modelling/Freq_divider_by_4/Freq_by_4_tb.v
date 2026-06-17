// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst,enb;
  wire f_4;
  
  freq_4 dut(.clk(clk),.rst(rst),.enb(enb),.f_4(f_4));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk = 0;
      rst = 1; #10;
      rst = 0;
      
      enb = 1;
      #100;
      enb = 0;
     
      $finish;
      
    end
  
endmodule
      
      