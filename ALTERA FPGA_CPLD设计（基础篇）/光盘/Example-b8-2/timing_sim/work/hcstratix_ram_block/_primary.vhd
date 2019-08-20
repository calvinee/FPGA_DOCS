library verilog;
use verilog.vl_types.all;
entity hcstratix_ram_block is
    generic(
        mem1            : integer := 0;
        mem2            : integer := 0;
        mem3            : integer := 0;
        mem4            : integer := 0;
        mem5            : integer := 0;
        mem6            : integer := 0;
        mem7            : integer := 0;
        mem8            : integer := 0;
        mem9            : integer := 0;
        operation_mode  : string  := "single_port";
        mixed_port_feed_through_mode: string  := "dont_care";
        ram_block_type  : string  := "auto";
        logical_ram_name: string  := "ram_name";
        init_file       : string  := "init_file.hex";
        init_file_layout: string  := "none";
        data_interleave_width_in_bits: integer := 1;
        data_interleave_offset_in_bits: integer := 1;
        port_a_logical_ram_depth: integer := 0;
        port_a_logical_ram_width: integer := 0;
        port_a_data_in_clear: string  := "none";
        port_a_address_clear: string  := "none";
        port_a_write_enable_clear: string  := "none";
        port_a_data_out_clock: string  := "none";
        port_a_data_out_clear: string  := "none";
        port_a_first_address: integer := 0;
        port_a_last_address: integer := 0;
        port_a_first_bit_number: integer := 0;
        port_a_byte_enable_clear: string  := "none";
        port_a_data_in_clock: string  := "clock0";
        port_a_address_clock: string  := "clock0";
        port_a_write_enable_clock: string  := "clock0";
        port_a_byte_enable_clock: string  := "clock0";
        port_b_logical_ram_depth: integer := 0;
        port_b_logical_ram_width: integer := 0;
        port_b_data_in_clock: string  := "none";
        port_b_data_in_clear: string  := "none";
        port_b_address_clock: string  := "none";
        port_b_address_clear: string  := "none";
        port_b_read_enable_write_enable_clock: string  := "none";
        port_b_read_enable_write_enable_clear: string  := "none";
        port_b_data_out_clock: string  := "none";
        port_b_data_out_clear: string  := "none";
        port_b_first_address: integer := 0;
        port_b_last_address: integer := 0;
        port_b_first_bit_number: integer := 0;
        port_a_data_width: integer := 144;
        port_b_data_width: integer := 144;
        port_a_address_width: integer := 144;
        port_b_address_width: integer := 144;
        port_b_byte_enable_clear: string  := "none";
        port_b_byte_enable_clock: string  := "none";
        port_a_byte_enable_mask_width: integer := 144;
        port_b_byte_enable_mask_width: integer := 144;
        lpm_type        : string  := "hcstratix_ram_block";
        connectivity_checking: string  := "off"
    );
    port(
        portadatain     : in     vl_logic_vector(143 downto 0);
        portaaddr       : in     vl_logic_vector(15 downto 0);
        portawe         : in     vl_logic;
        portbdatain     : in     vl_logic_vector(143 downto 0);
        portbaddr       : in     vl_logic_vector(15 downto 0);
        portbrewe       : in     vl_logic;
        clk0            : in     vl_logic;
        clk1            : in     vl_logic;
        ena0            : in     vl_logic;
        ena1            : in     vl_logic;
        clr0            : in     vl_logic;
        clr1            : in     vl_logic;
        portabyteenamasks: in     vl_logic_vector(15 downto 0);
        portbbyteenamasks: in     vl_logic_vector(15 downto 0);
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        portadataout    : out    vl_logic_vector(143 downto 0);
        portbdataout    : out    vl_logic_vector(143 downto 0)
    );
end hcstratix_ram_block;
