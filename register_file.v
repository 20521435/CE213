module register_file(WE, CLK, Write_data, Write_addr, read_regA, read_regB, read_dataA, read_dataB);
  input CLK, WE;
  input [4:0] Write_addr ,read_regA, read_regB;
  input [31:0] Write_data;
  output reg [31:0] read_dataA, read_dataB;
  reg [31:0] mem [31:0];
  initial $readmemb("memReg.list", mem, 1, 31);
  always @(negedge CLK) 
    if (WE) begin 
		mem[Write_addr] <= Write_data;
	 end
  always @ (posedge CLK) begin 
	 read_dataA = mem[read_regA];
	 read_dataB = mem[read_regB];
  end
endmodule 