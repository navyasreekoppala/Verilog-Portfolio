// Code your testbench here
// or browse Examples
module testbench;
  reg clk,enb,rst,s_in;
  wire [3:0] p_out;
  
  sipo dut(.clk(clk),.rst(rst),.enb(enb),.s_in(s_in),.p_out(p_out));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0, testbench);
      
      clk = 0;
      rst = 1;
      enb = 0;
      s_in = 0;
      
      #10 rst = 0;
      #5;
      s_in = 1'b1; #10;
      s_in = 1'b1; #10;
      s_in = 1'b0; #10;
      s_in = 1'b0; #10;
      
      enb = 1;
      #20;
      
      $finish;
    end
  initial 
    begin
      $monitor("Time=%0t rst=%b enb=%b s_in=%b p_out=%b",
             $time, rst, enb, s_in, p_out);
    end
  
endmodule