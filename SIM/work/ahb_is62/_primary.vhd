library verilog;
use verilog.vl_types.all;
entity ahb_is62 is
    generic(
        nsq             : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        idle            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        t8              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        t16             : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        t32             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        tw              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        rt1             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        rt2             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        rt3             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        rt4             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        wt1             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1);
        wt2             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        wt3             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1);
        wt4             : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0)
    );
    port(
        addr_cfg        : in     vl_logic_vector(31 downto 0);
        hsel            : in     vl_logic;
        haddr           : in     vl_logic_vector(31 downto 0);
        hwrite          : in     vl_logic;
        hsize           : in     vl_logic_vector(2 downto 0);
        hburst          : in     vl_logic_vector(2 downto 0);
        hprot           : in     vl_logic_vector(3 downto 0);
        htrans          : in     vl_logic_vector(1 downto 0);
        hmastlock       : in     vl_logic;
        hwdata          : in     vl_logic_vector(31 downto 0);
        hresetn         : in     vl_logic;
        hclk            : in     vl_logic;
        hreadyout       : out    vl_logic;
        hresp           : out    vl_logic;
        hrdata          : out    vl_logic_vector(31 downto 0);
        data            : inout  vl_logic_vector(31 downto 0);
        rdy             : in     vl_logic;
        address         : out    vl_logic_vector(21 downto 0);
        sel32_n         : out    vl_logic;
        sel24_n         : out    vl_logic;
        sel16_n         : out    vl_logic;
        sel8_n          : out    vl_logic;
        cs_n            : out    vl_logic;
        wr_n            : out    vl_logic;
        oe_n            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nsq : constant is 1;
    attribute mti_svvh_generic_type of idle : constant is 1;
    attribute mti_svvh_generic_type of t8 : constant is 1;
    attribute mti_svvh_generic_type of t16 : constant is 1;
    attribute mti_svvh_generic_type of t32 : constant is 1;
    attribute mti_svvh_generic_type of tw : constant is 1;
    attribute mti_svvh_generic_type of rt1 : constant is 1;
    attribute mti_svvh_generic_type of rt2 : constant is 1;
    attribute mti_svvh_generic_type of rt3 : constant is 1;
    attribute mti_svvh_generic_type of rt4 : constant is 1;
    attribute mti_svvh_generic_type of wt1 : constant is 1;
    attribute mti_svvh_generic_type of wt2 : constant is 1;
    attribute mti_svvh_generic_type of wt3 : constant is 1;
    attribute mti_svvh_generic_type of wt4 : constant is 1;
end ahb_is62;
