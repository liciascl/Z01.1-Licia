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

-- DATE "01/17/2019 14:49:38"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HalfAdder IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	soma : OUT std_logic;
	vaium : OUT std_logic
	);
END HalfAdder;

-- Design Ports Information
-- soma	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vaium	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HalfAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_soma : std_logic;
SIGNAL ww_vaium : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \soma~0_combout\ : std_logic;
SIGNAL \vaium~0_combout\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
soma <= ww_soma;
vaium <= ww_vaium;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X0_Y20_N5
\soma~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~0_combout\,
	devoe => ww_devoe,
	o => ww_soma);

-- Location: IOOBUF_X0_Y20_N56
\vaium~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vaium~0_combout\,
	devoe => ww_devoe,
	o => ww_vaium);

-- Location: IOIBUF_X0_Y20_N21
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X1_Y20_N0
\soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~0_combout\ = ( !\a~input_o\ & ( \b~input_o\ ) ) # ( \a~input_o\ & ( !\b~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_a~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \soma~0_combout\);

-- Location: LABCELL_X1_Y20_N9
\vaium~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vaium~0_combout\ = ( \a~input_o\ & ( \b~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_a~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \vaium~0_combout\);

-- Location: MLABCELL_X9_Y26_N3
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


