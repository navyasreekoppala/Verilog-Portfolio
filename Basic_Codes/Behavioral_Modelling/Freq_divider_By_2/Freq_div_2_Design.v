// Code your design here
module freq_div_2(input clk,rst,output reg f_2);
  always@(posedge clk)
    begin
      if(rst)
        f_2 <= 0;
      else
        f_2 <= ~f_2;
    end
endmodule
      
  
    