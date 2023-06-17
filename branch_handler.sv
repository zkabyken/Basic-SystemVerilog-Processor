module branch_handler #(parameter branchInWidth = 8, PCwidth = 12)(
  
  
  input [PCwidth-1:0] in_PC, out_PC;
  input [branchInWidth-1:0] branchAmt;
  input branch;
  
);
  
  always_comb begin
    if(branch){
     out_PC = in_PC+4+branchAmt; 
    }else{
      out_PC = in_PC+4;
    }
  end
endmodule
  