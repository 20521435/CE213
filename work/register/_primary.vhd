library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        CLK             : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        CS              : in     vl_logic;
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end \register\;
