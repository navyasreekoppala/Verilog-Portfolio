// Code your testbench here
// or browse Examples
module testbench;
  reg enable,reset,j,k;
  wire q,qbar;
  
  jk_latch dut(.enable(enable),.reset(reset),.j(j),.k(k),.q(q),.qbar(qbar));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      enable = 0;
      reset = 1;
      j = 0;
      k = 0;
      
      #10 reset = 0;
      
      #10 enable = 1; j = 0; k = 0;
      
      #10 enable = 1; j = 0; k = 1;
      
      #10 enable = 1; j = 1; k = 0;
      
      #10 enable = 1; j = 1; k = 1;
      
      #20 $finish;
    end
  
  initial 
    begin
    $monitor("Time=%0t reset=%b enable=%b j=%b k=%b q=%b qbar=%b",
              $time, reset, enable, j, k, q, qbar);
    end
  
endmodule
      
  