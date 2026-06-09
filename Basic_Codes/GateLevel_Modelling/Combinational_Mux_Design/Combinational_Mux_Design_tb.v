// Code your testbench here
// or browse Examples
module mux_design_tb;
  
  reg [1:0]w;
  reg [1:0]x;
  
  wire F;
  
  top dut(.w(w),.x(x),.F(F));
  
  initial begin
    $dumpfle("mux_design.vcd");
    $dumpvars(0,mux_design_tb);
    
    $display(" w x | F");
    $monitor("%b %b | %b",w,x,F);
    
    w = 2'b00; x = 2'b00; #10;
    w = 2'b00; x = 2'b01; #10;
    w = 2'b00; x = 2'b10; #10;
    w = 2'b00; x = 2'b11; #10;
    
    $finish;
  end 
endmodule
  
  
  