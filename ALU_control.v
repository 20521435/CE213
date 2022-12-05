module ALU_control (ALUop, funct, Sign_ALUcontrol);
  input [1:0] ALUop;
  input [5:0] funct;
  output [3:0] Sign_ALUcontrol;
  wire [7:0] vector;
  reg [3:0] control;
  assign vector = {ALUop, funct};
  assign Sign_ALUcontrol = control;
  always @(*) begin 
    case (vector)
      8'b00xxxxxx: begin 
        control <= 4'b0010;
      end
      8'b01xxxxxx: control <= 4'b0110;
      8'b10xx0000: control <= 4'b0010;
      8'b1xxx0010: control <= 4'b0110;
      8'b10xx0100: control <= 4'b0000;
      8'b10xx0101: control <= 4'b0001;
      8'b1xxx1010: control <= 4'b0111;
      default: control <= 4'b0010;
    endcase
  end
endmodule