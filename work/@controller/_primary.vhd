library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        opcode          : in     vl_logic_vector(5 downto 0);
        regDst          : out    vl_logic;
        regWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        ALUcontrol      : out    vl_logic_vector(1 downto 0);
        memWrite        : out    vl_logic;
        memRead         : out    vl_logic;
        memtoReg        : out    vl_logic
    );
end Controller;
