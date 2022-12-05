library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        CLK             : in     vl_logic;
        INST            : in     vl_logic_vector(31 downto 0);
        regDst          : in     vl_logic;
        regWrite        : in     vl_logic;
        ALUSrc          : in     vl_logic;
        ALUcontrol      : in     vl_logic_vector(3 downto 0);
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        memtoReg        : in     vl_logic;
        regW            : out    vl_logic_vector(31 downto 0);
        is_Zero         : out    vl_logic;
        addr            : out    vl_logic_vector(31 downto 0)
    );
end datapath;
