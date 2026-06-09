// Code your design here
module half_adder(input a,b,output sum,carry);
  always@(a,b);
  begin
    assign sum=a^b;
    assign carry=a&b;
    
  end
endmodule