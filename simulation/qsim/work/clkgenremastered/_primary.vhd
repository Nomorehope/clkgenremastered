library verilog;
use verilog.vl_types.all;
entity clkgenremastered is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        ti              : out    vl_logic;
        bps_start_o     : out    vl_logic;
        rs232_tx        : out    vl_logic
    );
end clkgenremastered;
