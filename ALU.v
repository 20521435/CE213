module ALU (ALUcontrol, dataA, dataB, ALUresult, isZero);
  input [31:0] dataA, dataB;
  input [3:0] ALUcontrol;
  output [31:0] ALUresult;
  output isZero;
  reg [31:0] result;
  assign ALUresult = result;
  assign isZero = (ALUcontrol == 4'b0110 && result == 0) ? 1:0;
  always @(*) begin 
    case (ALUcontrol)
      4'b0000: result = dataA & dataB;
      4'b0001: result = dataA | dataB;
      4'b0010: result = dataA + dataB;
      4'b0110: result = dataA - dataB;
      4'b0111: result = (dataA < dataB) ? 1:0;
      4'b1100: result = ~(dataA | dataB);
      default: result = dataA + dataB;
    endcase
  end
endmodule