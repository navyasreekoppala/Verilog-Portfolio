// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module testbench;
  reg s,r,enable,reset;
  wire q,qbar;
  
  sr_latch dut(.s(s),.r(r),.enable(enable),.reset(reset),.q(q),.qbar(qbar));
  
  initial
    begin
      {enable,reset,s,r} = 0;
    end
  initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);
    
    end
      
    always #5 enable = ~enable;
      
    initial
        begin
          reset = 1;
          #10;
          reset = 0;
          //hold condition
          s = 0;
          r = 0;
          
          //set condition
          #10;
          s = 1;
          r = 0;
          
          //reset condition
          #10;
          s = 0;
          r = 1;
          
          //Invalid
          #10;
          s = 1;
          r = 1;
          $finish;
        end
endmodule
          
          
          
          
          
  