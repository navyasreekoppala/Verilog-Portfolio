module full_adder(input a_fa,b_fa,c_fa,output reg sum_fa,carry_fa);
  always@(*)
    begin
      sum_fa = a_fa ^ b_fa ^ c_fa;
      carry_fa = (a_fa&b_fa) | (b_fa&c_fa) | (c_fa&a_fa);
    end
endmodule

module rca(
  input [3:0]a,
  input [3:0]b,
  input cin,
  output [3:0]sum,
  output c_out);
  
  wire w1,w2,w3;
  
  full_adder fa1(a[0],b[0],cin,sum[0],w1);
  full_adder fa2(a[1],b[1],w1,sum[1],w2);
  full_adder fa3(a[2],b[2],w2,sum[2],w3);
  full_adder fa4(a[3],b[3],w3,sum[3],c_out);
  
endmodule
  