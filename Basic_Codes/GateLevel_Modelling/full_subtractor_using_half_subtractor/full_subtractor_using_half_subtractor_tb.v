// Code your testbench here
// or browse Examples
module full_subtractor_tb;
  
  reg a,b,c;
  wire diff,borrow;
  
  full_subtractor fs1(.a_fs(a),.b_fs(b),.c_fs(c),.diff_fs(diff),.borrow_fs(borrow));
  
  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0,full_subtractor_tb);
    
    $display("time a b c | diff borrow");
    $monitor("%0t %b %b %b | %b %b",$time,a,b,c,diff,borrow);
    
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
    