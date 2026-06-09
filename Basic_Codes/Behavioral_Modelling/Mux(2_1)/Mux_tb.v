// Code your testbench here
// or browse Examples
module mux_tb;
  reg s;
  reg [1:0]i;
  wire y;
  integer m;
  
  mux_2_1 dut(.s(s),.i(i),.y(y));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,mux_tb);
      
      {i,s} =0;
      
      for(m=0;m<8;m=m+1)
        begin
          #1
          {s,i} = m;
          
        end
      $monitor("the output y is %d",y);
          
     
      
    end
endmodule
      