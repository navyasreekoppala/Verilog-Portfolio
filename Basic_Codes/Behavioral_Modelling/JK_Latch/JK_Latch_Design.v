// Code your design here
module jk_latch(input enable,reset,j,k,output reg q,output qbar);
  always@(*)
    begin
      if(reset)
        q = 1'b0;
      
      else if(!enable)
        q = q;
      else
        begin
          if (j == 0 && k == 0)
            q = q;
          if (j == 0 && k == 1)
            q = 1'b0;
          if (j == 1 && k == 0)
            q = 1'b1;
          if (j == 1 && k == 1)
            q = ~q;
        end
    end
  
  assign qbar = ~q;
        
      
endmodule
          
          