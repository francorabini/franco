library verilog;
use verilog.vl_types.all;
entity restador_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_borrin       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end restador_vlg_sample_tst;
