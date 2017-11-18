library verilog;
use verilog.vl_types.all;
entity CRC_vlg_check_tst is
    port(
        error           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end CRC_vlg_check_tst;
