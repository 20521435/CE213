library verilog;
use verilog.vl_types.all;
entity \process\ is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        INST            : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0);
        is_Zero         : out    vl_logic;
        addr            : out    vl_logic_vector(31 downto 0)
    );
end \process\;
