// Code your testbench here
// or browse Examples
module testbench;
  reg enable,reset,t;
  wire q,qbar;
  
  t_latch dut(.enable(enable),.reset(reset),.t(t),.q(q),.qbar(qbar));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      enable = 0;
      reset = 1;
      t = 0;
      
      #10 reset = 0;
      
      #10 enable = 1; t = 0;
      
      #10 enable = 1; t = 1;
      
      #20 $finish;
    end
endmodule
      
  