library verilog;
use verilog.vl_types.all;
entity clkgenremastered_vlg_check_tst is
    port(
        bps_start_o     : in     vl_logic;
        rs232_tx        : in     vl_logic;
        ti              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end clkgenremastered_vlg_check_tst;
