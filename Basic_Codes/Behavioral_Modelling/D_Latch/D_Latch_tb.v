// Code your testbench here
// or browse Examples
module testbench;
  reg enable,reset,d;
  wire q,qbar;
  
  d_latch dut(.enable(enable),.reset(reset),.d(d),.q(q),.qbar(qbar));
  
  initial 
    begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);
  
  enable = 0;
  reset = 1;
  d = 0;
  
  #10 reset = 0;
  
  //hold phase
  #10 enable = 0; d = 1;
  
  //transparent phase
  #10 enable = 1; d = 1; 
  #10 d = 0;
      
  
  #20 $finish;
    end
  
  
endmodule
  
  