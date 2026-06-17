// Code your design here
module freq_4(input clk,rst,enb,output f_4);
  
  reg [1:0]count;
  
  always@(posedge clk)
    begin
      if (rst)
        begin
          count <= 0;
        end
      else if(enb)
        count <= count + 1'b1;
      else
        count <= count;
      
    end
  
  assign f_4 = count[1];
endmodule