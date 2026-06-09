// Code your design here
module full_adder(input a_fa,b_fa,c_fa,output reg sum_fa,carry_fa);
  always@(*)
    begin
      sum_fa=(a_fa^b_fa^c_fa);
      carry_fa=(a_fa*b_fa)|(b_fa*c_fa)|(a_fa*c_fa);
      
    end
  
endmodule