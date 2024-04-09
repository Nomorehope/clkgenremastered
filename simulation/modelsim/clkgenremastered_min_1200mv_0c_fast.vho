-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/08/2024 16:25:13"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clkgenremastered IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	ti : OUT std_logic;
	bps_start_o : OUT std_logic;
	rs232_tx : OUT std_logic
	);
END clkgenremastered;

-- Design Ports Information
-- ti	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bps_start_o	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs232_tx	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clkgenremastered IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_ti : std_logic;
SIGNAL ww_bps_start_o : std_logic;
SIGNAL ww_rs232_tx : std_logic;
SIGNAL \genpll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \genpll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~14_combout\ : std_logic;
SIGNAL \cnt[4]~23\ : std_logic;
SIGNAL \cnt[5]~24_combout\ : std_logic;
SIGNAL \cnt[5]~25\ : std_logic;
SIGNAL \cnt[6]~26_combout\ : std_logic;
SIGNAL \cnt[6]~27\ : std_logic;
SIGNAL \cnt[7]~28_combout\ : std_logic;
SIGNAL \cnt[7]~29\ : std_logic;
SIGNAL \cnt[8]~30_combout\ : std_logic;
SIGNAL \cnt[8]~31\ : std_logic;
SIGNAL \cnt[9]~32_combout\ : std_logic;
SIGNAL \cnt[9]~33\ : std_logic;
SIGNAL \cnt[10]~34_combout\ : std_logic;
SIGNAL \cnt[10]~35\ : std_logic;
SIGNAL \cnt[11]~36_combout\ : std_logic;
SIGNAL \cnt[11]~37\ : std_logic;
SIGNAL \cnt[12]~38_combout\ : std_logic;
SIGNAL \cnt[12]~39\ : std_logic;
SIGNAL \cnt[13]~40_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cnt[0]~15\ : std_logic;
SIGNAL \cnt[1]~16_combout\ : std_logic;
SIGNAL \cnt[1]~17\ : std_logic;
SIGNAL \cnt[2]~18_combout\ : std_logic;
SIGNAL \cnt[2]~19\ : std_logic;
SIGNAL \cnt[3]~20_combout\ : std_logic;
SIGNAL \cnt[3]~21\ : std_logic;
SIGNAL \cnt[4]~22_combout\ : std_logic;
SIGNAL \ti~1_combout\ : std_logic;
SIGNAL \ti~2_combout\ : std_logic;
SIGNAL \ti~0_combout\ : std_logic;
SIGNAL \ti~3_combout\ : std_logic;
SIGNAL \ti~reg0_q\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~28_combout\ : std_logic;
SIGNAL \count[6]~41\ : std_logic;
SIGNAL \count[7]~42_combout\ : std_logic;
SIGNAL \count[7]~43\ : std_logic;
SIGNAL \count[8]~44_combout\ : std_logic;
SIGNAL \count[8]~45\ : std_logic;
SIGNAL \count[9]~46_combout\ : std_logic;
SIGNAL \count[9]~47\ : std_logic;
SIGNAL \count[10]~48_combout\ : std_logic;
SIGNAL \count[10]~49\ : std_logic;
SIGNAL \count[11]~50_combout\ : std_logic;
SIGNAL \count[11]~51\ : std_logic;
SIGNAL \count[12]~52_combout\ : std_logic;
SIGNAL \count[12]~53\ : std_logic;
SIGNAL \count[13]~54_combout\ : std_logic;
SIGNAL \count[13]~55\ : std_logic;
SIGNAL \count[14]~56_combout\ : std_logic;
SIGNAL \count[14]~57\ : std_logic;
SIGNAL \count[15]~58_combout\ : std_logic;
SIGNAL \count[15]~59\ : std_logic;
SIGNAL \count[16]~60_combout\ : std_logic;
SIGNAL \count[16]~61\ : std_logic;
SIGNAL \count[17]~62_combout\ : std_logic;
SIGNAL \count[17]~63\ : std_logic;
SIGNAL \count[18]~64_combout\ : std_logic;
SIGNAL \count[18]~65\ : std_logic;
SIGNAL \count[19]~66_combout\ : std_logic;
SIGNAL \count[19]~67\ : std_logic;
SIGNAL \count[20]~68_combout\ : std_logic;
SIGNAL \count[20]~69\ : std_logic;
SIGNAL \count[21]~70_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \count[21]~71\ : std_logic;
SIGNAL \count[22]~72_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \count[22]~73\ : std_logic;
SIGNAL \count[23]~74_combout\ : std_logic;
SIGNAL \count[23]~75\ : std_logic;
SIGNAL \count[24]~76_combout\ : std_logic;
SIGNAL \count[24]~77\ : std_logic;
SIGNAL \count[25]~78_combout\ : std_logic;
SIGNAL \count[25]~79\ : std_logic;
SIGNAL \count[26]~80_combout\ : std_logic;
SIGNAL \count[26]~81\ : std_logic;
SIGNAL \count[27]~82_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \count[0]~29\ : std_logic;
SIGNAL \count[1]~30_combout\ : std_logic;
SIGNAL \count[1]~31\ : std_logic;
SIGNAL \count[2]~32_combout\ : std_logic;
SIGNAL \count[2]~33\ : std_logic;
SIGNAL \count[3]~34_combout\ : std_logic;
SIGNAL \count[3]~35\ : std_logic;
SIGNAL \count[4]~36_combout\ : std_logic;
SIGNAL \count[4]~37\ : std_logic;
SIGNAL \count[5]~38_combout\ : std_logic;
SIGNAL \count[5]~39\ : std_logic;
SIGNAL \count[6]~40_combout\ : std_logic;
SIGNAL \external~2_combout\ : std_logic;
SIGNAL \external~3_combout\ : std_logic;
SIGNAL \external~4_combout\ : std_logic;
SIGNAL \external~5_combout\ : std_logic;
SIGNAL \external~0_combout\ : std_logic;
SIGNAL \external~1_combout\ : std_logic;
SIGNAL \external~6_combout\ : std_logic;
SIGNAL \external~q\ : std_logic;
SIGNAL \tx_en~q\ : std_logic;
SIGNAL \bps_start_r~0_combout\ : std_logic;
SIGNAL \bps_start_r~q\ : std_logic;
SIGNAL \speed_select|cnt[0]~13_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \speed_select|Equal0~3_combout\ : std_logic;
SIGNAL \speed_select|cnt[6]~26\ : std_logic;
SIGNAL \speed_select|cnt[7]~27_combout\ : std_logic;
SIGNAL \speed_select|cnt[7]~28\ : std_logic;
SIGNAL \speed_select|cnt[8]~29_combout\ : std_logic;
SIGNAL \speed_select|cnt[8]~30\ : std_logic;
SIGNAL \speed_select|cnt[9]~31_combout\ : std_logic;
SIGNAL \speed_select|cnt[9]~32\ : std_logic;
SIGNAL \speed_select|cnt[10]~33_combout\ : std_logic;
SIGNAL \speed_select|cnt[10]~34\ : std_logic;
SIGNAL \speed_select|cnt[11]~35_combout\ : std_logic;
SIGNAL \speed_select|cnt[11]~36\ : std_logic;
SIGNAL \speed_select|cnt[12]~37_combout\ : std_logic;
SIGNAL \speed_select|Equal0~1_combout\ : std_logic;
SIGNAL \speed_select|Equal0~0_combout\ : std_logic;
SIGNAL \speed_select|Equal0~2_combout\ : std_logic;
SIGNAL \speed_select|always0~0_combout\ : std_logic;
SIGNAL \speed_select|cnt[0]~14\ : std_logic;
SIGNAL \speed_select|cnt[1]~15_combout\ : std_logic;
SIGNAL \speed_select|cnt[1]~16\ : std_logic;
SIGNAL \speed_select|cnt[2]~17_combout\ : std_logic;
SIGNAL \speed_select|cnt[2]~18\ : std_logic;
SIGNAL \speed_select|cnt[3]~19_combout\ : std_logic;
SIGNAL \speed_select|cnt[3]~20\ : std_logic;
SIGNAL \speed_select|cnt[4]~21_combout\ : std_logic;
SIGNAL \speed_select|cnt[4]~22\ : std_logic;
SIGNAL \speed_select|cnt[5]~23_combout\ : std_logic;
SIGNAL \speed_select|cnt[5]~24\ : std_logic;
SIGNAL \speed_select|cnt[6]~25_combout\ : std_logic;
SIGNAL \speed_select|always1~0_combout\ : std_logic;
SIGNAL \speed_select|always1~1_combout\ : std_logic;
SIGNAL \speed_select|clk_bps_r~q\ : std_logic;
SIGNAL \comb_225|num[0]~4_combout\ : std_logic;
SIGNAL \comb_225|Add0~0_combout\ : std_logic;
SIGNAL \comb_225|num[2]~5_combout\ : std_logic;
SIGNAL \comb_225|num[3]~1_combout\ : std_logic;
SIGNAL \comb_225|num[3]~2_combout\ : std_logic;
SIGNAL \comb_225|num[1]~3_combout\ : std_logic;
SIGNAL \comb_225|Add0~1_combout\ : std_logic;
SIGNAL \comb_225|num[3]~6_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~3_combout\ : std_logic;
SIGNAL \comb_225|num[0]~0_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~4_combout\ : std_logic;
SIGNAL \data[2]~feeder_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~0_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~1_combout\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \comb_225|Mux0~0_combout\ : std_logic;
SIGNAL \comb_225|Mux0~1_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~2_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~5_combout\ : std_logic;
SIGNAL \comb_225|rs232_tx_r~q\ : std_logic;
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(27 DOWNTO 0);
SIGNAL cnt : std_logic_vector(13 DOWNTO 0);
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \speed_select|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_225|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \comb_225|ALT_INV_rs232_tx_r~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ti <= ww_ti;
bps_start_o <= ww_bps_start_o;
rs232_tx <= ww_rs232_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\genpll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\genpll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \genpll|altpll_component|auto_generated|wire_pll1_clk\(0));

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
\comb_225|ALT_INV_rs232_tx_r~q\ <= NOT \comb_225|rs232_tx_r~q\;

-- Location: IOOBUF_X34_Y2_N23
\ti~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ti~reg0_q\,
	devoe => ww_devoe,
	o => ww_ti);

-- Location: IOOBUF_X9_Y24_N9
\bps_start_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bps_start_r~q\,
	devoe => ww_devoe,
	o => ww_bps_start_o);

-- Location: IOOBUF_X28_Y24_N16
\rs232_tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_225|ALT_INV_rs232_tx_r~q\,
	devoe => ww_devoe,
	o => ww_rs232_tx);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\genpll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3267,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \genpll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \genpll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \genpll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \genpll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y23_N4
\cnt[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~14_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~15\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~14_combout\,
	cout => \cnt[0]~15\);

-- Location: LCCOMB_X29_Y23_N12
\cnt[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~22_combout\ = (cnt(4) & (\cnt[3]~21\ $ (GND))) # (!cnt(4) & (!\cnt[3]~21\ & VCC))
-- \cnt[4]~23\ = CARRY((cnt(4) & !\cnt[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~21\,
	combout => \cnt[4]~22_combout\,
	cout => \cnt[4]~23\);

-- Location: LCCOMB_X29_Y23_N14
\cnt[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~24_combout\ = (cnt(5) & (!\cnt[4]~23\)) # (!cnt(5) & ((\cnt[4]~23\) # (GND)))
-- \cnt[5]~25\ = CARRY((!\cnt[4]~23\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~23\,
	combout => \cnt[5]~24_combout\,
	cout => \cnt[5]~25\);

-- Location: FF_X29_Y23_N15
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[5]~24_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X29_Y23_N16
\cnt[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~26_combout\ = (cnt(6) & (\cnt[5]~25\ $ (GND))) # (!cnt(6) & (!\cnt[5]~25\ & VCC))
-- \cnt[6]~27\ = CARRY((cnt(6) & !\cnt[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~25\,
	combout => \cnt[6]~26_combout\,
	cout => \cnt[6]~27\);

-- Location: FF_X29_Y23_N17
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[6]~26_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X29_Y23_N18
\cnt[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~28_combout\ = (cnt(7) & (!\cnt[6]~27\)) # (!cnt(7) & ((\cnt[6]~27\) # (GND)))
-- \cnt[7]~29\ = CARRY((!\cnt[6]~27\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~27\,
	combout => \cnt[7]~28_combout\,
	cout => \cnt[7]~29\);

-- Location: FF_X29_Y23_N19
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[7]~28_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X29_Y23_N20
\cnt[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~30_combout\ = (cnt(8) & (\cnt[7]~29\ $ (GND))) # (!cnt(8) & (!\cnt[7]~29\ & VCC))
-- \cnt[8]~31\ = CARRY((cnt(8) & !\cnt[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~29\,
	combout => \cnt[8]~30_combout\,
	cout => \cnt[8]~31\);

-- Location: FF_X29_Y23_N21
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[8]~30_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X29_Y23_N22
\cnt[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~32_combout\ = (cnt(9) & (!\cnt[8]~31\)) # (!cnt(9) & ((\cnt[8]~31\) # (GND)))
-- \cnt[9]~33\ = CARRY((!\cnt[8]~31\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \cnt[8]~31\,
	combout => \cnt[9]~32_combout\,
	cout => \cnt[9]~33\);

-- Location: FF_X29_Y23_N23
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[9]~32_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X29_Y23_N24
\cnt[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[10]~34_combout\ = (cnt(10) & (\cnt[9]~33\ $ (GND))) # (!cnt(10) & (!\cnt[9]~33\ & VCC))
-- \cnt[10]~35\ = CARRY((cnt(10) & !\cnt[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~33\,
	combout => \cnt[10]~34_combout\,
	cout => \cnt[10]~35\);

-- Location: FF_X29_Y23_N25
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[10]~34_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X29_Y23_N26
\cnt[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[11]~36_combout\ = (cnt(11) & (!\cnt[10]~35\)) # (!cnt(11) & ((\cnt[10]~35\) # (GND)))
-- \cnt[11]~37\ = CARRY((!\cnt[10]~35\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~35\,
	combout => \cnt[11]~36_combout\,
	cout => \cnt[11]~37\);

-- Location: FF_X29_Y23_N27
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[11]~36_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X29_Y23_N28
\cnt[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[12]~38_combout\ = (cnt(12) & (\cnt[11]~37\ $ (GND))) # (!cnt(12) & (!\cnt[11]~37\ & VCC))
-- \cnt[12]~39\ = CARRY((cnt(12) & !\cnt[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~37\,
	combout => \cnt[12]~38_combout\,
	cout => \cnt[12]~39\);

-- Location: FF_X29_Y23_N29
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[12]~38_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X29_Y23_N30
\cnt[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[13]~40_combout\ = cnt(13) $ (\cnt[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	cin => \cnt[12]~39\,
	combout => \cnt[13]~40_combout\);

-- Location: FF_X29_Y23_N31
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[13]~40_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X29_Y23_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cnt(13) & ((cnt(11)) # (cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datac => cnt(11),
	datad => cnt(12),
	combout => \LessThan0~0_combout\);

-- Location: FF_X29_Y23_N5
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[0]~14_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X29_Y23_N6
\cnt[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~16_combout\ = (cnt(1) & (!\cnt[0]~15\)) # (!cnt(1) & ((\cnt[0]~15\) # (GND)))
-- \cnt[1]~17\ = CARRY((!\cnt[0]~15\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \cnt[0]~15\,
	combout => \cnt[1]~16_combout\,
	cout => \cnt[1]~17\);

-- Location: FF_X29_Y23_N7
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[1]~16_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X29_Y23_N8
\cnt[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~18_combout\ = (cnt(2) & (\cnt[1]~17\ $ (GND))) # (!cnt(2) & (!\cnt[1]~17\ & VCC))
-- \cnt[2]~19\ = CARRY((cnt(2) & !\cnt[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~17\,
	combout => \cnt[2]~18_combout\,
	cout => \cnt[2]~19\);

-- Location: FF_X29_Y23_N9
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[2]~18_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X29_Y23_N10
\cnt[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~20_combout\ = (cnt(3) & (!\cnt[2]~19\)) # (!cnt(3) & ((\cnt[2]~19\) # (GND)))
-- \cnt[3]~21\ = CARRY((!\cnt[2]~19\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~19\,
	combout => \cnt[3]~20_combout\,
	cout => \cnt[3]~21\);

-- Location: FF_X29_Y23_N11
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[3]~20_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: FF_X29_Y23_N13
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[4]~22_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X28_Y23_N10
\ti~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ti~1_combout\ = (cnt(4)) # ((cnt(5)) # ((cnt(3)) # (cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(5),
	datac => cnt(3),
	datad => cnt(6),
	combout => \ti~1_combout\);

-- Location: LCCOMB_X29_Y23_N0
\ti~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ti~2_combout\ = (cnt(10)) # ((cnt(8)) # ((cnt(9)) # (cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(8),
	datac => cnt(9),
	datad => cnt(7),
	combout => \ti~2_combout\);

-- Location: LCCOMB_X32_Y23_N2
\ti~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ti~0_combout\ = (cnt(1)) # ((cnt(12)) # ((cnt(2)) # (cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(12),
	datac => cnt(2),
	datad => cnt(11),
	combout => \ti~0_combout\);

-- Location: LCCOMB_X32_Y23_N16
\ti~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ti~3_combout\ = (!\ti~1_combout\ & (!cnt(13) & (!\ti~2_combout\ & !\ti~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ti~1_combout\,
	datab => cnt(13),
	datac => \ti~2_combout\,
	datad => \ti~0_combout\,
	combout => \ti~3_combout\);

-- Location: FF_X32_Y23_N17
\ti~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ti~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ti~reg0_q\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y10_N4
\count[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~28_combout\ = count(0) $ (VCC)
-- \count[0]~29\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~28_combout\,
	cout => \count[0]~29\);

-- Location: LCCOMB_X19_Y10_N16
\count[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~40_combout\ = (count(6) & (\count[5]~39\ $ (GND))) # (!count(6) & (!\count[5]~39\ & VCC))
-- \count[6]~41\ = CARRY((count(6) & !\count[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~39\,
	combout => \count[6]~40_combout\,
	cout => \count[6]~41\);

-- Location: LCCOMB_X19_Y10_N18
\count[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~42_combout\ = (count(7) & (!\count[6]~41\)) # (!count(7) & ((\count[6]~41\) # (GND)))
-- \count[7]~43\ = CARRY((!\count[6]~41\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~41\,
	combout => \count[7]~42_combout\,
	cout => \count[7]~43\);

-- Location: FF_X19_Y10_N19
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~42_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X19_Y10_N20
\count[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~44_combout\ = (count(8) & (\count[7]~43\ $ (GND))) # (!count(8) & (!\count[7]~43\ & VCC))
-- \count[8]~45\ = CARRY((count(8) & !\count[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~43\,
	combout => \count[8]~44_combout\,
	cout => \count[8]~45\);

-- Location: FF_X19_Y10_N21
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~44_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X19_Y10_N22
\count[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~46_combout\ = (count(9) & (!\count[8]~45\)) # (!count(9) & ((\count[8]~45\) # (GND)))
-- \count[9]~47\ = CARRY((!\count[8]~45\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~45\,
	combout => \count[9]~46_combout\,
	cout => \count[9]~47\);

-- Location: FF_X19_Y10_N23
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~46_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X19_Y10_N24
\count[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~48_combout\ = (count(10) & (\count[9]~47\ $ (GND))) # (!count(10) & (!\count[9]~47\ & VCC))
-- \count[10]~49\ = CARRY((count(10) & !\count[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~47\,
	combout => \count[10]~48_combout\,
	cout => \count[10]~49\);

-- Location: FF_X19_Y10_N25
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~48_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X19_Y10_N26
\count[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~50_combout\ = (count(11) & (!\count[10]~49\)) # (!count(11) & ((\count[10]~49\) # (GND)))
-- \count[11]~51\ = CARRY((!\count[10]~49\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~49\,
	combout => \count[11]~50_combout\,
	cout => \count[11]~51\);

-- Location: FF_X19_Y10_N27
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~50_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X19_Y10_N28
\count[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~52_combout\ = (count(12) & (\count[11]~51\ $ (GND))) # (!count(12) & (!\count[11]~51\ & VCC))
-- \count[12]~53\ = CARRY((count(12) & !\count[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~51\,
	combout => \count[12]~52_combout\,
	cout => \count[12]~53\);

-- Location: FF_X19_Y10_N29
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~52_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X19_Y10_N30
\count[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~54_combout\ = (count(13) & (!\count[12]~53\)) # (!count(13) & ((\count[12]~53\) # (GND)))
-- \count[13]~55\ = CARRY((!\count[12]~53\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~53\,
	combout => \count[13]~54_combout\,
	cout => \count[13]~55\);

-- Location: FF_X19_Y10_N31
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~54_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X19_Y9_N0
\count[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~56_combout\ = (count(14) & (\count[13]~55\ $ (GND))) # (!count(14) & (!\count[13]~55\ & VCC))
-- \count[14]~57\ = CARRY((count(14) & !\count[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~55\,
	combout => \count[14]~56_combout\,
	cout => \count[14]~57\);

-- Location: FF_X19_Y9_N1
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~56_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X19_Y9_N2
\count[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~58_combout\ = (count(15) & (!\count[14]~57\)) # (!count(15) & ((\count[14]~57\) # (GND)))
-- \count[15]~59\ = CARRY((!\count[14]~57\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~57\,
	combout => \count[15]~58_combout\,
	cout => \count[15]~59\);

-- Location: FF_X19_Y9_N3
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~58_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X19_Y9_N4
\count[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~60_combout\ = (count(16) & (\count[15]~59\ $ (GND))) # (!count(16) & (!\count[15]~59\ & VCC))
-- \count[16]~61\ = CARRY((count(16) & !\count[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~59\,
	combout => \count[16]~60_combout\,
	cout => \count[16]~61\);

-- Location: FF_X19_Y9_N5
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~60_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X19_Y9_N6
\count[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~62_combout\ = (count(17) & (!\count[16]~61\)) # (!count(17) & ((\count[16]~61\) # (GND)))
-- \count[17]~63\ = CARRY((!\count[16]~61\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~61\,
	combout => \count[17]~62_combout\,
	cout => \count[17]~63\);

-- Location: FF_X19_Y9_N7
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~62_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X19_Y9_N8
\count[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~64_combout\ = (count(18) & (\count[17]~63\ $ (GND))) # (!count(18) & (!\count[17]~63\ & VCC))
-- \count[18]~65\ = CARRY((count(18) & !\count[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~63\,
	combout => \count[18]~64_combout\,
	cout => \count[18]~65\);

-- Location: FF_X19_Y9_N9
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~64_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X19_Y9_N10
\count[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~66_combout\ = (count(19) & (!\count[18]~65\)) # (!count(19) & ((\count[18]~65\) # (GND)))
-- \count[19]~67\ = CARRY((!\count[18]~65\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~65\,
	combout => \count[19]~66_combout\,
	cout => \count[19]~67\);

-- Location: FF_X19_Y9_N11
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~66_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X19_Y9_N12
\count[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~68_combout\ = (count(20) & (\count[19]~67\ $ (GND))) # (!count(20) & (!\count[19]~67\ & VCC))
-- \count[20]~69\ = CARRY((count(20) & !\count[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~67\,
	combout => \count[20]~68_combout\,
	cout => \count[20]~69\);

-- Location: FF_X19_Y9_N13
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~68_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X19_Y9_N14
\count[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~70_combout\ = (count(21) & (!\count[20]~69\)) # (!count(21) & ((\count[20]~69\) # (GND)))
-- \count[21]~71\ = CARRY((!\count[20]~69\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~69\,
	combout => \count[21]~70_combout\,
	cout => \count[21]~71\);

-- Location: FF_X19_Y9_N15
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~70_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X21_Y9_N12
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!count(20) & !count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(20),
	datad => count(21),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y9_N14
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!count(16) & (!count(17) & (!count(15) & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => count(15),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X19_Y9_N16
\count[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~72_combout\ = (count(22) & (\count[21]~71\ $ (GND))) # (!count(22) & (!\count[21]~71\ & VCC))
-- \count[22]~73\ = CARRY((count(22) & !\count[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~71\,
	combout => \count[22]~72_combout\,
	cout => \count[22]~73\);

-- Location: FF_X19_Y9_N17
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~72_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X21_Y9_N0
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ((\LessThan2~1_combout\ & ((!count(19)) # (!count(18))))) # (!count(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => count(22),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X19_Y9_N18
\count[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~74_combout\ = (count(23) & (!\count[22]~73\)) # (!count(23) & ((\count[22]~73\) # (GND)))
-- \count[23]~75\ = CARRY((!\count[22]~73\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~73\,
	combout => \count[23]~74_combout\,
	cout => \count[23]~75\);

-- Location: FF_X19_Y9_N19
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~74_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X19_Y9_N20
\count[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~76_combout\ = (count(24) & (\count[23]~75\ $ (GND))) # (!count(24) & (!\count[23]~75\ & VCC))
-- \count[24]~77\ = CARRY((count(24) & !\count[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~75\,
	combout => \count[24]~76_combout\,
	cout => \count[24]~77\);

-- Location: FF_X19_Y9_N21
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~76_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X19_Y9_N22
\count[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~78_combout\ = (count(25) & (!\count[24]~77\)) # (!count(25) & ((\count[24]~77\) # (GND)))
-- \count[25]~79\ = CARRY((!\count[24]~77\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \count[24]~77\,
	combout => \count[25]~78_combout\,
	cout => \count[25]~79\);

-- Location: FF_X19_Y9_N23
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~78_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X19_Y9_N24
\count[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~80_combout\ = (count(26) & (\count[25]~79\ $ (GND))) # (!count(26) & (!\count[25]~79\ & VCC))
-- \count[26]~81\ = CARRY((count(26) & !\count[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~79\,
	combout => \count[26]~80_combout\,
	cout => \count[26]~81\);

-- Location: FF_X19_Y9_N25
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~80_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X19_Y9_N26
\count[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~82_combout\ = count(27) $ (\count[26]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	cin => \count[26]~81\,
	combout => \count[27]~82_combout\);

-- Location: FF_X19_Y9_N27
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~82_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X19_Y9_N28
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!count(24) & !count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => count(23),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X19_Y9_N30
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!count(25) & (!count(26) & (!count(27) & \LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(26),
	datac => count(27),
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X21_Y9_N10
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (((!count(6) & !count(7))) # (!count(9))) # (!count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(6),
	datad => count(7),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X21_Y9_N28
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!count(13) & (!count(12) & !count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datac => count(12),
	datad => count(10),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X21_Y9_N2
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!count(12) & (!count(11) & !count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datac => count(11),
	datad => count(13),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y9_N6
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ((\LessThan2~0_combout\) # ((\LessThan2~6_combout\ & \LessThan2~7_combout\))) # (!count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~6_combout\,
	datab => \LessThan2~7_combout\,
	datac => count(14),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X19_Y10_N2
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~4_combout\ & ((\LessThan2~5_combout\) # ((\LessThan2~2_combout\ & \LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~5_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: FF_X19_Y10_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~28_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X19_Y10_N6
\count[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~30_combout\ = (count(1) & (!\count[0]~29\)) # (!count(1) & ((\count[0]~29\) # (GND)))
-- \count[1]~31\ = CARRY((!\count[0]~29\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~29\,
	combout => \count[1]~30_combout\,
	cout => \count[1]~31\);

-- Location: FF_X19_Y10_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~30_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X19_Y10_N8
\count[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~32_combout\ = (count(2) & (\count[1]~31\ $ (GND))) # (!count(2) & (!\count[1]~31\ & VCC))
-- \count[2]~33\ = CARRY((count(2) & !\count[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~31\,
	combout => \count[2]~32_combout\,
	cout => \count[2]~33\);

-- Location: FF_X19_Y10_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~32_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X19_Y10_N10
\count[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~34_combout\ = (count(3) & (!\count[2]~33\)) # (!count(3) & ((\count[2]~33\) # (GND)))
-- \count[3]~35\ = CARRY((!\count[2]~33\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~33\,
	combout => \count[3]~34_combout\,
	cout => \count[3]~35\);

-- Location: FF_X19_Y10_N11
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~34_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X19_Y10_N12
\count[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~36_combout\ = (count(4) & (\count[3]~35\ $ (GND))) # (!count(4) & (!\count[3]~35\ & VCC))
-- \count[4]~37\ = CARRY((count(4) & !\count[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~35\,
	combout => \count[4]~36_combout\,
	cout => \count[4]~37\);

-- Location: FF_X19_Y10_N13
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~36_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X19_Y10_N14
\count[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~38_combout\ = (count(5) & (!\count[4]~37\)) # (!count(5) & ((\count[4]~37\) # (GND)))
-- \count[5]~39\ = CARRY((!\count[4]~37\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~37\,
	combout => \count[5]~38_combout\,
	cout => \count[5]~39\);

-- Location: FF_X19_Y10_N15
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~38_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X19_Y10_N17
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~40_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X19_Y10_N0
\external~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~2_combout\ = (!count(6) & (!count(8) & (!count(5) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(8),
	datac => count(5),
	datad => count(7),
	combout => \external~2_combout\);

-- Location: LCCOMB_X21_Y9_N26
\external~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~3_combout\ = (!count(18) & (!count(9) & (!count(14) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(9),
	datac => count(14),
	datad => count(10),
	combout => \external~3_combout\);

-- Location: LCCOMB_X21_Y9_N20
\external~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~4_combout\ = (!count(19) & (!count(23) & !count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(23),
	datac => count(22),
	combout => \external~4_combout\);

-- Location: LCCOMB_X21_Y9_N22
\external~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~5_combout\ = (\external~2_combout\ & (\external~3_combout\ & \external~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \external~2_combout\,
	datac => \external~3_combout\,
	datad => \external~4_combout\,
	combout => \external~5_combout\);

-- Location: LCCOMB_X11_Y2_N0
\external~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~0_combout\ = ((!count(2) & ((!count(1)) # (!count(0))))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => count(3),
	combout => \external~0_combout\);

-- Location: LCCOMB_X21_Y9_N24
\external~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~1_combout\ = (\external~0_combout\ & (!count(4) & (\LessThan2~2_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \external~0_combout\,
	datab => count(4),
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~0_combout\,
	combout => \external~1_combout\);

-- Location: LCCOMB_X21_Y9_N8
\external~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \external~6_combout\ = (\LessThan2~9_combout\ & (\external~5_combout\ & ((\external~1_combout\)))) # (!\LessThan2~9_combout\ & (((\external~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \external~5_combout\,
	datab => \LessThan2~9_combout\,
	datac => \external~q\,
	datad => \external~1_combout\,
	combout => \external~6_combout\);

-- Location: FF_X21_Y9_N9
external : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \external~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \external~q\);

-- Location: FF_X30_Y23_N27
tx_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \external~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_en~q\);

-- Location: LCCOMB_X28_Y23_N16
\bps_start_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bps_start_r~0_combout\ = (\external~q\) # ((\bps_start_r~q\ & !\tx_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \external~q\,
	datac => \bps_start_r~q\,
	datad => \tx_en~q\,
	combout => \bps_start_r~0_combout\);

-- Location: FF_X28_Y23_N17
bps_start_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bps_start_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bps_start_r~q\);

-- Location: LCCOMB_X24_Y23_N0
\speed_select|cnt[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[0]~13_combout\ = \speed_select|cnt\(0) $ (VCC)
-- \speed_select|cnt[0]~14\ = CARRY(\speed_select|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(0),
	datad => VCC,
	combout => \speed_select|cnt[0]~13_combout\,
	cout => \speed_select|cnt[0]~14\);

-- Location: IOIBUF_X0_Y11_N22
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G0
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y23_N6
\speed_select|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|Equal0~3_combout\ = (!\speed_select|cnt\(6) & (!\speed_select|cnt\(3) & (\speed_select|cnt\(0) & \speed_select|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(6),
	datab => \speed_select|cnt\(3),
	datac => \speed_select|cnt\(0),
	datad => \speed_select|cnt\(5),
	combout => \speed_select|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y23_N12
\speed_select|cnt[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[6]~25_combout\ = (\speed_select|cnt\(6) & (\speed_select|cnt[5]~24\ $ (GND))) # (!\speed_select|cnt\(6) & (!\speed_select|cnt[5]~24\ & VCC))
-- \speed_select|cnt[6]~26\ = CARRY((\speed_select|cnt\(6) & !\speed_select|cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(6),
	datad => VCC,
	cin => \speed_select|cnt[5]~24\,
	combout => \speed_select|cnt[6]~25_combout\,
	cout => \speed_select|cnt[6]~26\);

-- Location: LCCOMB_X24_Y23_N14
\speed_select|cnt[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[7]~27_combout\ = (\speed_select|cnt\(7) & (!\speed_select|cnt[6]~26\)) # (!\speed_select|cnt\(7) & ((\speed_select|cnt[6]~26\) # (GND)))
-- \speed_select|cnt[7]~28\ = CARRY((!\speed_select|cnt[6]~26\) # (!\speed_select|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(7),
	datad => VCC,
	cin => \speed_select|cnt[6]~26\,
	combout => \speed_select|cnt[7]~27_combout\,
	cout => \speed_select|cnt[7]~28\);

-- Location: FF_X24_Y23_N15
\speed_select|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[7]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(7));

-- Location: LCCOMB_X24_Y23_N16
\speed_select|cnt[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[8]~29_combout\ = (\speed_select|cnt\(8) & (\speed_select|cnt[7]~28\ $ (GND))) # (!\speed_select|cnt\(8) & (!\speed_select|cnt[7]~28\ & VCC))
-- \speed_select|cnt[8]~30\ = CARRY((\speed_select|cnt\(8) & !\speed_select|cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(8),
	datad => VCC,
	cin => \speed_select|cnt[7]~28\,
	combout => \speed_select|cnt[8]~29_combout\,
	cout => \speed_select|cnt[8]~30\);

-- Location: FF_X24_Y23_N17
\speed_select|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[8]~29_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(8));

-- Location: LCCOMB_X24_Y23_N18
\speed_select|cnt[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[9]~31_combout\ = (\speed_select|cnt\(9) & (!\speed_select|cnt[8]~30\)) # (!\speed_select|cnt\(9) & ((\speed_select|cnt[8]~30\) # (GND)))
-- \speed_select|cnt[9]~32\ = CARRY((!\speed_select|cnt[8]~30\) # (!\speed_select|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(9),
	datad => VCC,
	cin => \speed_select|cnt[8]~30\,
	combout => \speed_select|cnt[9]~31_combout\,
	cout => \speed_select|cnt[9]~32\);

-- Location: FF_X24_Y23_N19
\speed_select|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[9]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(9));

-- Location: LCCOMB_X24_Y23_N20
\speed_select|cnt[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[10]~33_combout\ = (\speed_select|cnt\(10) & (\speed_select|cnt[9]~32\ $ (GND))) # (!\speed_select|cnt\(10) & (!\speed_select|cnt[9]~32\ & VCC))
-- \speed_select|cnt[10]~34\ = CARRY((\speed_select|cnt\(10) & !\speed_select|cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(10),
	datad => VCC,
	cin => \speed_select|cnt[9]~32\,
	combout => \speed_select|cnt[10]~33_combout\,
	cout => \speed_select|cnt[10]~34\);

-- Location: FF_X24_Y23_N21
\speed_select|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[10]~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(10));

-- Location: LCCOMB_X24_Y23_N22
\speed_select|cnt[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[11]~35_combout\ = (\speed_select|cnt\(11) & (!\speed_select|cnt[10]~34\)) # (!\speed_select|cnt\(11) & ((\speed_select|cnt[10]~34\) # (GND)))
-- \speed_select|cnt[11]~36\ = CARRY((!\speed_select|cnt[10]~34\) # (!\speed_select|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(11),
	datad => VCC,
	cin => \speed_select|cnt[10]~34\,
	combout => \speed_select|cnt[11]~35_combout\,
	cout => \speed_select|cnt[11]~36\);

-- Location: FF_X24_Y23_N23
\speed_select|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[11]~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(11));

-- Location: LCCOMB_X24_Y23_N24
\speed_select|cnt[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[12]~37_combout\ = \speed_select|cnt[11]~36\ $ (!\speed_select|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \speed_select|cnt\(12),
	cin => \speed_select|cnt[11]~36\,
	combout => \speed_select|cnt[12]~37_combout\);

-- Location: FF_X24_Y23_N25
\speed_select|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[12]~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(12));

-- Location: LCCOMB_X24_Y23_N28
\speed_select|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|Equal0~1_combout\ = (!\speed_select|cnt\(12) & (!\speed_select|cnt\(9) & (!\speed_select|cnt\(11) & !\speed_select|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(12),
	datab => \speed_select|cnt\(9),
	datac => \speed_select|cnt\(11),
	datad => \speed_select|cnt\(10),
	combout => \speed_select|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y23_N26
\speed_select|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|Equal0~0_combout\ = (\speed_select|cnt\(4) & (\speed_select|cnt\(7) & (!\speed_select|cnt\(2) & !\speed_select|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(4),
	datab => \speed_select|cnt\(7),
	datac => \speed_select|cnt\(2),
	datad => \speed_select|cnt\(1),
	combout => \speed_select|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y23_N2
\speed_select|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|Equal0~2_combout\ = (\speed_select|Equal0~1_combout\ & \speed_select|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|Equal0~1_combout\,
	datac => \speed_select|Equal0~0_combout\,
	combout => \speed_select|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y23_N30
\speed_select|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|always0~0_combout\ = ((\speed_select|Equal0~3_combout\ & (\speed_select|cnt\(8) & \speed_select|Equal0~2_combout\))) # (!\bps_start_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|Equal0~3_combout\,
	datab => \speed_select|cnt\(8),
	datac => \bps_start_r~q\,
	datad => \speed_select|Equal0~2_combout\,
	combout => \speed_select|always0~0_combout\);

-- Location: FF_X24_Y23_N1
\speed_select|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[0]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(0));

-- Location: LCCOMB_X24_Y23_N2
\speed_select|cnt[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[1]~15_combout\ = (\speed_select|cnt\(1) & (!\speed_select|cnt[0]~14\)) # (!\speed_select|cnt\(1) & ((\speed_select|cnt[0]~14\) # (GND)))
-- \speed_select|cnt[1]~16\ = CARRY((!\speed_select|cnt[0]~14\) # (!\speed_select|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(1),
	datad => VCC,
	cin => \speed_select|cnt[0]~14\,
	combout => \speed_select|cnt[1]~15_combout\,
	cout => \speed_select|cnt[1]~16\);

-- Location: FF_X24_Y23_N3
\speed_select|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[1]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(1));

-- Location: LCCOMB_X24_Y23_N4
\speed_select|cnt[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[2]~17_combout\ = (\speed_select|cnt\(2) & (\speed_select|cnt[1]~16\ $ (GND))) # (!\speed_select|cnt\(2) & (!\speed_select|cnt[1]~16\ & VCC))
-- \speed_select|cnt[2]~18\ = CARRY((\speed_select|cnt\(2) & !\speed_select|cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(2),
	datad => VCC,
	cin => \speed_select|cnt[1]~16\,
	combout => \speed_select|cnt[2]~17_combout\,
	cout => \speed_select|cnt[2]~18\);

-- Location: FF_X24_Y23_N5
\speed_select|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[2]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(2));

-- Location: LCCOMB_X24_Y23_N6
\speed_select|cnt[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[3]~19_combout\ = (\speed_select|cnt\(3) & (!\speed_select|cnt[2]~18\)) # (!\speed_select|cnt\(3) & ((\speed_select|cnt[2]~18\) # (GND)))
-- \speed_select|cnt[3]~20\ = CARRY((!\speed_select|cnt[2]~18\) # (!\speed_select|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(3),
	datad => VCC,
	cin => \speed_select|cnt[2]~18\,
	combout => \speed_select|cnt[3]~19_combout\,
	cout => \speed_select|cnt[3]~20\);

-- Location: FF_X24_Y23_N7
\speed_select|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[3]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(3));

-- Location: LCCOMB_X24_Y23_N8
\speed_select|cnt[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[4]~21_combout\ = (\speed_select|cnt\(4) & (\speed_select|cnt[3]~20\ $ (GND))) # (!\speed_select|cnt\(4) & (!\speed_select|cnt[3]~20\ & VCC))
-- \speed_select|cnt[4]~22\ = CARRY((\speed_select|cnt\(4) & !\speed_select|cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|cnt\(4),
	datad => VCC,
	cin => \speed_select|cnt[3]~20\,
	combout => \speed_select|cnt[4]~21_combout\,
	cout => \speed_select|cnt[4]~22\);

-- Location: FF_X24_Y23_N9
\speed_select|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[4]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(4));

-- Location: LCCOMB_X24_Y23_N10
\speed_select|cnt[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|cnt[5]~23_combout\ = (\speed_select|cnt\(5) & (!\speed_select|cnt[4]~22\)) # (!\speed_select|cnt\(5) & ((\speed_select|cnt[4]~22\) # (GND)))
-- \speed_select|cnt[5]~24\ = CARRY((!\speed_select|cnt[4]~22\) # (!\speed_select|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(5),
	datad => VCC,
	cin => \speed_select|cnt[4]~22\,
	combout => \speed_select|cnt[5]~23_combout\,
	cout => \speed_select|cnt[5]~24\);

-- Location: FF_X24_Y23_N11
\speed_select|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[5]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(5));

-- Location: FF_X24_Y23_N13
\speed_select|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|cnt[6]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \speed_select|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|cnt\(6));

-- Location: LCCOMB_X25_Y23_N12
\speed_select|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|always1~0_combout\ = (!\speed_select|cnt\(0) & (\bps_start_r~q\ & (\speed_select|cnt\(3) & !\speed_select|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(0),
	datab => \bps_start_r~q\,
	datac => \speed_select|cnt\(3),
	datad => \speed_select|cnt\(5),
	combout => \speed_select|always1~0_combout\);

-- Location: LCCOMB_X25_Y23_N24
\speed_select|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_select|always1~1_combout\ = (\speed_select|cnt\(6) & (\speed_select|Equal0~2_combout\ & (!\speed_select|cnt\(8) & \speed_select|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_select|cnt\(6),
	datab => \speed_select|Equal0~2_combout\,
	datac => \speed_select|cnt\(8),
	datad => \speed_select|always1~0_combout\,
	combout => \speed_select|always1~1_combout\);

-- Location: FF_X25_Y23_N25
\speed_select|clk_bps_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_select|always1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_select|clk_bps_r~q\);

-- Location: LCCOMB_X30_Y23_N6
\comb_225|num[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[0]~4_combout\ = (\tx_en~q\ & ((\speed_select|clk_bps_r~q\ & (!\comb_225|num\(0))) # (!\speed_select|clk_bps_r~q\ & (\comb_225|num\(0) & !\comb_225|num[3]~1_combout\)))) # (!\tx_en~q\ & (((\comb_225|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_en~q\,
	datab => \speed_select|clk_bps_r~q\,
	datac => \comb_225|num\(0),
	datad => \comb_225|num[3]~1_combout\,
	combout => \comb_225|num[0]~4_combout\);

-- Location: FF_X30_Y23_N7
\comb_225|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_225|num[0]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_225|num\(0));

-- Location: LCCOMB_X30_Y23_N4
\comb_225|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|Add0~0_combout\ = \comb_225|num\(2) $ (((\comb_225|num\(0) & \comb_225|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(0),
	datac => \comb_225|num\(2),
	datad => \comb_225|num\(1),
	combout => \comb_225|Add0~0_combout\);

-- Location: LCCOMB_X30_Y23_N30
\comb_225|num[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[2]~5_combout\ = (\comb_225|num[3]~2_combout\ & (\comb_225|Add0~0_combout\ & ((\speed_select|clk_bps_r~q\)))) # (!\comb_225|num[3]~2_combout\ & (((\comb_225|num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num[3]~2_combout\,
	datab => \comb_225|Add0~0_combout\,
	datac => \comb_225|num\(2),
	datad => \speed_select|clk_bps_r~q\,
	combout => \comb_225|num[2]~5_combout\);

-- Location: FF_X30_Y23_N31
\comb_225|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_225|num[2]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_225|num\(2));

-- Location: LCCOMB_X30_Y23_N24
\comb_225|num[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[3]~1_combout\ = (\comb_225|num\(3) & (\comb_225|num\(1) & (!\comb_225|num\(2) & \comb_225|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(3),
	datab => \comb_225|num\(1),
	datac => \comb_225|num\(2),
	datad => \comb_225|num\(0),
	combout => \comb_225|num[3]~1_combout\);

-- Location: LCCOMB_X30_Y23_N10
\comb_225|num[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[3]~2_combout\ = (\tx_en~q\ & ((\speed_select|clk_bps_r~q\) # (\comb_225|num[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_select|clk_bps_r~q\,
	datac => \tx_en~q\,
	datad => \comb_225|num[3]~1_combout\,
	combout => \comb_225|num[3]~2_combout\);

-- Location: LCCOMB_X30_Y23_N20
\comb_225|num[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[1]~3_combout\ = (\comb_225|num[3]~2_combout\ & (\speed_select|clk_bps_r~q\ & (\comb_225|num\(1) $ (\comb_225|num\(0))))) # (!\comb_225|num[3]~2_combout\ & (((\comb_225|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num[3]~2_combout\,
	datab => \speed_select|clk_bps_r~q\,
	datac => \comb_225|num\(1),
	datad => \comb_225|num\(0),
	combout => \comb_225|num[1]~3_combout\);

-- Location: FF_X30_Y23_N21
\comb_225|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_225|num[1]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_225|num\(1));

-- Location: LCCOMB_X30_Y23_N22
\comb_225|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|Add0~1_combout\ = \comb_225|num\(3) $ (((\comb_225|num\(1) & (\comb_225|num\(2) & \comb_225|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(3),
	datab => \comb_225|num\(1),
	datac => \comb_225|num\(2),
	datad => \comb_225|num\(0),
	combout => \comb_225|Add0~1_combout\);

-- Location: LCCOMB_X30_Y23_N12
\comb_225|num[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[3]~6_combout\ = (\comb_225|num[3]~2_combout\ & (\comb_225|Add0~1_combout\ & (\speed_select|clk_bps_r~q\))) # (!\comb_225|num[3]~2_combout\ & (((\comb_225|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|Add0~1_combout\,
	datab => \speed_select|clk_bps_r~q\,
	datac => \comb_225|num\(3),
	datad => \comb_225|num[3]~2_combout\,
	combout => \comb_225|num[3]~6_combout\);

-- Location: FF_X30_Y23_N13
\comb_225|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_225|num[3]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_225|num\(3));

-- Location: FF_X30_Y23_N19
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => cnt(7),
	sload => VCC,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: LCCOMB_X30_Y23_N18
\comb_225|rs232_tx_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|rs232_tx_r~3_combout\ = (\comb_225|num\(2)) # ((\comb_225|num\(1)) # ((data(7)) # (\comb_225|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(2),
	datab => \comb_225|num\(1),
	datac => data(7),
	datad => \comb_225|num\(0),
	combout => \comb_225|rs232_tx_r~3_combout\);

-- Location: LCCOMB_X30_Y23_N26
\comb_225|num[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|num[0]~0_combout\ = (\tx_en~q\ & \speed_select|clk_bps_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_en~q\,
	datad => \speed_select|clk_bps_r~q\,
	combout => \comb_225|num[0]~0_combout\);

-- Location: LCCOMB_X30_Y23_N14
\comb_225|rs232_tx_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|rs232_tx_r~4_combout\ = (\comb_225|num[0]~0_combout\ & (\comb_225|num\(3) & (\comb_225|rs232_tx_r~3_combout\))) # (!\comb_225|num[0]~0_combout\ & (((!\comb_225|rs232_tx_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(3),
	datab => \comb_225|rs232_tx_r~3_combout\,
	datac => \comb_225|num[0]~0_combout\,
	datad => \comb_225|rs232_tx_r~q\,
	combout => \comb_225|rs232_tx_r~4_combout\);

-- Location: LCCOMB_X30_Y23_N8
\data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[2]~feeder_combout\ = cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	combout => \data[2]~feeder_combout\);

-- Location: FF_X30_Y23_N9
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[2]~feeder_combout\,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: FF_X30_Y23_N3
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => cnt(0),
	sload => VCC,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X30_Y23_N2
\comb_225|rs232_tx_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|rs232_tx_r~0_combout\ = (\comb_225|num\(0) & ((\comb_225|num\(1) & (data(2))) # (!\comb_225|num\(1) & ((data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(0),
	datab => data(2),
	datac => data(0),
	datad => \comb_225|num\(1),
	combout => \comb_225|rs232_tx_r~0_combout\);

-- Location: FF_X30_Y23_N29
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => cnt(1),
	sload => VCC,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X30_Y23_N28
\comb_225|rs232_tx_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|rs232_tx_r~1_combout\ = (\comb_225|rs232_tx_r~0_combout\) # ((!\comb_225|num\(0) & (data(1) & \comb_225|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(0),
	datab => \comb_225|rs232_tx_r~0_combout\,
	datac => data(1),
	datad => \comb_225|num\(1),
	combout => \comb_225|rs232_tx_r~1_combout\);

-- Location: LCCOMB_X28_Y23_N12
\data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[5]~feeder_combout\ = cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	combout => \data[5]~feeder_combout\);

-- Location: FF_X28_Y23_N13
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[5]~feeder_combout\,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: LCCOMB_X28_Y23_N6
\data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]~feeder_combout\ = cnt(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	combout => \data[4]~feeder_combout\);

-- Location: FF_X28_Y23_N7
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[4]~feeder_combout\,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: FF_X28_Y23_N1
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => cnt(3),
	sload => VCC,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X28_Y23_N0
\comb_225|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|Mux0~0_combout\ = (\comb_225|num\(0) & ((data(4)) # ((\comb_225|num\(1))))) # (!\comb_225|num\(0) & (((data(3) & !\comb_225|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(4),
	datab => \comb_225|num\(0),
	datac => data(3),
	datad => \comb_225|num\(1),
	combout => \comb_225|Mux0~0_combout\);

-- Location: FF_X28_Y23_N27
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => cnt(6),
	sload => VCC,
	ena => \external~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: LCCOMB_X28_Y23_N26
\comb_225|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|Mux0~1_combout\ = (\comb_225|Mux0~0_combout\ & (((data(6)) # (!\comb_225|num\(1))))) # (!\comb_225|Mux0~0_combout\ & (data(5) & ((\comb_225|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(5),
	datab => \comb_225|Mux0~0_combout\,
	datac => data(6),
	datad => \comb_225|num\(1),
	combout => \comb_225|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y23_N0
\comb_225|rs232_tx_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|rs232_tx_r~2_combout\ = (\comb_225|num[0]~0_combout\ & ((\comb_225|num\(2) & ((\comb_225|Mux0~1_combout\))) # (!\comb_225|num\(2) & (\comb_225|rs232_tx_r~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|num\(2),
	datab => \comb_225|rs232_tx_r~1_combout\,
	datac => \comb_225|num[0]~0_combout\,
	datad => \comb_225|Mux0~1_combout\,
	combout => \comb_225|rs232_tx_r~2_combout\);

-- Location: LCCOMB_X30_Y23_N16
\comb_225|rs232_tx_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_225|rs232_tx_r~5_combout\ = (!\comb_225|rs232_tx_r~4_combout\ & !\comb_225|rs232_tx_r~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_225|rs232_tx_r~4_combout\,
	datad => \comb_225|rs232_tx_r~2_combout\,
	combout => \comb_225|rs232_tx_r~5_combout\);

-- Location: FF_X30_Y23_N17
\comb_225|rs232_tx_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_225|rs232_tx_r~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_225|rs232_tx_r~q\);
END structure;


