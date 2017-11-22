library verilog;
use verilog.vl_types.all;
entity ShiftRegister is
    port(
        dataIn          : in     vl_logic_vector(15 downto 0);
        dataOut         : out    vl_logic_vector(15 downto 0)
    );
end ShiftRegister;
