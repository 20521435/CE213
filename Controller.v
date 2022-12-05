module Controller (CLK, reset, opcode, regDst, regWrite, ALUSrc, ALUcontrol, memWrite, memRead, memtoReg);
  input CLK, reset;
  input [5:0] opcode;
  output reg regDst, regWrite, ALUSrc, memWrite, memRead, memtoReg;
  output reg [1:0] ALUcontrol;
  
  always @(posedge CLK) begin 
    if (reset) begin 
      regDst <= 0;
      regWrite <= 0;
      ALUSrc <= 0;
      memWrite <= 0;
      memRead <= 0;
      memtoReg <= 0;
      ALUcontrol <= 0;
    end
    else begin
      case (opcode)
        6'b000000: begin
          regDst <= 1;
          regWrite <= 1;
          ALUSrc <= 0;
          memWrite <= 0;
          memRead <= 0;
          memtoReg <= 0;
          ALUcontrol <= 2'b10;
        end
        6'b100011: begin 
          regDst <= 0;
          regWrite <= 1;
          ALUSrc <= 1;
          memWrite <= 0;
          memRead <= 1;
          memtoReg <= 1;
          ALUcontrol <= 2'b00;
        end
        6'b101011: begin 
          regDst <= 1'bx;
          regWrite <= 0;
          ALUSrc <= 1;
          memWrite <= 1;
          memRead <= 0;
          memtoReg <= 1'bx;
          ALUcontrol <= 2'b00;
        end
        default: begin 
          regDst <= 0;
          regWrite <= 0;
          ALUSrc <= 0;
          memWrite <= 0;
          memRead <= 0;
          memtoReg <= 0;
          ALUcontrol <= 0;
        end
      endcase
    end
  end  
endmodule
  