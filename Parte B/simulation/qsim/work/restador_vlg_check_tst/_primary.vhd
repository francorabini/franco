library verilog;
use verilog.vl_types.all;
entity restador_vlg_check_tst is
    port(
        o_borrout       : in     vl_logic;
        o_resta         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end restador_vlg_check_tst;
