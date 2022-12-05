`timescale 10ns/10ps

module tb_process ();
  reg CLK, reset;
  reg [31:0] INST;
  wire [31:0] addr, out;
  wire is_Zero;
  
  process u1 (CLK, reset, INST, out, is_Zero, addr);
  initial begin 
    CLK = 0;
    reset = 1;
    INST = 32'b00000010010100111000100000100000;
    #1 reset = 0;
    #20 INST = 32'b10001110010100111000100000100000;
  end
  always #1 CLK = ~CLK;
  
endmodule

  