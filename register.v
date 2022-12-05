module register (CLK, data_in, CS, data_out);
  input CLK, CS;
  input [31:0] data_in;
  output reg [31:0] data_out;
  
  always @(posedge CLK) begin
    if (!CS) data_out <= 0;
    else data_out <= data_in;
  end
  
endmodule
 