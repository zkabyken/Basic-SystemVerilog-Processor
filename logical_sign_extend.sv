module logical_sign_extend #(parameter inWidth = 6, outWidth = 8)(
  input [inWidth-1:0] in,
  output logic [outWidth-1:0] out
);
  
  always_comb begin
    out = in;
    
  end
  
endmodule