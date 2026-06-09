// Code your design here
module bcd(input [3:0]a,b,input cin,output [3:0]sum,c_out);
  reg [4:0]temp;
  
  always@(*)
    begin
      temp = a + b + cin;
      
      if (temp > 'd9)
        temp = 4'b0110 + temp;
      else
        temp=temp;
      
    end
  
  assign sum = temp[3:0];
  assign c_out = temp[4];
  
endmodule