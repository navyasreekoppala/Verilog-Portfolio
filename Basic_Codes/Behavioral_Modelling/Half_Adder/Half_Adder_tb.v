// Code your testbench here
// or browse Examples
module testbench;
  reg a_tb,b_tb;
  wire sum_tb,carry_tb;
  
  half_adder dut(a_tb,b_tb,sum_tb,carry_tb);
  
  initial
    begin
      {a_tb,b_tb}=2'b00; //concatenation and initialization
      
    end
  
  initial
    begin
      a_tb=0;
      a_tb=1;
      
      $monitor("the value of sum and carry is %d and %d",sum_tb,carry_tb);
      
      #1;
    end
  
endmodule
    