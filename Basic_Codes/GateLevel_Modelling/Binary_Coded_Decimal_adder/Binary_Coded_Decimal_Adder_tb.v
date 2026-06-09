// Code your testbench here
// or browse Examples
module binary_coded_decimal_tb;
  
  reg [3:0]a;
  reg [3:0]b;
  reg c;
  wire [3:0]sum;
  wire carry;
  
  binary_coded_decimal dut(.a_bcd(a),.b_bcd(b),.cin(c),.sum_bcd(sum),.cout_bcd(carry));
  
  initial begin
    $dumpfile("binary_coded_decimal.vcd");
    $dumpvars(0,binary_coded_decimal_tb);
    
    $display("A B C | sum carry");
    $monitor("%b %b %b | %b %b",a,b,c,sum,carry);
    
  
  //0+0=0
    a=4'b0000;
    b=4'b0000;
    c=0;
    #10;
    
  //5+3=8
    a=4'b0101;
    b=4'b0011;
    c=0;
    #10;
    
  //8+5+1=14
    a=4'b1000;
    b=4'b0101;
    c=1;
    #10;
    
    $finish;
    
  end
endmodule