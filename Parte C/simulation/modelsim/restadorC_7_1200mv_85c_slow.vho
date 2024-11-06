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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/06/2024 16:32:50"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	esquematicoC IS
    PORT (
	borrout : OUT std_logic;
	r4 : OUT std_logic;
	PRN : IN std_logic;
	CLK : IN std_logic;
	a4 : IN std_logic;
	b4 : IN std_logic;
	a3 : IN std_logic;
	b3 : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	a1 : IN std_logic;
	b1 : IN std_logic;
	borrin : IN std_logic;
	r3 : OUT std_logic;
	r2 : OUT std_logic;
	r1 : OUT std_logic
	);
END esquematicoC;

-- Design Ports Information
-- borrout	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRN	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- borrin	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF esquematicoC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_borrout : std_logic;
SIGNAL ww_r4 : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_borrin : std_logic;
SIGNAL ww_r3 : std_logic;
SIGNAL ww_r2 : std_logic;
SIGNAL ww_r1 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PRN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \borrout~output_o\ : std_logic;
SIGNAL \r4~output_o\ : std_logic;
SIGNAL \r3~output_o\ : std_logic;
SIGNAL \r2~output_o\ : std_logic;
SIGNAL \r1~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \inst4~feeder_combout\ : std_logic;
SIGNAL \PRN~input_o\ : std_logic;
SIGNAL \PRN~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \inst7~feeder_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \borrin~input_o\ : std_logic;
SIGNAL \inst12~feeder_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \inst10~feeder_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst|borrout~0_combout\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \inst5~feeder_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \b4~input_o\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \a4~input_o\ : std_logic;
SIGNAL \inst6~feeder_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst3|resta~0_combout\ : std_logic;
SIGNAL \inst3|resta~combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \inst9~feeder_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst1|borrout~0_combout\ : std_logic;
SIGNAL \inst2|borrout~0_combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \inst8~feeder_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst1|resta~combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst|resta~0_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;

BEGIN

borrout <= ww_borrout;
r4 <= ww_r4;
ww_PRN <= PRN;
ww_CLK <= CLK;
ww_a4 <= a4;
ww_b4 <= b4;
ww_a3 <= a3;
ww_b3 <= b3;
ww_a2 <= a2;
ww_b2 <= b2;
ww_a1 <= a1;
ww_b1 <= b1;
ww_borrin <= borrin;
r3 <= ww_r3;
r2 <= ww_r2;
r1 <= ww_r1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\PRN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PRN~input_o\);

-- Location: IOOBUF_X20_Y0_N2
\borrout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \borrout~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\r4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \r4~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\r3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \r3~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\r2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \r2~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\r1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \r1~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N8
\a2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LCCOMB_X1_Y4_N4
\inst4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~feeder_combout\ = \a2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2~input_o\,
	combout => \inst4~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N8
\PRN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PRN,
	o => \PRN~input_o\);

-- Location: CLKCTRL_G2
\PRN~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PRN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PRN~inputclkctrl_outclk\);

-- Location: FF_X1_Y4_N5
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: IOIBUF_X1_Y0_N1
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X1_Y4_N14
\inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~feeder_combout\ = \b1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b1~input_o\,
	combout => \inst7~feeder_combout\);

-- Location: FF_X1_Y4_N15
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: IOIBUF_X1_Y0_N22
\borrin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_borrin,
	o => \borrin~input_o\);

-- Location: LCCOMB_X1_Y4_N8
\inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~feeder_combout\ = \borrin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \borrin~input_o\,
	combout => \inst12~feeder_combout\);

-- Location: FF_X1_Y4_N9
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: IOIBUF_X0_Y4_N22
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~feeder_combout\ = \a1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a1~input_o\,
	combout => \inst10~feeder_combout\);

-- Location: FF_X1_Y4_N1
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X1_Y4_N10
\inst|borrout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|borrout~0_combout\ = (\inst7~q\ & ((\inst12~q\) # (!\inst10~q\))) # (!\inst7~q\ & (\inst12~q\ & !\inst10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7~q\,
	datac => \inst12~q\,
	datad => \inst10~q\,
	combout => \inst|borrout~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\a3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~feeder_combout\ = \a3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a3~input_o\,
	combout => \inst5~feeder_combout\);

-- Location: FF_X1_Y4_N17
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: IOIBUF_X0_Y6_N1
\b4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4,
	o => \b4~input_o\);

-- Location: FF_X1_Y4_N7
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \b4~input_o\,
	clrn => \PRN~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: IOIBUF_X3_Y0_N1
\a4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4,
	o => \a4~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\inst6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~feeder_combout\ = \a4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a4~input_o\,
	combout => \inst6~feeder_combout\);

-- Location: FF_X1_Y4_N25
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X1_Y4_N6
\inst3|resta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|resta~0_combout\ = \inst9~q\ $ (\inst5~q\ $ (\inst11~q\ $ (\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst5~q\,
	datac => \inst11~q\,
	datad => \inst6~q\,
	combout => \inst3|resta~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\inst3|resta\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|resta~combout\ = \inst3|resta~0_combout\ $ (((\inst8~q\ & ((\inst|borrout~0_combout\) # (!\inst4~q\))) # (!\inst8~q\ & (!\inst4~q\ & \inst|borrout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datab => \inst4~q\,
	datac => \inst|borrout~0_combout\,
	datad => \inst3|resta~0_combout\,
	combout => \inst3|resta~combout\);

-- Location: FF_X1_Y4_N29
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|resta~combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: IOIBUF_X1_Y0_N15
\b3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\inst9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~feeder_combout\ = \b3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b3~input_o\,
	combout => \inst9~feeder_combout\);

-- Location: FF_X1_Y4_N27
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X1_Y4_N12
\inst1|borrout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|borrout~0_combout\ = (\inst8~q\ & ((\inst|borrout~0_combout\) # (!\inst4~q\))) # (!\inst8~q\ & (!\inst4~q\ & \inst|borrout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datac => \inst4~q\,
	datad => \inst|borrout~0_combout\,
	combout => \inst1|borrout~0_combout\);

-- Location: LCCOMB_X1_Y4_N30
\inst2|borrout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|borrout~0_combout\ = (\inst5~q\ & (\inst9~q\ & \inst1|borrout~0_combout\)) # (!\inst5~q\ & ((\inst9~q\) # (\inst1|borrout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~q\,
	datac => \inst9~q\,
	datad => \inst1|borrout~0_combout\,
	combout => \inst2|borrout~0_combout\);

-- Location: FF_X1_Y4_N31
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|borrout~0_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: IOIBUF_X1_Y0_N8
\b2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~feeder_combout\ = \b2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2~input_o\,
	combout => \inst8~feeder_combout\);

-- Location: FF_X1_Y4_N23
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8~feeder_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X1_Y4_N20
\inst1|resta\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|resta~combout\ = \inst4~q\ $ (\inst8~q\ $ (\inst|borrout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst8~q\,
	datad => \inst|borrout~0_combout\,
	combout => \inst1|resta~combout\);

-- Location: FF_X1_Y4_N21
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|resta~combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X1_Y4_N18
\inst|resta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|resta~0_combout\ = \inst12~q\ $ (\inst7~q\ $ (\inst10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst7~q\,
	datad => \inst10~q\,
	combout => \inst|resta~0_combout\);

-- Location: FF_X1_Y4_N19
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|resta~0_combout\,
	clrn => \PRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

ww_borrout <= \borrout~output_o\;

ww_r4 <= \r4~output_o\;

ww_r3 <= \r3~output_o\;

ww_r2 <= \r2~output_o\;

ww_r1 <= \r1~output_o\;
END structure;


