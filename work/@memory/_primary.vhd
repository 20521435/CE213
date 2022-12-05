library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        CLK             : in     vl_logic;
        ADDR            : in     vl_logic_vector(31 downto 0);
        Write_data      : in     vl_logic_vector(31 downto 0);
        WE              : in     vl_logic;
        RE              : in     vl_logic;
        read_data       : out    vl_logic_vector(31 downto 0)
    );
end Memory;
