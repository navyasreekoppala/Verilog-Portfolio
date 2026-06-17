// Code your design here
module universal_freq_div(
  input clk,rst,enb,
  input [1:0]mode,
  output reg f_2,
  output reg f_4,
  output reg f_8,
  output reg f_16);
  
  reg [3:0]counter_internal;
  
  always@(posedge clk)
    begin
       if(rst)
         counter_internal <= 0;
      
      else if(enb)
         counter_internal <= counter_internal + 1'b1;
        
      else
         counter_internal <= counter_internal;
    end
  always@(posedge clk)
    begin
      if(rst) begin
        counter_internal <= 0;
      end
      case(mode)
        2'b00 : begin
          f_2 <= counter_internal[0];
        end
        2'b01 : begin
          f_4 <= counter_internal[1];
        end
        2'b10 : begin
          f_8 <= counter_internal[2];
        end
        2'b11 : begin
          f_16 <= counter_internal[3];
        end
        default : begin
          f_2 <= 0;
          f_4 <= 0;
          f_8 <= 0;
          f_16 <= 0;
        end
          
          
      endcase
    end
endmodule
    
 
  
   
  
  