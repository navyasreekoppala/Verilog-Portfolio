// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst,load;
  reg [3:0]p_in;
  wire [3:0]p_out;
  
  pipo dut(.clk(clk),.rst(rst),.load(load),.p_in(p_in),.p_out(p_out));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk = 0;
      rst = 1;
      load = 0;
      p_in = 0;
      
      #10;
      rst = 0;
      #10;
      
      p_in = 4'b1101;
      load = 1'b1;
      #10;
      load = 1'b0;
      #50;
      
      $finish;
      
    end
  initial
    begin
      $monitor("Time=%0t rst=%b load=%b p_in=%b p_out=%b",$time,rst,load,p_in,p_out);
    end
  
endmodule
  
      
      