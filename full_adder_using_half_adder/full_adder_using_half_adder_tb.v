// Code your testbench here
// or browse Examples
module full_adder_tb;
  
  reg a,b,c;
  wire sum,carry;
  
  full_adder dut(.a_fa(a),.b_fa(b),.c_fa(c),.sum_fa(sum),.carry_fa(carry));
  
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);
    
    $display("time a b c | sum carry");
    $monitor("%0t %b %b %b | %b %b",$time,a,b,c,sum,carry);
    
    a=0;b=0;c=0;#10;
    a=0;b=0;c=1;#10;
    a=0;b=1;c=0;#10;
    a=0;b=1;c=1;#10;
    a=1;b=0;c=0;#10;
    a=1;b=0;c=1;#10;
    a=1;b=1;c=0;#10;
    a=1;b=1;c=1;#10;
    
    $finish;
    
  end
endmodule
    
  
  