// Code your design here
// Code your design here
module universal_register(
  input clk,rst,s_in,load,shift,
  input [3:0]p_in,
  input [1:0]mode,
  output s_out,
  output [3:0]p_out);
  
  reg [3:0] temp;
  
  always@(posedge clk)
      if(rst)
        begin
          temp <= 4'b0000;
        end
  else begin
  
      case(mode)
        2'b00 :
          begin
            if(shift)
              temp  <= {s_in, temp[3:1]};
            else
              temp <= temp;
          end
          
        2'b01 :
          begin
            if(shift)
              temp <= {s_in,temp[3:1]};
            else
              temp <= temp;
          end
          
        2'b10 :
          begin
            if(load)
              temp <= p_in;
            else
              temp <= {s_in,temp[3:1]};
          end
          
        2'b11 :
          begin
            if(load)
              temp <= p_in;
            else
              temp <= temp;
          end
        
        default : temp <= temp;
      endcase
           
    end
        
assign s_out = temp[0];
assign p_out = (shift == 0 && load == 0) ? temp : 'bx;
  
endmodule
        
       
  
    
  