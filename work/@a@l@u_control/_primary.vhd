library verilog;
use verilog.vl_types.all;
entity ALU_control is
    port(
        ALUop           : in     vl_logic_vector(1 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        Sign_ALUcontrol : out    vl_logic_vector(3 downto 0)
    );
end ALU_control;
