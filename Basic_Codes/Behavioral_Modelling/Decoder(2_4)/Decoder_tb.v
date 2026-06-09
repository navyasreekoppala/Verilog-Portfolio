// Code your testbench here
// or browse Examples
module testbench;
  reg [1:0]y;
  wire [3:0]dout;
  
  decoder_2_4 dut(y,dout);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      $monitor("the output is %d",dout);
      
      y = 2'b00; #1;
      y = 2'b01; #1;
      y = 2'b10; #1;
      y = 2'b11; #1;
      
      
    end
endmodule
      
      
      