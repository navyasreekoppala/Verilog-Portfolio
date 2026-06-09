// Code your design here
module half_subtractor(input a,b,output diff,borrow);
  wire w1;
  xor x1(diff,a,b);
  not n1(w1,a);
  and a1(borrow,w1,b);
  
endmodule

module full_subtractor(input a_fs,b_fs,c_fs,output diff_fs,borrow_fs);
  
  wire w1,w2,w3;
  
  half_subtractor hs1(.a(a_fs),.b(b_fs),.diff(w1),.borrow(w3));
  half_subtractor hs2(.a(w1),.b(c_fs),.diff(diff_fs),.borrow(w2));
  or o1(borrow_fs,w2,w3);
endmodule