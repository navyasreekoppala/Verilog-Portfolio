// Code your testbench here
// or browse Examples
module testbench;
  
  reg clk,rst,s_in,load,shift;
  reg [3:0]p_in;
  reg [1:0]mode;
  wire s_out;
  wire [3:0]p_out;
  
  universal_register dut(.clk(clk),.rst(rst),.s_in(s_in),.load(load),.shift(shift),.p_in(p_in),.mode(mode),.s_out(s_out),.p_out(p_out));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk = 0;
      rst = 1;
      load = 0;
      shift = 0;
      s_in = 0;
      mode = 0;
      p_in = 0;
      
      #10 rst = 0; #10;
      
      mode = 2'b00;
      shift = 1'b1;
      
      s_in = 1'b1; #10;
      s_in = 1'b1; #10;
      s_in = 1'b0; #10;
      s_in = 1'b1; #50;
      
      shift = 1'b0; #10;
      
      rst = 1'b1; #10;
      rst = 1'b0;
      mode = 2'b01;
      shift = 1'b1;
      
      s_in = 1'b1; #10;
      s_in = 1'b1; #10;
      s_in = 1'b0; #10;
      s_in = 1'b1; #10;
      
      shift = 1'b0; #10;
      
      rst = 1'b1; #10;
      rst = 1'b0;
      mode = 2'b10;
      load = 1'b1;
      p_in = 4'b0101; #10;
      
      load = 1'b0;
      
      rst = 1'b1; #10;
      rst = 1'b0;
      mode = 2'b11;
      load = 1'b1;
      p_in = 4'b0101; #10;
      
      load = 1'b0;#30;
      
      $finish;
      
    end
  initial 
    begin
    $monitor("Time=%0t rst=%b load=%b s_in=%b p_in=%b s_out=%b p_out=%b",
             $time, rst, load, s_in, p_in, s_out, p_out);
    end
  
endmodule
      
      
      