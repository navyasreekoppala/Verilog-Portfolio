// Code your testbench here
// or browse Examples
module two_bit_comp_tb;
  reg [1:0]a_tb;
  reg [1:0]b_tb;
  
  wire g_tb,e_tb,l_tb;
  
  two_bit_comp dut(.a(a_tb),.b(b_tb),.g(g_tb),.e(e_tb),.l(l_tb));
  
  initial begin
    
    $dumpfile("two_bit_comp.vcd");
    $dumpvars(0,two_bit_comp_tb);
    
    $display("a b | g e l");
    $monitor("%b %b | %b %b %b",a_tb,b_tb,g_tb,e_tb,l_tb);
    
    a_tb = 2'b00; b_tb = 2'b00; #10;
    a_tb = 2'b01; b_tb = 2'b00; #10;
    a_tb = 2'b00; b_tb = 2'b01; #10;
    a_tb = 2'b10; b_tb = 2'b01; #10;
    a_tb = 2'b01; b_tb = 2'b10; #10;
    a_tb = 2'b11; b_tb = 2'b11; #10;
  
    $finish;
  end 
endmodule