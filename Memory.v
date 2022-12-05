module Memory (CLK, ADDR, Write_data, WE, RE, read_data);
  input CLK, WE, RE;
  input [31:0] ADDR;
  input [31:0] Write_data;
  output [31:0] read_data;
  reg [31:0] out;
  reg [31:0] mem[63:0];
  always @(posedge CLK) begin 
    if (WE) mem[ADDR] <= Write_data;
	 if (RE) out <= mem[ADDR];
	end
	assign read_data = out;
endmodule
