// Code your design here
module sipo(input clk,rst,s_in,enb,output reg [3:0] p_out);
  
  reg [3:0] temp;
  
  always@(posedge clk)
    if(rst)
      begin
      temp <= 4'b0000;
      end
  else if (enb == 0)
    begin
      temp <= {s_in,temp[3:1]};
    end
  else if (enb ==1)
    begin
      p_out <= temp;
    end
endmodule
  
  
      