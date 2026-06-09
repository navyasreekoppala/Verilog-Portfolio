// Code your design here
module full_sub(input a,b,c,output reg diff,borrow);
  
  always@(*)
    begin
      diff = a ^ b ^ c;
      borrow = (~a&b)|(b&c)|(~a&c);
    end
endmodule