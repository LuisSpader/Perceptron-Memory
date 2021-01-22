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

-- DATE "01/04/2021 20:22:55"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplicador_3_8bit IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entA : IN std_logic_vector(7 DOWNTO 0);
	entB : IN std_logic_vector(7 DOWNTO 0);
	inicio : IN std_logic;
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplicador_3_8bit;

-- Design Ports Information
-- pronto	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- inicio	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[4]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[5]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[7]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[6]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[7]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador_3_8bit IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_entA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inicio : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BlocoOperativo|regA|q[1]~10_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[3]~14_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[4]~16_combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~1_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[5]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \BlocoControle|CA~0_combout\ : std_logic;
SIGNAL \BlocoControle|state.S2~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \BlocoControle|state.S2~regout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[0]~8_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \BlocoControle|state~10_combout\ : std_logic;
SIGNAL \BlocoControle|state.S1~regout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[0]~9\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[1]~11\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[2]~12_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[2]~13\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[3]~15\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[4]~17\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[5]~18_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[5]~19\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[6]~20_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[6]~21\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[7]~22_combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~2_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[4]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[7]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[6]~feeder_combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~3_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~0_combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~4_combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~5_combout\ : std_logic;
SIGNAL \BlocoControle|state.S0~regout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[0]~8_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[0]~9\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[1]~10_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[1]~11\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[2]~12_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[2]~13\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[3]~14_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[3]~15\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[4]~16_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[4]~17\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[5]~18_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[5]~19\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[6]~20_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[6]~21\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[7]~22_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BlocoOperativo|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BlocoOperativo|regP|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BlocoControle|ALT_INV_state.S0~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_entA <= entA;
ww_entB <= entB;
ww_inicio <= inicio;
pronto <= ww_pronto;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\BlocoControle|ALT_INV_state.S0~regout\ <= NOT \BlocoControle|state.S0~regout\;

-- Location: LCFF_X27_Y25_N7
\BlocoOperativo|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[1]~10_combout\,
	sdata => \entA~combout\(1),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(1));

-- Location: LCFF_X27_Y25_N11
\BlocoOperativo|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[3]~14_combout\,
	sdata => \entA~combout\(3),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(3));

-- Location: LCFF_X27_Y25_N13
\BlocoOperativo|regA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[4]~16_combout\,
	sdata => \entA~combout\(4),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(4));

-- Location: LCCOMB_X27_Y25_N6
\BlocoOperativo|regA|q[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[1]~10_combout\ = (\BlocoOperativo|regA|q\(1) & (\BlocoOperativo|regA|q[0]~9\ & VCC)) # (!\BlocoOperativo|regA|q\(1) & (!\BlocoOperativo|regA|q[0]~9\))
-- \BlocoOperativo|regA|q[1]~11\ = CARRY((!\BlocoOperativo|regA|q\(1) & !\BlocoOperativo|regA|q[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(1),
	datad => VCC,
	cin => \BlocoOperativo|regA|q[0]~9\,
	combout => \BlocoOperativo|regA|q[1]~10_combout\,
	cout => \BlocoOperativo|regA|q[1]~11\);

-- Location: LCCOMB_X27_Y25_N10
\BlocoOperativo|regA|q[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[3]~14_combout\ = (\BlocoOperativo|regA|q\(3) & (\BlocoOperativo|regA|q[2]~13\ & VCC)) # (!\BlocoOperativo|regA|q\(3) & (!\BlocoOperativo|regA|q[2]~13\))
-- \BlocoOperativo|regA|q[3]~15\ = CARRY((!\BlocoOperativo|regA|q\(3) & !\BlocoOperativo|regA|q[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(3),
	datad => VCC,
	cin => \BlocoOperativo|regA|q[2]~13\,
	combout => \BlocoOperativo|regA|q[3]~14_combout\,
	cout => \BlocoOperativo|regA|q[3]~15\);

-- Location: LCCOMB_X27_Y25_N12
\BlocoOperativo|regA|q[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[4]~16_combout\ = (\BlocoOperativo|regA|q\(4) & ((GND) # (!\BlocoOperativo|regA|q[3]~15\))) # (!\BlocoOperativo|regA|q\(4) & (\BlocoOperativo|regA|q[3]~15\ $ (GND)))
-- \BlocoOperativo|regA|q[4]~17\ = CARRY((\BlocoOperativo|regA|q\(4)) # (!\BlocoOperativo|regA|q[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(4),
	datad => VCC,
	cin => \BlocoOperativo|regA|q[3]~15\,
	combout => \BlocoOperativo|regA|q[4]~16_combout\,
	cout => \BlocoOperativo|regA|q[4]~17\);

-- Location: LCCOMB_X27_Y25_N20
\BlocoControle|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~1_combout\ = (!\BlocoOperativo|regA|q\(1) & (!\BlocoOperativo|regA|q\(0) & (!\BlocoOperativo|regA|q\(2) & !\BlocoOperativo|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(1),
	datab => \BlocoOperativo|regA|q\(0),
	datac => \BlocoOperativo|regA|q\(2),
	datad => \BlocoOperativo|regA|q\(3),
	combout => \BlocoControle|Selector0~1_combout\);

-- Location: LCFF_X28_Y25_N21
\BlocoOperativo|regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[5]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(4),
	combout => \entA~combout\(4));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(5),
	combout => \entB~combout\(5));

-- Location: LCCOMB_X28_Y25_N20
\BlocoOperativo|regB|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[5]~feeder_combout\ = \entB~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(5),
	combout => \BlocoOperativo|regB|q[5]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y25_N28
\BlocoControle|CA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|CA~0_combout\ = (\BlocoControle|state.S0~regout\ & !\BlocoControle|state.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControle|state.S0~regout\,
	datad => \BlocoControle|state.S2~regout\,
	combout => \BlocoControle|CA~0_combout\);

-- Location: LCCOMB_X27_Y25_N30
\BlocoControle|state.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state.S2~feeder_combout\ = \BlocoControle|CA~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BlocoControle|CA~0_combout\,
	combout => \BlocoControle|state.S2~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X27_Y25_N31
\BlocoControle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|state.S2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S2~regout\);

-- Location: LCCOMB_X27_Y25_N4
\BlocoOperativo|regA|q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[0]~8_combout\ = \BlocoOperativo|regA|q\(0) $ (VCC)
-- \BlocoOperativo|regA|q[0]~9\ = CARRY(\BlocoOperativo|regA|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regA|q\(0),
	datad => VCC,
	combout => \BlocoOperativo|regA|q[0]~8_combout\,
	cout => \BlocoOperativo|regA|q[0]~9\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: LCCOMB_X27_Y25_N2
\BlocoControle|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state~10_combout\ = (!\BlocoControle|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControle|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \BlocoControle|state~10_combout\);

-- Location: LCFF_X27_Y25_N3
\BlocoControle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|state~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S1~regout\);

-- Location: LCFF_X27_Y25_N5
\BlocoOperativo|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[0]~8_combout\,
	sdata => \entA~combout\(0),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(0));

-- Location: LCCOMB_X27_Y25_N8
\BlocoOperativo|regA|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[2]~12_combout\ = (\BlocoOperativo|regA|q\(2) & ((GND) # (!\BlocoOperativo|regA|q[1]~11\))) # (!\BlocoOperativo|regA|q\(2) & (\BlocoOperativo|regA|q[1]~11\ $ (GND)))
-- \BlocoOperativo|regA|q[2]~13\ = CARRY((\BlocoOperativo|regA|q\(2)) # (!\BlocoOperativo|regA|q[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regA|q\(2),
	datad => VCC,
	cin => \BlocoOperativo|regA|q[1]~11\,
	combout => \BlocoOperativo|regA|q[2]~12_combout\,
	cout => \BlocoOperativo|regA|q[2]~13\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: LCFF_X27_Y25_N9
\BlocoOperativo|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[2]~12_combout\,
	sdata => \entA~combout\(2),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(2));

-- Location: LCCOMB_X27_Y25_N14
\BlocoOperativo|regA|q[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[5]~18_combout\ = (\BlocoOperativo|regA|q\(5) & (\BlocoOperativo|regA|q[4]~17\ & VCC)) # (!\BlocoOperativo|regA|q\(5) & (!\BlocoOperativo|regA|q[4]~17\))
-- \BlocoOperativo|regA|q[5]~19\ = CARRY((!\BlocoOperativo|regA|q\(5) & !\BlocoOperativo|regA|q[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regA|q\(5),
	datad => VCC,
	cin => \BlocoOperativo|regA|q[4]~17\,
	combout => \BlocoOperativo|regA|q[5]~18_combout\,
	cout => \BlocoOperativo|regA|q[5]~19\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(5),
	combout => \entA~combout\(5));

-- Location: LCFF_X27_Y25_N15
\BlocoOperativo|regA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[5]~18_combout\,
	sdata => \entA~combout\(5),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(5));

-- Location: LCCOMB_X27_Y25_N16
\BlocoOperativo|regA|q[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[6]~20_combout\ = (\BlocoOperativo|regA|q\(6) & ((GND) # (!\BlocoOperativo|regA|q[5]~19\))) # (!\BlocoOperativo|regA|q\(6) & (\BlocoOperativo|regA|q[5]~19\ $ (GND)))
-- \BlocoOperativo|regA|q[6]~21\ = CARRY((\BlocoOperativo|regA|q\(6)) # (!\BlocoOperativo|regA|q[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(6),
	datad => VCC,
	cin => \BlocoOperativo|regA|q[5]~19\,
	combout => \BlocoOperativo|regA|q[6]~20_combout\,
	cout => \BlocoOperativo|regA|q[6]~21\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(6),
	combout => \entA~combout\(6));

-- Location: LCFF_X27_Y25_N17
\BlocoOperativo|regA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[6]~20_combout\,
	sdata => \entA~combout\(6),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(6));

-- Location: LCCOMB_X27_Y25_N18
\BlocoOperativo|regA|q[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regA|q[7]~22_combout\ = \BlocoOperativo|regA|q[6]~21\ $ (!\BlocoOperativo|regA|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BlocoOperativo|regA|q\(7),
	cin => \BlocoOperativo|regA|q[6]~21\,
	combout => \BlocoOperativo|regA|q[7]~22_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(7),
	combout => \entA~combout\(7));

-- Location: LCFF_X27_Y25_N19
\BlocoOperativo|regA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[7]~22_combout\,
	sdata => \entA~combout\(7),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(7));

-- Location: LCCOMB_X27_Y25_N22
\BlocoControle|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~2_combout\ = (!\BlocoOperativo|regA|q\(4) & (!\BlocoOperativo|regA|q\(5) & (!\BlocoOperativo|regA|q\(6) & !\BlocoOperativo|regA|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(4),
	datab => \BlocoOperativo|regA|q\(5),
	datac => \BlocoOperativo|regA|q\(6),
	datad => \BlocoOperativo|regA|q\(7),
	combout => \BlocoControle|Selector0~2_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(4),
	combout => \entB~combout\(4));

-- Location: LCCOMB_X28_Y25_N18
\BlocoOperativo|regB|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[4]~feeder_combout\ = \entB~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(4),
	combout => \BlocoOperativo|regB|q[4]~feeder_combout\);

-- Location: LCFF_X28_Y25_N19
\BlocoOperativo|regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[4]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(4));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(7),
	combout => \entB~combout\(7));

-- Location: LCCOMB_X28_Y25_N24
\BlocoOperativo|regB|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[7]~feeder_combout\ = \entB~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(7),
	combout => \BlocoOperativo|regB|q[7]~feeder_combout\);

-- Location: LCFF_X28_Y25_N25
\BlocoOperativo|regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[7]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(7));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(6),
	combout => \entB~combout\(6));

-- Location: LCCOMB_X28_Y25_N10
\BlocoOperativo|regB|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[6]~feeder_combout\ = \entB~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(6),
	combout => \BlocoOperativo|regB|q[6]~feeder_combout\);

-- Location: LCFF_X28_Y25_N11
\BlocoOperativo|regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[6]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(6));

-- Location: LCCOMB_X28_Y25_N26
\BlocoControle|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~3_combout\ = (!\BlocoOperativo|regB|q\(5) & (!\BlocoOperativo|regB|q\(4) & (!\BlocoOperativo|regB|q\(7) & !\BlocoOperativo|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(5),
	datab => \BlocoOperativo|regB|q\(4),
	datac => \BlocoOperativo|regB|q\(7),
	datad => \BlocoOperativo|regB|q\(6),
	combout => \BlocoControle|Selector0~3_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCFF_X28_Y25_N29
\BlocoOperativo|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(2),
	sload => VCC,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(2));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCFF_X28_Y25_N15
\BlocoOperativo|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(1),
	sload => VCC,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCCOMB_X28_Y25_N30
\BlocoOperativo|regB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[3]~feeder_combout\ = \entB~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(3),
	combout => \BlocoOperativo|regB|q[3]~feeder_combout\);

-- Location: LCFF_X28_Y25_N31
\BlocoOperativo|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[3]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(3));

-- Location: LCCOMB_X28_Y25_N4
\BlocoControle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~0_combout\ = (!\BlocoOperativo|regB|q\(0) & (!\BlocoOperativo|regB|q\(2) & (!\BlocoOperativo|regB|q\(1) & !\BlocoOperativo|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(0),
	datab => \BlocoOperativo|regB|q\(2),
	datac => \BlocoOperativo|regB|q\(1),
	datad => \BlocoOperativo|regB|q\(3),
	combout => \BlocoControle|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\BlocoControle|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~4_combout\ = (\BlocoControle|Selector0~1_combout\ & ((\BlocoControle|Selector0~2_combout\) # ((\BlocoControle|Selector0~3_combout\ & \BlocoControle|Selector0~0_combout\)))) # (!\BlocoControle|Selector0~1_combout\ & 
-- (((\BlocoControle|Selector0~3_combout\ & \BlocoControle|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControle|Selector0~1_combout\,
	datab => \BlocoControle|Selector0~2_combout\,
	datac => \BlocoControle|Selector0~3_combout\,
	datad => \BlocoControle|Selector0~0_combout\,
	combout => \BlocoControle|Selector0~4_combout\);

-- Location: LCCOMB_X27_Y25_N24
\BlocoControle|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~5_combout\ = (\inicio~combout\ & (((!\BlocoControle|Selector0~4_combout\)) # (!\BlocoControle|state.S2~regout\))) # (!\inicio~combout\ & (\BlocoControle|state.S0~regout\ & ((!\BlocoControle|Selector0~4_combout\) # 
-- (!\BlocoControle|state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inicio~combout\,
	datab => \BlocoControle|state.S2~regout\,
	datac => \BlocoControle|state.S0~regout\,
	datad => \BlocoControle|Selector0~4_combout\,
	combout => \BlocoControle|Selector0~5_combout\);

-- Location: LCFF_X27_Y25_N25
\BlocoControle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|Selector0~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S0~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCCOMB_X28_Y25_N16
\BlocoOperativo|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \BlocoOperativo|regB|q[0]~feeder_combout\);

-- Location: LCFF_X28_Y25_N17
\BlocoOperativo|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[0]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(0));

-- Location: LCCOMB_X29_Y25_N16
\BlocoOperativo|regP|q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[0]~8_combout\ = (\BlocoOperativo|regP|q\(0) & (\BlocoOperativo|regB|q\(0) $ (VCC))) # (!\BlocoOperativo|regP|q\(0) & (\BlocoOperativo|regB|q\(0) & VCC))
-- \BlocoOperativo|regP|q[0]~9\ = CARRY((\BlocoOperativo|regP|q\(0) & \BlocoOperativo|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(0),
	datab => \BlocoOperativo|regB|q\(0),
	datad => VCC,
	combout => \BlocoOperativo|regP|q[0]~8_combout\,
	cout => \BlocoOperativo|regP|q[0]~9\);

-- Location: LCFF_X29_Y25_N17
\BlocoOperativo|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[0]~8_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(0));

-- Location: LCCOMB_X29_Y25_N18
\BlocoOperativo|regP|q[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[1]~10_combout\ = (\BlocoOperativo|regB|q\(1) & ((\BlocoOperativo|regP|q\(1) & (\BlocoOperativo|regP|q[0]~9\ & VCC)) # (!\BlocoOperativo|regP|q\(1) & (!\BlocoOperativo|regP|q[0]~9\)))) # (!\BlocoOperativo|regB|q\(1) & 
-- ((\BlocoOperativo|regP|q\(1) & (!\BlocoOperativo|regP|q[0]~9\)) # (!\BlocoOperativo|regP|q\(1) & ((\BlocoOperativo|regP|q[0]~9\) # (GND)))))
-- \BlocoOperativo|regP|q[1]~11\ = CARRY((\BlocoOperativo|regB|q\(1) & (!\BlocoOperativo|regP|q\(1) & !\BlocoOperativo|regP|q[0]~9\)) # (!\BlocoOperativo|regB|q\(1) & ((!\BlocoOperativo|regP|q[0]~9\) # (!\BlocoOperativo|regP|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(1),
	datab => \BlocoOperativo|regP|q\(1),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[0]~9\,
	combout => \BlocoOperativo|regP|q[1]~10_combout\,
	cout => \BlocoOperativo|regP|q[1]~11\);

-- Location: LCFF_X29_Y25_N19
\BlocoOperativo|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[1]~10_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(1));

-- Location: LCCOMB_X29_Y25_N20
\BlocoOperativo|regP|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[2]~12_combout\ = ((\BlocoOperativo|regP|q\(2) $ (\BlocoOperativo|regB|q\(2) $ (!\BlocoOperativo|regP|q[1]~11\)))) # (GND)
-- \BlocoOperativo|regP|q[2]~13\ = CARRY((\BlocoOperativo|regP|q\(2) & ((\BlocoOperativo|regB|q\(2)) # (!\BlocoOperativo|regP|q[1]~11\))) # (!\BlocoOperativo|regP|q\(2) & (\BlocoOperativo|regB|q\(2) & !\BlocoOperativo|regP|q[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(2),
	datab => \BlocoOperativo|regB|q\(2),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[1]~11\,
	combout => \BlocoOperativo|regP|q[2]~12_combout\,
	cout => \BlocoOperativo|regP|q[2]~13\);

-- Location: LCFF_X29_Y25_N21
\BlocoOperativo|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[2]~12_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(2));

-- Location: LCCOMB_X29_Y25_N22
\BlocoOperativo|regP|q[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[3]~14_combout\ = (\BlocoOperativo|regB|q\(3) & ((\BlocoOperativo|regP|q\(3) & (\BlocoOperativo|regP|q[2]~13\ & VCC)) # (!\BlocoOperativo|regP|q\(3) & (!\BlocoOperativo|regP|q[2]~13\)))) # (!\BlocoOperativo|regB|q\(3) & 
-- ((\BlocoOperativo|regP|q\(3) & (!\BlocoOperativo|regP|q[2]~13\)) # (!\BlocoOperativo|regP|q\(3) & ((\BlocoOperativo|regP|q[2]~13\) # (GND)))))
-- \BlocoOperativo|regP|q[3]~15\ = CARRY((\BlocoOperativo|regB|q\(3) & (!\BlocoOperativo|regP|q\(3) & !\BlocoOperativo|regP|q[2]~13\)) # (!\BlocoOperativo|regB|q\(3) & ((!\BlocoOperativo|regP|q[2]~13\) # (!\BlocoOperativo|regP|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(3),
	datab => \BlocoOperativo|regP|q\(3),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[2]~13\,
	combout => \BlocoOperativo|regP|q[3]~14_combout\,
	cout => \BlocoOperativo|regP|q[3]~15\);

-- Location: LCFF_X29_Y25_N23
\BlocoOperativo|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[3]~14_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(3));

-- Location: LCCOMB_X29_Y25_N24
\BlocoOperativo|regP|q[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[4]~16_combout\ = ((\BlocoOperativo|regP|q\(4) $ (\BlocoOperativo|regB|q\(4) $ (!\BlocoOperativo|regP|q[3]~15\)))) # (GND)
-- \BlocoOperativo|regP|q[4]~17\ = CARRY((\BlocoOperativo|regP|q\(4) & ((\BlocoOperativo|regB|q\(4)) # (!\BlocoOperativo|regP|q[3]~15\))) # (!\BlocoOperativo|regP|q\(4) & (\BlocoOperativo|regB|q\(4) & !\BlocoOperativo|regP|q[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(4),
	datab => \BlocoOperativo|regB|q\(4),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[3]~15\,
	combout => \BlocoOperativo|regP|q[4]~16_combout\,
	cout => \BlocoOperativo|regP|q[4]~17\);

-- Location: LCFF_X29_Y25_N25
\BlocoOperativo|regP|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[4]~16_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(4));

-- Location: LCCOMB_X29_Y25_N26
\BlocoOperativo|regP|q[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[5]~18_combout\ = (\BlocoOperativo|regB|q\(5) & ((\BlocoOperativo|regP|q\(5) & (\BlocoOperativo|regP|q[4]~17\ & VCC)) # (!\BlocoOperativo|regP|q\(5) & (!\BlocoOperativo|regP|q[4]~17\)))) # (!\BlocoOperativo|regB|q\(5) & 
-- ((\BlocoOperativo|regP|q\(5) & (!\BlocoOperativo|regP|q[4]~17\)) # (!\BlocoOperativo|regP|q\(5) & ((\BlocoOperativo|regP|q[4]~17\) # (GND)))))
-- \BlocoOperativo|regP|q[5]~19\ = CARRY((\BlocoOperativo|regB|q\(5) & (!\BlocoOperativo|regP|q\(5) & !\BlocoOperativo|regP|q[4]~17\)) # (!\BlocoOperativo|regB|q\(5) & ((!\BlocoOperativo|regP|q[4]~17\) # (!\BlocoOperativo|regP|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(5),
	datab => \BlocoOperativo|regP|q\(5),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[4]~17\,
	combout => \BlocoOperativo|regP|q[5]~18_combout\,
	cout => \BlocoOperativo|regP|q[5]~19\);

-- Location: LCFF_X29_Y25_N27
\BlocoOperativo|regP|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[5]~18_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(5));

-- Location: LCCOMB_X29_Y25_N28
\BlocoOperativo|regP|q[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[6]~20_combout\ = ((\BlocoOperativo|regB|q\(6) $ (\BlocoOperativo|regP|q\(6) $ (!\BlocoOperativo|regP|q[5]~19\)))) # (GND)
-- \BlocoOperativo|regP|q[6]~21\ = CARRY((\BlocoOperativo|regB|q\(6) & ((\BlocoOperativo|regP|q\(6)) # (!\BlocoOperativo|regP|q[5]~19\))) # (!\BlocoOperativo|regB|q\(6) & (\BlocoOperativo|regP|q\(6) & !\BlocoOperativo|regP|q[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(6),
	datab => \BlocoOperativo|regP|q\(6),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[5]~19\,
	combout => \BlocoOperativo|regP|q[6]~20_combout\,
	cout => \BlocoOperativo|regP|q[6]~21\);

-- Location: LCFF_X29_Y25_N29
\BlocoOperativo|regP|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[6]~20_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(6));

-- Location: LCCOMB_X29_Y25_N30
\BlocoOperativo|regP|q[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[7]~22_combout\ = \BlocoOperativo|regP|q\(7) $ (\BlocoOperativo|regP|q[6]~21\ $ (\BlocoOperativo|regB|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(7),
	datad => \BlocoOperativo|regB|q\(7),
	cin => \BlocoOperativo|regP|q[6]~21\,
	combout => \BlocoOperativo|regP|q[7]~22_combout\);

-- Location: LCFF_X29_Y25_N31
\BlocoOperativo|regP|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[7]~22_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoControle|ALT_INV_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BlocoOperativo|regP|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));
END structure;


