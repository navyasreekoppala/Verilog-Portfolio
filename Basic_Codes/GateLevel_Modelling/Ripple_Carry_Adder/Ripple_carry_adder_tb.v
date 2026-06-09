// Code your testbench here
// or browse Examples
module ripple_carry_adder_tb;
  
  reg [3:0]a;
  reg [3:0]b;
  reg c;
  
  wire [3:0]sum;
  wire carry;
  
  ripple_carry_adder dut(.a_rca(a),.b_rca(b),.cin(c),.sum_rca(sum),.cout_rca(carry));
  
  initial begin
    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(0,ripple_carry_adder_tb);
    
    $display("A B Cin | Sum Cout");
    $monitor("%b %b %b | %b %b",a,b,c,sum,carry);
    
    a=4'b0000;
    b=4'b0000;
    c=0;
    #10;
    
    a=4'b0011;
    b=4'b0101;
    c=0;
    #10;
    
    a=4'b1111;
    b=4'b0001;
    c=0;
    #10;
    
    a=4'b1010;
    b=4'b0101;
    c=1;
    #10;
    
    $finish;
    
  end
endmodule
    
    
    