library verilog;
use verilog.vl_types.all;
entity MUX2to1 is
    port(
        sel             : in     vl_logic;
        dA              : in     vl_logic_vector(31 downto 0);
        dB              : in     vl_logic_vector(31 downto 0);
        dout            : out    vl_logic_vector(31 downto 0)
    );
end MUX2to1;
