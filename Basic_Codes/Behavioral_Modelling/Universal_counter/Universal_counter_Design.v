// Code your design here
module universal_counter(
  input clk,rst,enb,up_downbar,
  input [1:0]mode,
  output reg [1:0]mod2_count,
  output reg [3:0]mod4_count,
  output reg [7:0]mod8_count,
  output reg [15:0]mod16_count);
  
  reg [3:0]counter_internal;
  
  always@(posedge clk)
    begin
       if(rst)
         counter_internal <= 0;
      
      else if(enb && up_downbar)
         counter_internal <= counter_internal + 1'b1;
      else if(enb && ~up_downbar)
        counter_internal <= counter_internal - 1'b1;
        
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
          mod2_count <= counter_internal[0];
        end
        2'b01 : begin
          mod4_count <= counter_internal[1:0];
        end
        2'b10 : begin
          mod8_count <= counter_internal[2:0];
        end
        2'b11 : begin
          mod16_count <= counter_internal;
        end
        default : begin
          mod2_count <= 0;
          mod4_count <= 0;
          mod8_count <= 0;
          mod16_count <= 0;
        end
          
          
      endcase
    end
endmodule
    
 
  
   
  
  