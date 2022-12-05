library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        ALUcontrol      : in     vl_logic_vector(3 downto 0);
        dataA           : in     vl_logic_vector(31 downto 0);
        dataB           : in     vl_logic_vector(31 downto 0);
        ALUresult       : out    vl_logic_vector(31 downto 0);
        isZero          : out    vl_logic
    );
end ALU;
