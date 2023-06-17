module top_level(
  input        clk, reset, req, 
  output logic done);
  
  logic[11:0] pc;
  logic[8:0] instruction;
  logic[7:0] reg1, reg2, immeData, ALU_in_2, ALUout, DMout, regWriteData, branchReg;
  logic[2:0] aluOP;
  logic[2:0] reg1Addr, reg2Addr;
  logic addi, regWrite, imme, ALUwrite, zero, branch, DMwrite;
  
 // PC
  PC PC(reset, clk, branch&zero, 'b0');
  
  // IF
  instr_ROM IF(pc, instruction);
  
  // RegFile
  reg_file reg_file(regWriteData, clk, regWrite, reg1Addr, reg1Addr, reg2Addr, reg1, reg2, branchReg);
  
  //DM
  dat_mem DM(reg1, clk, DMwrite, reg2, DMout);
  
  //ALU
  alu alu(aluOP, reg1, ALU_in_2, ALUout, zero);
  
  // the mux for Reg1Addr
  mux2 #(.N(3)) useR0(instruction[5:3], 'b000', imme, reg1Addr);
  
  // the mux for ALU in 2
  mux2 aluMux(reg2, instruction[5:0],imme, ALU_in_2);
  
  // the mux for chosing b/w DM and ALU output
  mux2 writeDataMux(DMout, ALUout, ALUwrite, regWriteData);
  
  always_comb reg2Addr = instruction[2:0];