//Half Adder
// module ha(input a,b, output s,c);
  
//   assign s = a ^ b;
//   assign c = a & b;
  
// endmodule


//Full Adder
// module fa(input a,b,cin,output s,carry);
  
//   assign s = a ^ b ^ cin;
//   assign carry = (a & b) | (b&cin) | (a&cin);
  
// endmodule


//Mux 4:1
// module mux_4_1(input [1:0]s,input [3:0]i,output y);
  
// wire w1,w2,w3,w4,w5,w6;
  
//   assign w1 = ~s[0];
//   assign w2 = ~s[1];
  
//   assign w3 = w1 & w2 & i[0];
//   assign w4 = s[0] & ~w2 & i[1];
//   assign w5 = w1 & s[1] & i[2];
//   assign w6 = s[0] & s[1] & i[3];
  
// endmodule

