// Code your design here
// Code your design here
module siso(input clk,enb,rst,s_in,output reg s_out);
  
  //temperory reg to store values
  
  reg [3:0] temp;
  
  always@(posedge clk)
    begin
      if(rst)
        temp <= 4'b0000;
      else if(enb)
        begin
          s_out <= temp[0];
          temp  <= {s_in, temp[3:1]};
        end
    end
endmodule