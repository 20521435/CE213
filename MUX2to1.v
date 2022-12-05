module MUX2to1 (sel, dA, dB, dout);
  input sel;
  input [31:0] dA, dB;
  output [31:0] dout;
  assign dout = (sel == 1) ? dA : dB;
endmodule