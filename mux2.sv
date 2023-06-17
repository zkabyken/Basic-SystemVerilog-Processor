// 2:1 mux (selector) of WIDTH-wide buses
// CSE140L
module mux2 #(parameter D = 8)
  (input        [D-1:0] d0, d1, 
  input                    s, 
   output logic [D-1:0] y);
// fill in guts
// combinational logic
// s   y
// 0   d0	
// 1   d1	
  always_comb if(s)
    y = d1;
  else
    y = d0;
  
  
endmodule


