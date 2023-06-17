// Code your design here
// combinational -- no clock
// sample -- change as desired
module alu(
  input[2:0] alu_cmd,    // ALU instructions
  input[7:0] inA, inB,	 // 8-bit wide data path
  output logic[7:0] rslt,
  output logic zero      // NOR (output)
);

always_comb begin 
  zero = !rslt;
  case(alu_cmd)
    3'b000: // add 2 8-bit unsigned
      rslt = inA + inB;
	3'b001: // logical right shift
	  TODO--------------------------------------------------------------------------------------------
      rslt = 
    3'b010: // bitwise nor
      rslt ~(inA+B);
    3'b011: // bitwise AND
	  rslt = inA & inB;
    3'b100: // subtract (for beq)
	  rslt = inA - inB;
	3'b101: // set 0
	  rslt = 0;
	3'b110:
	  rslt;
	3'b111:
	  rslt;
  endcase
end
   
endmodule