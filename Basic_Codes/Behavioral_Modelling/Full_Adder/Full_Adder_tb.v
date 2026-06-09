// Code your testbench here
// or browse Examples
module testbench_fa;
  reg a_fa,b_fa,c_fa;
  wire sum_fa,carry_fa;
  
  full_adder dut(.a_fa(a_fa),.b_fa(b_fa),.c_fa(c_fa),.sum_fa(sum_fa),.carry_fa(carry_fa));
  
  initial
    begin
      $monitor("the sum and carry is %d and %d",sum_fa,carry_fa);
      a_fa=0;
      b_fa=1;
      c_fa=1;
      
      #1
 
      a_fa=0;
      b_fa=0;
      c_fa=1;
      
      #1
      
      {a_fa,b_fa,c_fa}=3'b111;
      
    end
  
endmodule
  