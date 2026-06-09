// Code your testbench here
// or browse Examples
module testbench_rca;
  reg [3:0]a_rca,b_rca;
  reg cin;
  wire [3:0]sum;
  wire c_out;
  
  rca dut(a_rca,b_rca,cin,sum,c_out);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench_rca);
      
      $monitor("the rca sum and carry is %d and %d",sum,c_out);
      
      {a_rca,b_rca,cin}=0;
      
      #1
      
      a_rca = 4'b0100;
      b_rca = 4'b1100;
      cin = 1;
      
      #1
      
      a_rca = 4'b0110;
      b_rca = 4'b1110;
      cin = 1'b1;
      
    end
endmodule