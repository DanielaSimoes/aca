library verilog;
use verilog.vl_types.all;
entity CRC is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        r               : out    vl_logic_vector(7 downto 0)
    );
end CRC;
