module process (CLK, reset, INST, out, is_Zero, addr);
  input CLK, reset;
  input [31:0] INST;
  output [31:0] out, addr;
  output is_Zero;
  
  wire regDst, regWrite, ALUSrc, memWrite, memRead, memtoReg;
  wire [1:0] ALUcontrol;
  wire [3:0] ALU_Sign;
  Controller u1 (.CLK(CLK), .reset(reset), .opcode(INST[31:26]), 
                  .regDst(regDst), .regWrite(regWrite), .ALUSrc(ALUSrc), 
                  .memWrite(memWrite), .memRead(memRead), .memtoReg(memtoReg), .ALUcontrol(ALUcontrol));
  ALU_control u2 (.ALUop(ALUcontrol), .funct(INST[5:0]), .Sign_ALUcontrol(ALU_Sign));
  datapath u3 (CLK, INST, regDst, regWrite, ALUSrc, ALUcontrol, 
                memWrite, memRead, memtoReg, out, is_Zero, 
                addr);
endmodule        