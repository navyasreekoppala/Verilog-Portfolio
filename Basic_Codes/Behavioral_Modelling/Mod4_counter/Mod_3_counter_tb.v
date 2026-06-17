// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst,enb;
  wire [1:0] count;
  
  mod_3_counter dut(.clk(clk),.rst(rst),.enb(enb),.count(count));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk = 1'b0;
      enb = 1'b0;
      rst = 1'b1;#10;
      rst = 1'b0;#10;
      
      enb = 1'b1; #100;
      enb = 1'b0;
      $finish;
      
    end
endmodule
      
      