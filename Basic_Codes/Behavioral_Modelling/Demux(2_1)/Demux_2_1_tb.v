module testbench;
  
  reg s,i;
  wire [1:0]y;
  integer m;
  
  demux dut(s,i,y);
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
      
      {i,s} = 0;
      #1
      
      for(m=1;m<4;m=m+1)
        begin
          #1
          {i,s} = m;
        end
    end
endmodule
  
  