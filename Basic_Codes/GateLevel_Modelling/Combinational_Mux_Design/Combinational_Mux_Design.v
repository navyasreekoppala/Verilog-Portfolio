// Code your design here
module four_x_one_mux(input [1:0]s,input [3:0]i,output y);
  
  wire s1bar,sobar,w1,w2,w3,w4;
  
  not n1(s1bar,s[1]);
  not n2(sobar,s[0]);
  
  and a1(w1,s1bar,sobar,i[0]);
  and a2(w2,s1bar,s[0],i[1]);
  and a3(w3,s[1],sobar,i[2]);
  and a4(w4,s[1],s[0],i[3]);
  
  or o1(y,w1,w2,w3,w4);
  
endmodule

module top();
  
  wire [1:0]w;
  wire [1:0]x;
  wire [3:0]in_mux1;
  wire [3:0]in_mux2;
  wire [3:0]in_mux3;
  wire out_mux1;
  wire out_mux2;
  wire out_mux3;
  
  assign in_mux1[0]=0;
  assign in_mux1[1]=1;
  assign in_mux1[2]=1;
  assign in_mux1[3]=0;
  
  assign in_mux2[0]=0;
  assign in_mux2[1]=1;
  assign in_mux2[2]=0;
  assign in_mux2[3]=0;
  
  assign in_mux3[0]=out_mux1;
  assign in_mux3[1]=0;
  assign in_mux3[2]=out_mux2;
  assign in_mux3[3]=1;
  
  four_x_one_mux mux1(w,in_mux1,out_mux1);
  four_x_one_mux mux2(w,in_mux2,out_mux2);
  four_x_one_mux mux2(w,in_mux3,out_mux3);
  
endmodule