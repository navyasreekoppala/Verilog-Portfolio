// Code your testbench here
// or browse Examples
module bcd_tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire c_out;
  
  bcd dut(a,b,cin,sum,c_out);
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0,bcd_tb);
      
      $monitor("the sum and carry of bcd is %d and %d",sum,c_out);
      
      
      a = 4'b1001;
      b = 4'b1001;
      cin = 1;
      
      
    end
  
endmodule
