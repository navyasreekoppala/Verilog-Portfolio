// Code your design here
module decoder_2_4(input [1:0]y,output reg [3:0]dout);
  
  always@(*)
    begin
      if (y == 2'b00)
        dout = 4'b0001;
      else if (y == 2'b01)
        dout = 4'b0010;
      else if (y == 2'b10)
        dout = 4'b0100;
      else if (y == 2'b11)
        dout = 4'b1000;
    end
endmodule
       