// Code your testbench here
// or browse Examples
module testbench;
  reg a,b,c;
  wire diff,borrow;
  
  full_sub dut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      $monitor("the value of diff and borrow are %d and %d",diff,borrow);
      
      {a,b,c}=0; #1
      {a,b,c}=1; #1
      a=0;
      b=1;
      c=1; #1
      
      a=1;
      b=0;
      c=0; #1
      
      a=0;
      b=1;
      c=0; #1
      
      a=1;
      b=1;
      c=0; #1
      
      $finish;
    end
endmodule
      
      