// Code your design here
module two_bit_comp(input [1:0]a,input [1:0]b,output g,e,l);
  
  wire a1bar,aobar,b1bar,bobar,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
  
  not n1(a1bar,a[1]);
  not n2(aobar,a[0]);  
  not n3(b1bar,b[1]);
  not n4(bobar,b[0]);
  
  xnor x1(w1,a[1],b[1]);   //for equal to
  xnor x2(w2,a[0],b[0]);  
  and a1(e,w1,w2);
  
  xnor x3(w3,a[1],b[1]);   //for greater than
  and a2(w4,a[0],bobar);
  and a3(w5,a[1],b1bar);
  and a4(w6,w3,w4);
  or o1(g,w5,w6);
  
  xnor x4(w7,a[1],b[1]);   //for less than
  and a5(w8,aobar,b[0]);
  and a6(w9,w7,w8);
  and a7(w10,a1bar,b[1]);
  or o2(l,w9,w10);
  
endmodule
  
  