// Code your testbench here
// or browse Examples
module half_subtractor_tb;
  reg a,b;
  wire diff,borrow;
  
  half_subtractor dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  
  initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(0,half_subtractor_tb);
    
    $display("time a b | diff borrow");
    $monitor("%0t %b %b | %b %b",$time,a,b,diff,borrow);
    
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end
endmodule
    
    