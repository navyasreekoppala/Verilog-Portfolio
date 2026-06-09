// Code your testbench here
// or browse Examples
module testbench;
  reg [3:0]din;
  wire [1:0]y;
  
  encoder_4_2 dut(din,y);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      $monitor("the output is %d",y);
      
      din = 4'b000x; #1;
      din = 4'b001x; #1;
      din = 4'b0100; #1;
      din = 4'b1000; #1;
      
    end
endmodule