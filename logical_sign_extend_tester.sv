module logical_sign_extend_tester();

  
  bit clk, reset;

  logic[5:0] in = 30;
  logic[7:0] out;
  
  logical_sign_extend test(in, out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    #10 in = 7;
    #10
    
    $stop;
    
  end
endmodule
  