library verilog;
use verilog.vl_types.all;
entity esclavo_vlg_check_tst is
    port(
        hab_ACK         : in     vl_logic;
        hab_dato        : in     vl_logic;
        hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end esclavo_vlg_check_tst;
