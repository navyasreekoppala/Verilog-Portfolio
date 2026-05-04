module half_adder(input a,b, output sum,carry);
  xor x1(sum,a,b);
  and a1(carry,a,b);
  
endmodule

module full_adder(input a_fa,b_fa,c_fa,output sum_fa,carry_fa);
  wire w1,w2,w3;
  
  half_adder ha1(.a(a_fa),.b(b_fa),.sum(w1),.carry(w2));
  half_adder ha2(.a(w1),.b(c_fa),.sum(sum_fa),.carry(w3));
  
  or o1(carry_fa,w2,w3);
  
endmodule