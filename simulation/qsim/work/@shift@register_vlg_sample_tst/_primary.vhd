library verilog;
use verilog.vl_types.all;
entity ShiftRegister_vlg_sample_tst is
    port(
        dataIn          : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end ShiftRegister_vlg_sample_tst;
