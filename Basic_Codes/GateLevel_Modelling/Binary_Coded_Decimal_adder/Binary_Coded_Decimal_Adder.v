// Code your design here
module full_adder(input a,b,c,output sum,carry);
  wire w1,w2,w3;
  
  xor x1(sum,a,b,c);
  and a1(w1,a,b);
  and a2(w2,b,c);
  and a3(w3,a,c);
  or o1(carry,w1,w2,w3);
  
endmodule

module ripple_carry_adder(input [3:0]a_rca,[3:0]b_rca,input cin,output [3:0]sum_rca,output cout_rca);
  
  wire w1,w2,w3;
  
  full_adder fa1(a_rca[0],b_rca[0],cin,sum_rca[0],w1);
  full_adder fa2(a_rca[1],b_rca[1],w1,sum_rca[1],w2);
  full_adder fa3(a_rca[2],b_rca[2],w2,sum_rca[2],w3);
  full_adder fa4(a_rca[3],b_rca[3],w3,sum_rca[3],cout_rca);
  
endmodule

module binary_coded_decimal(input [3:0]a_bcd,[3:0]b_bcd,input cin,output [3:0]sum_bcd,output cout_bcd);
  
  wire [3:0]sum_temp;
  wire cout_temp;
  wire a_1,a_2,o_1;
  wire [3:0]b_rca_2;
  
  ripple_carry_adder rca1(a_bcd,b_bcd,cin,sum_temp,cout_temp);
  
  and a1(a_1,sum_temp[3],sum_temp[2]);
  and a2(a_2,sum_temp[3],sum_temp[1]);
  or o1(o_1,cout_temp,a_1,a_2);
  
  assign b_rca_2[0]=0;   //Here we are assigning values as we cannot directly keep them in rca2 parameters.
  assign b_rca_2[3]=0;
  assign b_rca_2[1]=o_1;
  assign b_rca_2[2]=o_1;
  
  
  ripple_carry_adder rca2(sum_temp,b_rca_2,0,sum_bcd,cout_bcd);  //cin=0 as it is not considered here
  
  
endmodule