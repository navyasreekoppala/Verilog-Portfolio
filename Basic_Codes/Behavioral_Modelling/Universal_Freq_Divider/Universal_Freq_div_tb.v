// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst,enb;
  reg [1:0]mode;
  wire f_2;
  wire f_4;
  wire f_8;
  wire f_16;
  
  universal_freq_div dut(.clk(clk),.rst(rst),.enb(enb),.mode(mode),.f_2(f_2),.f_4(f_4),.f_8(f_8),.f_16(f_16));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk =0;
      rst =1;#10;
      rst =0;
      
      enb = 1;
      mode = 2'b00; #90;
      enb =0;
      
//       enb = 1;
//       mode = 2'b01; #70;
//       enb =0;
      
//       enb = 1;
//       mode = 2'b10; #90;
//       enb =0;
      
//       enb = 1;
//       mode = 2'b11; #110;
//       enb =0;
     
      $finish;
      
    end
  
endmodule