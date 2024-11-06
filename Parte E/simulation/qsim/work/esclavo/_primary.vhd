library verilog;
use verilog.vl_types.all;
entity esclavo is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        SDA             : in     vl_logic;
        fin_dir         : in     vl_logic;
        fin_dato        : in     vl_logic;
        soy             : in     vl_logic;
        hab_dato        : out    vl_logic;
        hab_dir         : out    vl_logic;
        hab_ACK         : out    vl_logic
    );
end esclavo;
