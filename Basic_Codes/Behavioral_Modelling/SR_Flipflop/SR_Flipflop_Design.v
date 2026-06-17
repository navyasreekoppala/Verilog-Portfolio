// Code your design here
// Code your design here
// Code your design here
module sr_flipflop(input clk,s,r,reset,output reg q,qbar);
  
  
  always@(posedge clk)
    begin
      //reset logic
      //sync reset
        if(reset)
          begin
          q <= 1'b0;
          qbar <= 1'b1;
          end
  //hold condition
        else if (s==0 && r ==0)
          begin
            q <= q;
            qbar <= qbar;
          end
  //set condition
        else if (s == 1 && r == 0)
          begin
            q <= 1'b1;
            qbar <= 1'b0;
          end
  //reset condition
        else if (s ==0 && r ==1)
          begin
            q <= 1'b0;
            qbar <= 1'b1;
          end
  //Invalid condition
        else if (s ==1 && r == 1)
          begin
            q <= 'bx;
            qbar <= 'bx;
          end
    end
endmodule
  
  
      
  
      
       
  
  
  