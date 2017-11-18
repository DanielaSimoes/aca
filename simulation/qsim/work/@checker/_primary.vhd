library verilog;
use verilog.vl_types.all;
entity Checker is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        r               : in     vl_logic_vector(7 downto 0);
        error           : out    vl_logic_vector(7 downto 0)
    );
end Checker;
