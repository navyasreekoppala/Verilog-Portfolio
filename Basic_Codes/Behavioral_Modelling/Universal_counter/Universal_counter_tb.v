// Code your testbench here
// or browse Examples
module testbench;
  reg clk,rst,enb,up_downbar;
  reg [1:0]mode;
  wire [1:0]mod2_count;
  wire [3:0]mod4_count;
  wire [7:0]mod8_count;
  wire [15:0]mod16_count;
  
  universal_counter dut(.clk(clk),.rst(rst),.enb(enb),.up_downbar(up_downbar),.mode(mode),.mod2_count(mod2_count),.mod4_count(mod4_count),.mod8_count(mod8_count),.mod16_count(mod16_count));
  
  always #5 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      clk =0;
      rst =1;#10;
      rst =0;
      up_downbar = 0;
      
      enb = 1;
      mode = 2'b00; #90;
      enb =0;
      
//       enb = 1;
//       up_downbar = 1;
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
  initial
    begin
      $monitor("Time=%0t rst=%b enb=%b up_downbar=%b mode=%b | mod2=%b mod4=%b mod8=%b mod16=%b",
            $time, rst, enb, up_downbar, mode,
            mod2_count, mod4_count, mod8_count, mod16_count);
    end
endmodule
      
      
      