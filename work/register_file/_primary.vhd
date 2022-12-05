library verilog;
use verilog.vl_types.all;
entity register_file is
    port(
        WE              : in     vl_logic;
        CLK             : in     vl_logic;
        Write_data      : in     vl_logic_vector(31 downto 0);
        Write_addr      : in     vl_logic_vector(4 downto 0);
        read_regA       : in     vl_logic_vector(4 downto 0);
        read_regB       : in     vl_logic_vector(4 downto 0);
        read_dataA      : out    vl_logic_vector(31 downto 0);
        read_dataB      : out    vl_logic_vector(31 downto 0)
    );
end register_file;
