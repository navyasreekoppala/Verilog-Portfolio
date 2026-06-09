// Code your testbench here
// or browse Examples
module testbench_hs;
  reg a,b;
  wire diff,borrow;
  
  half_sub dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  
  initial
    begin
      
      $dumpfile("dunmp.vcd");
      $dumpvars(0,testbench_hs);
      
      $display("the value of diff and borrow are %d and %d",diff,borrow);
      
      {a,b}=0;#1
      {a,b}=1;#1
      a=0;
      b=1;
      #1
      a=1;
      b=0;
      #1
      
      $finish;
      
    end
endmodule