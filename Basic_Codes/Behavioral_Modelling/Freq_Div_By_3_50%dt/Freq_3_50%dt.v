// Code your design here
module f_3_with_50dt(input clk,rst,enb,output f_3_50dt);
  
  reg [1:0]counter;
  reg enb1,enb2;
  
  always@(posedge clk)
    begin
      if(rst)
        begin
          counter<=0;
          enb1 <=0;
          enb2 <=0;
        end
      else if(enb && counter == 2)
        counter<= 0;
      else if(enb && counter < 2)
        counter <= counter + 1'b1;
    end
  
  always@(posedge clk)
    begin
      if(counter == 0)
        enb1 <= 1'b1;
      else
        enb1 <= 1'b0;
    end
  always@(negedge clk)
    begin
      if(counter == 0)
        enb2 <= 1'b1;
      else
        enb2 <= 1'b0;
    end
  
  assign f_3_50dt = enb1 | enb2;
endmodule
        
      