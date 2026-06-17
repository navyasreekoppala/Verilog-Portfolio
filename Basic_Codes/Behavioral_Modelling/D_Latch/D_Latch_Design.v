// Code your design here
module d_latch (input enable, d,reset, output reg q,qbar);
  always@(*)
    begin
        if(reset)
          begin
            q = 1'b0;
            qbar = 1'b1;
          end
      else if(enable)
        begin
          q = d;
          qbar = ~d;
        end
    end
endmodule
      