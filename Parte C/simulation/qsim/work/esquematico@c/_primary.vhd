library verilog;
use verilog.vl_types.all;
entity esquematicoC is
    port(
        borrout         : out    vl_logic;
        r4              : out    vl_logic;
        PRN             : in     vl_logic;
        CLK             : in     vl_logic;
        a4              : in     vl_logic;
        b4              : in     vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        borrin          : in     vl_logic;
        r3              : out    vl_logic;
        r2              : out    vl_logic;
        r1              : out    vl_logic
    );
end esquematicoC;
