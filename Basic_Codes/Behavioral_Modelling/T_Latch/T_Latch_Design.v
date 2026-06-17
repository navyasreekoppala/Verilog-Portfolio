// Code your design here
module t_latch(input enable,reset,t,output reg q,output qbar);
  always@(*)
    begin
      if(reset)
        q = 1'b0;
      else if(enable)
        begin
          if(t)
            q = ~q;
        end
    end
  
  assign qbar = ~q;
        
      
endmodule
          
          