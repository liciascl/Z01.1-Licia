-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "01/17/2019 16:44:59"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLevel IS
    PORT (
	fpga_clk_50 : IN std_logic;
	fpga_led_pio : OUT std_logic_vector(5 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- fpga_led_pio[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_led_pio[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_led_pio[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_led_pio[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_led_pio[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_led_pio[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_clk_50	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpga_clk_50 : std_logic;
SIGNAL ww_fpga_led_pio : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fpga_clk_50~input_o\ : std_logic;
SIGNAL \fpga_clk_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \blink~0_combout\ : std_logic;
SIGNAL \blink~q\ : std_logic;
SIGNAL counter : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_blink~q\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_fpga_clk_50 <= fpga_clk_50;
fpga_led_pio <= ww_fpga_led_pio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_counter[25]~DUPLICATE_q\ <= NOT \counter[25]~DUPLICATE_q\;
\ALT_INV_counter[27]~DUPLICATE_q\ <= NOT \counter[27]~DUPLICATE_q\;
\ALT_INV_counter[19]~DUPLICATE_q\ <= NOT \counter[19]~DUPLICATE_q\;
\ALT_INV_counter[17]~DUPLICATE_q\ <= NOT \counter[17]~DUPLICATE_q\;
\ALT_INV_counter[10]~DUPLICATE_q\ <= NOT \counter[10]~DUPLICATE_q\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_blink~q\ <= NOT \blink~q\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(24) <= NOT counter(24);

-- Location: IOOBUF_X0_Y19_N22
\fpga_led_pio[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(0));

-- Location: IOOBUF_X0_Y19_N56
\fpga_led_pio[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(1));

-- Location: IOOBUF_X0_Y19_N39
\fpga_led_pio[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(2));

-- Location: IOOBUF_X0_Y18_N45
\fpga_led_pio[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(3));

-- Location: IOOBUF_X0_Y18_N79
\fpga_led_pio[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(4));

-- Location: IOOBUF_X0_Y18_N96
\fpga_led_pio[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => ww_fpga_led_pio(5));

-- Location: IOIBUF_X38_Y45_N1
\fpga_clk_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk_50,
	o => \fpga_clk_50~input_o\);

-- Location: CLKCTRL_G12
\fpga_clk_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk_50~input_o\,
	outclk => \fpga_clk_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X16_Y19_N30
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~110\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X16_Y19_N2
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~109_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X16_Y19_N33
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(1),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X16_Y19_N8
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~105_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X16_Y19_N36
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X16_Y19_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~101_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X16_Y19_N39
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X16_Y19_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~97_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X16_Y19_N42
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X16_Y19_N29
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~93_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X16_Y19_N45
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(5),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X16_Y19_N14
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~89_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X16_Y19_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X16_Y19_N50
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X16_Y19_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X16_Y19_N53
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X16_Y19_N54
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~26\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add0~82\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X16_Y19_N56
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X16_Y19_N57
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X16_Y19_N59
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X16_Y18_N0
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~14\ = CARRY(( \counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[10]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X16_Y18_N2
\counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y18_N3
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X16_Y18_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X16_Y18_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~10\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(12),
	cin => \Add0~18\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X16_Y18_N7
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X16_Y18_N9
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X16_Y18_N11
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X16_Y18_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~42\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(14),
	cin => \Add0~6\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X16_Y19_N20
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~41_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X16_Y18_N15
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X16_Y19_N17
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X16_Y18_N18
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~58\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(16),
	cin => \Add0~46\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X16_Y18_N20
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X16_Y18_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~30\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add0~58\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X16_Y18_N23
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X16_Y18_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(18),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X16_Y18_N26
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X16_Y18_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[19]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X16_Y18_N28
\counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y18_N30
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~50\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(20),
	cin => \Add0~38\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X16_Y18_N32
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X16_Y18_N33
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( counter(21) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(21),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X16_Y18_N35
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X16_Y18_N54
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( counter(17) & ( counter(16) & ( (counter(20) & counter(21)) ) ) ) # ( !counter(17) & ( counter(16) & ( (counter(20) & counter(21)) ) ) ) # ( counter(17) & ( !counter(16) & ( (counter(20) & counter(21)) ) ) ) # ( !counter(17) & ( 
-- !counter(16) & ( (counter(20) & (counter(21) & ((\counter[19]~DUPLICATE_q\) # (counter(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(18),
	datab => ALT_INV_counter(20),
	datac => ALT_INV_counter(21),
	datad => \ALT_INV_counter[19]~DUPLICATE_q\,
	datae => ALT_INV_counter(17),
	dataf => ALT_INV_counter(16),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X16_Y18_N36
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~62\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(22),
	cin => \Add0~54\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X16_Y18_N38
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LABCELL_X16_Y18_N39
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(23),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X16_Y18_N40
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LABCELL_X16_Y18_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~2\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(24),
	cin => \Add0~66\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X16_Y18_N43
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: FF_X16_Y18_N29
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: FF_X16_Y18_N22
\counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y19_N9
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !counter(19) & ( !\counter[17]~DUPLICATE_q\ & ( (!counter(14) & (!counter(15) & !counter(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(14),
	datab => ALT_INV_counter(15),
	datac => ALT_INV_counter(18),
	datae => ALT_INV_counter(19),
	dataf => \ALT_INV_counter[17]~DUPLICATE_q\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X16_Y19_N21
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counter(22) & !counter(23))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(22),
	datad => ALT_INV_counter(23),
	combout => \LessThan0~3_combout\);

-- Location: FF_X16_Y18_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X16_Y19_N3
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( counter(10) & ( counter(13) & ( ((counter(11) & ((counter(9)) # (counter(8))))) # (counter(12)) ) ) ) # ( !counter(10) & ( counter(13) & ( counter(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(8),
	datab => ALT_INV_counter(9),
	datac => ALT_INV_counter(12),
	datad => ALT_INV_counter(11),
	datae => ALT_INV_counter(10),
	dataf => ALT_INV_counter(13),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X16_Y18_N45
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~74\ = CARRY(( \counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[25]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X16_Y18_N47
\counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[25]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y18_N48
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(26),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X16_Y18_N49
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: FF_X16_Y18_N46
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: FF_X16_Y18_N53
\counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y18_N51
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[27]~DUPLICATE_q\,
	cin => \Add0~78\,
	sumout => \Add0~69_sumout\);

-- Location: FF_X16_Y18_N52
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LABCELL_X16_Y19_N27
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !counter(27) & ( (!counter(26) & !counter(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(26),
	datac => ALT_INV_counter(25),
	dataf => ALT_INV_counter(27),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X16_Y19_N12
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~0_combout\ & ( \LessThan0~4_combout\ & ( (counter(24) & ((!\LessThan0~3_combout\) # (\LessThan0~2_combout\))) ) ) ) # ( !\LessThan0~0_combout\ & ( \LessThan0~4_combout\ & ( (counter(24) & ((!\LessThan0~3_combout\) # 
-- ((\LessThan0~2_combout\ & !\LessThan0~1_combout\)))) ) ) ) # ( \LessThan0~0_combout\ & ( !\LessThan0~4_combout\ ) ) # ( !\LessThan0~0_combout\ & ( !\LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011000100000011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter(24),
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X16_Y19_N24
\blink~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blink~0_combout\ = ( \LessThan0~5_combout\ & ( !\blink~q\ ) ) # ( !\LessThan0~5_combout\ & ( \blink~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_blink~q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \blink~0_combout\);

-- Location: FF_X16_Y19_N25
blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink~q\);

-- Location: LABCELL_X6_Y23_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


