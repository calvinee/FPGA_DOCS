library verilog;
use verilog.vl_types.all;
entity hcstratix_pll is
    generic(
        operation_mode  : string  := "normal";
        qualify_conf_done: string  := "off";
        compensate_clock: string  := "clk0";
        pll_type        : string  := "auto";
        scan_chain      : string  := "long";
        lpm_type        : string  := "hcstratix_pll";
        clk0_multiply_by: integer := 1;
        clk0_divide_by  : integer := 1;
        clk0_phase_shift: integer := 0;
        clk0_time_delay : integer := 0;
        clk0_duty_cycle : integer := 50;
        clk1_multiply_by: integer := 1;
        clk1_divide_by  : integer := 1;
        clk1_phase_shift: integer := 0;
        clk1_time_delay : integer := 0;
        clk1_duty_cycle : integer := 50;
        clk2_multiply_by: integer := 1;
        clk2_divide_by  : integer := 1;
        clk2_phase_shift: integer := 0;
        clk2_time_delay : integer := 0;
        clk2_duty_cycle : integer := 50;
        clk3_multiply_by: integer := 1;
        clk3_divide_by  : integer := 1;
        clk3_phase_shift: integer := 0;
        clk3_time_delay : integer := 0;
        clk3_duty_cycle : integer := 50;
        clk4_multiply_by: integer := 1;
        clk4_divide_by  : integer := 1;
        clk4_phase_shift: integer := 0;
        clk4_time_delay : integer := 0;
        clk4_duty_cycle : integer := 50;
        clk5_multiply_by: integer := 1;
        clk5_divide_by  : integer := 1;
        clk5_phase_shift: integer := 0;
        clk5_time_delay : integer := 0;
        clk5_duty_cycle : integer := 50;
        extclk0_multiply_by: integer := 1;
        extclk0_divide_by: integer := 1;
        extclk0_phase_shift: integer := 0;
        extclk0_time_delay: integer := 0;
        extclk0_duty_cycle: integer := 50;
        extclk1_multiply_by: integer := 1;
        extclk1_divide_by: integer := 1;
        extclk1_phase_shift: integer := 0;
        extclk1_time_delay: integer := 0;
        extclk1_duty_cycle: integer := 50;
        extclk2_multiply_by: integer := 1;
        extclk2_divide_by: integer := 1;
        extclk2_phase_shift: integer := 0;
        extclk2_time_delay: integer := 0;
        extclk2_duty_cycle: integer := 50;
        extclk3_multiply_by: integer := 1;
        extclk3_divide_by: integer := 1;
        extclk3_phase_shift: integer := 0;
        extclk3_time_delay: integer := 0;
        extclk3_duty_cycle: integer := 50;
        primary_clock   : string  := "inclk0";
        inclk0_input_frequency: integer := 10000;
        inclk1_input_frequency: integer := 10000;
        gate_lock_signal: string  := "no";
        gate_lock_counter: integer := 1;
        valid_lock_multiplier: integer := 5;
        invalid_lock_multiplier: integer := 5;
        switch_over_on_lossclk: string  := "off";
        switch_over_on_gated_lock: string  := "off";
        switch_over_counter: integer := 1;
        enable_switch_over_counter: string  := "off";
        feedback_source : string  := "e0";
        bandwidth       : integer := 0;
        bandwidth_type  : string  := "auto";
        down_spread     : string  := "0.0";
        spread_frequency: integer := 0;
        common_rx_tx    : string  := "off";
        rx_outclock_resource: string  := "auto";
        use_vco_bypass  : string  := "false";
        use_dc_coupling : string  := "false";
        pfd_min         : integer := 0;
        pfd_max         : integer := 0;
        vco_min         : integer := 0;
        vco_max         : integer := 0;
        vco_center      : integer := 0;
        m_initial       : integer := 1;
        m               : integer := 1;
        n               : integer := 1;
        m2              : integer := 1;
        n2              : integer := 1;
        ss              : integer := 0;
        l0_high         : integer := 1;
        l0_low          : integer := 1;
        l0_initial      : integer := 1;
        l0_mode         : string  := "bypass";
        l0_ph           : integer := 0;
        l0_time_delay   : integer := 0;
        l1_high         : integer := 1;
        l1_low          : integer := 1;
        l1_initial      : integer := 1;
        l1_mode         : string  := "bypass";
        l1_ph           : integer := 0;
        l1_time_delay   : integer := 0;
        g0_high         : integer := 1;
        g0_low          : integer := 1;
        g0_initial      : integer := 1;
        g0_mode         : string  := "bypass";
        g0_ph           : integer := 0;
        g0_time_delay   : integer := 0;
        g1_high         : integer := 1;
        g1_low          : integer := 1;
        g1_initial      : integer := 1;
        g1_mode         : string  := "bypass";
        g1_ph           : integer := 0;
        g1_time_delay   : integer := 0;
        g2_high         : integer := 1;
        g2_low          : integer := 1;
        g2_initial      : integer := 1;
        g2_mode         : string  := "bypass";
        g2_ph           : integer := 0;
        g2_time_delay   : integer := 0;
        g3_high         : integer := 1;
        g3_low          : integer := 1;
        g3_initial      : integer := 1;
        g3_mode         : string  := "bypass";
        g3_ph           : integer := 0;
        g3_time_delay   : integer := 0;
        e0_high         : integer := 1;
        e0_low          : integer := 1;
        e0_initial      : integer := 1;
        e0_mode         : string  := "bypass";
        e0_ph           : integer := 0;
        e0_time_delay   : integer := 0;
        e1_high         : integer := 1;
        e1_low          : integer := 1;
        e1_initial      : integer := 1;
        e1_mode         : string  := "bypass";
        e1_ph           : integer := 0;
        e1_time_delay   : integer := 0;
        e2_high         : integer := 1;
        e2_low          : integer := 1;
        e2_initial      : integer := 1;
        e2_mode         : string  := "bypass";
        e2_ph           : integer := 0;
        e2_time_delay   : integer := 0;
        e3_high         : integer := 1;
        e3_low          : integer := 1;
        e3_initial      : integer := 1;
        e3_mode         : string  := "bypass";
        e3_ph           : integer := 0;
        e3_time_delay   : integer := 0;
        m_ph            : integer := 0;
        m_time_delay    : integer := 0;
        n_time_delay    : integer := 0;
        extclk0_counter : string  := "e0";
        extclk1_counter : string  := "e1";
        extclk2_counter : string  := "e2";
        extclk3_counter : string  := "e3";
        clk0_counter    : string  := "g0";
        clk1_counter    : string  := "g1";
        clk2_counter    : string  := "g2";
        clk3_counter    : string  := "g3";
        clk4_counter    : string  := "l0";
        clk5_counter    : string  := "l1";
        enable0_counter : string  := "l0";
        enable1_counter : string  := "l0";
        charge_pump_current: integer := 0;
        loop_filter_r   : string  := "1.0";
        loop_filter_c   : integer := 1;
        pll_compensation_delay: integer := 0;
        simulation_type : string  := "timing";
        source_is_pll   : string  := "off";
        clk0_phase_shift_num: integer := 0;
        clk1_phase_shift_num: integer := 0;
        clk2_phase_shift_num: integer := 0;
        skip_vco        : string  := "off";
        egpp_scan_chain : integer := 289;
        gpp_scan_chain  : integer := 193;
        trst            : integer := 5000;
        trstclk         : integer := 5000
    );
    port(
        inclk           : in     vl_logic_vector(1 downto 0);
        fbin            : in     vl_logic;
        ena             : in     vl_logic;
        clkswitch       : in     vl_logic;
        areset          : in     vl_logic;
        pfdena          : in     vl_logic;
        clkena          : in     vl_logic_vector(5 downto 0);
        extclkena       : in     vl_logic_vector(3 downto 0);
        scanclk         : in     vl_logic;
        scanaclr        : in     vl_logic;
        scandata        : in     vl_logic;
        clk             : out    vl_logic_vector(5 downto 0);
        extclk          : out    vl_logic_vector(3 downto 0);
        clkbad          : out    vl_logic_vector(1 downto 0);
        activeclock     : out    vl_logic;
        locked          : out    vl_logic;
        clkloss         : out    vl_logic;
        scandataout     : out    vl_logic;
        comparator      : in     vl_logic;
        enable0         : out    vl_logic;
        enable1         : out    vl_logic
    );
end hcstratix_pll;
