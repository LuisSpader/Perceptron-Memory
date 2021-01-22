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

-- DATE "01/11/2021 14:57:29"

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

ENTITY 	multiplicador_3 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entA : IN std_logic_vector(7 DOWNTO 0);
	entB : IN std_logic_vector(7 DOWNTO 0);
	inicio : IN std_logic;
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplicador_3;

-- Design Ports Information
-- pronto	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[9]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[10]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[11]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[12]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[14]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[15]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[5]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[7]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[7]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador_3 IS
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
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BlocoOperativo|regA|q[2]~13\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[3]~14_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[3]~15\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[4]~16_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[4]~17\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[5]~18_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[5]~19\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[6]~20_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[6]~21\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[7]~22_combout\ : std_logic;
SIGNAL \BlocoOperativo|igualzeroA|Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[0]~8_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \BlocoControle|Selector0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \BlocoControle|state.S0~regout\ : std_logic;
SIGNAL \BlocoControle|state~10_combout\ : std_logic;
SIGNAL \BlocoControle|state.S1~feeder_combout\ : std_logic;
SIGNAL \BlocoControle|state.S1~regout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[0]~9\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[1]~11\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[2]~12_combout\ : std_logic;
SIGNAL \BlocoOperativo|regA|q[1]~10_combout\ : std_logic;
SIGNAL \BlocoOperativo|igualzeroA|Equal0~0_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|igualzeroB|Equal0~0_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[6]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[4]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[5]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|igualzeroB|Equal0~1_combout\ : std_logic;
SIGNAL \BlocoControle|process_0~0_combout\ : std_logic;
SIGNAL \BlocoControle|state~11_combout\ : std_logic;
SIGNAL \BlocoControle|state.S3~regout\ : std_logic;
SIGNAL \BlocoControle|CA~combout\ : std_logic;
SIGNAL \BlocoControle|state.S2~feeder_combout\ : std_logic;
SIGNAL \BlocoControle|state.S2~regout\ : std_logic;
SIGNAL \BlocoControle|state~9_combout\ : std_logic;
SIGNAL \BlocoControle|state.S4~regout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[0]~16_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[0]~17\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[1]~18_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[1]~19\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[2]~20_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[2]~21\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[3]~22_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[3]~23\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[4]~24_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[4]~25\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[5]~26_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[5]~27\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[6]~28_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[7]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[6]~29\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[7]~30_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[7]~31\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[8]~32_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[8]~33\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[9]~34_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[9]~35\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[10]~36_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[10]~37\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[11]~38_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[11]~39\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[12]~40_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[12]~41\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[13]~42_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[13]~43\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[14]~44_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[14]~45\ : std_logic;
SIGNAL \BlocoOperativo|regP|q[15]~46_combout\ : std_logic;
SIGNAL \BlocoOperativo|regB|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \BlocoOperativo|regP|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \BlocoOperativo|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(7 DOWNTO 0);

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

-- Location: LCFF_X30_Y35_N11
\BlocoOperativo|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[3]~14_combout\,
	sdata => \entA~combout\(3),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(3));

-- Location: LCFF_X30_Y35_N13
\BlocoOperativo|regA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[4]~16_combout\,
	sdata => \entA~combout\(4),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(4));

-- Location: LCFF_X30_Y35_N15
\BlocoOperativo|regA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[5]~18_combout\,
	sdata => \entA~combout\(5),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(5));

-- Location: LCFF_X30_Y35_N17
\BlocoOperativo|regA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[6]~20_combout\,
	sdata => \entA~combout\(6),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(6));

-- Location: LCFF_X30_Y35_N19
\BlocoOperativo|regA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[7]~22_combout\,
	sdata => \entA~combout\(7),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(7));

-- Location: LCCOMB_X30_Y35_N8
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

-- Location: LCCOMB_X30_Y35_N10
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

-- Location: LCCOMB_X30_Y35_N12
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

-- Location: LCCOMB_X30_Y35_N14
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

-- Location: LCCOMB_X30_Y35_N16
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

-- Location: LCCOMB_X30_Y35_N18
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

-- Location: LCCOMB_X30_Y35_N24
\BlocoOperativo|igualzeroA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|igualzeroA|Equal0~1_combout\ = (!\BlocoOperativo|regA|q\(6) & (!\BlocoOperativo|regA|q\(7) & (!\BlocoOperativo|regA|q\(5) & !\BlocoOperativo|regA|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(6),
	datab => \BlocoOperativo|regA|q\(7),
	datac => \BlocoOperativo|regA|q\(5),
	datad => \BlocoOperativo|regA|q\(4),
	combout => \BlocoOperativo|igualzeroA|Equal0~1_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N4
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

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N20
\BlocoControle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|Selector0~0_combout\ = (!\BlocoControle|state.S4~regout\ & ((\BlocoControle|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControle|state.S4~regout\,
	datac => \BlocoControle|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \BlocoControle|Selector0~0_combout\);

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

-- Location: LCFF_X30_Y35_N21
\BlocoControle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S0~regout\);

-- Location: LCCOMB_X30_Y35_N30
\BlocoControle|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state~10_combout\ = (!\BlocoControle|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControle|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \BlocoControle|state~10_combout\);

-- Location: LCCOMB_X29_Y35_N12
\BlocoControle|state.S1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state.S1~feeder_combout\ = \BlocoControle|state~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BlocoControle|state~10_combout\,
	combout => \BlocoControle|state.S1~feeder_combout\);

-- Location: LCFF_X29_Y35_N13
\BlocoControle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|state.S1~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S1~regout\);

-- Location: LCFF_X30_Y35_N5
\BlocoOperativo|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[0]~8_combout\,
	sdata => \entA~combout\(0),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(0));

-- Location: LCCOMB_X30_Y35_N6
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X30_Y35_N9
\BlocoOperativo|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[2]~12_combout\,
	sdata => \entA~combout\(2),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X30_Y35_N7
\BlocoOperativo|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regA|q[1]~10_combout\,
	sdata => \entA~combout\(1),
	sload => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regA|q\(1));

-- Location: LCCOMB_X30_Y35_N2
\BlocoOperativo|igualzeroA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|igualzeroA|Equal0~0_combout\ = (!\BlocoOperativo|regA|q\(3) & (!\BlocoOperativo|regA|q\(2) & (!\BlocoOperativo|regA|q\(0) & !\BlocoOperativo|regA|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(3),
	datab => \BlocoOperativo|regA|q\(2),
	datac => \BlocoOperativo|regA|q\(0),
	datad => \BlocoOperativo|regA|q\(1),
	combout => \BlocoOperativo|igualzeroA|Equal0~0_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N4
\BlocoOperativo|regB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[2]~feeder_combout\ = \entB~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(2),
	combout => \BlocoOperativo|regB|q[2]~feeder_combout\);

-- Location: LCFF_X29_Y35_N5
\BlocoOperativo|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[2]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N16
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

-- Location: LCFF_X29_Y35_N17
\BlocoOperativo|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[0]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N6
\BlocoOperativo|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \BlocoOperativo|regB|q[1]~feeder_combout\);

-- Location: LCFF_X29_Y35_N7
\BlocoOperativo|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[1]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(1));

-- Location: LCCOMB_X29_Y35_N20
\BlocoOperativo|igualzeroB|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|igualzeroB|Equal0~0_combout\ = (!\BlocoOperativo|regB|q\(3) & (!\BlocoOperativo|regB|q\(2) & (!\BlocoOperativo|regB|q\(0) & !\BlocoOperativo|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(3),
	datab => \BlocoOperativo|regB|q\(2),
	datac => \BlocoOperativo|regB|q\(0),
	datad => \BlocoOperativo|regB|q\(1),
	combout => \BlocoOperativo|igualzeroB|Equal0~0_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N30
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

-- Location: LCFF_X29_Y35_N31
\BlocoOperativo|regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[6]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N2
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

-- Location: LCFF_X29_Y35_N3
\BlocoOperativo|regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[4]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N28
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

-- Location: LCFF_X29_Y35_N29
\BlocoOperativo|regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[5]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(5));

-- Location: LCCOMB_X29_Y35_N22
\BlocoOperativo|igualzeroB|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|igualzeroB|Equal0~1_combout\ = (!\BlocoOperativo|regB|q\(7) & (!\BlocoOperativo|regB|q\(6) & (!\BlocoOperativo|regB|q\(4) & !\BlocoOperativo|regB|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(7),
	datab => \BlocoOperativo|regB|q\(6),
	datac => \BlocoOperativo|regB|q\(4),
	datad => \BlocoOperativo|regB|q\(5),
	combout => \BlocoOperativo|igualzeroB|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y35_N22
\BlocoControle|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|process_0~0_combout\ = (\BlocoOperativo|igualzeroA|Equal0~1_combout\ & ((\BlocoOperativo|igualzeroA|Equal0~0_combout\) # ((\BlocoOperativo|igualzeroB|Equal0~0_combout\ & \BlocoOperativo|igualzeroB|Equal0~1_combout\)))) # 
-- (!\BlocoOperativo|igualzeroA|Equal0~1_combout\ & (((\BlocoOperativo|igualzeroB|Equal0~0_combout\ & \BlocoOperativo|igualzeroB|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|igualzeroA|Equal0~1_combout\,
	datab => \BlocoOperativo|igualzeroA|Equal0~0_combout\,
	datac => \BlocoOperativo|igualzeroB|Equal0~0_combout\,
	datad => \BlocoOperativo|igualzeroB|Equal0~1_combout\,
	combout => \BlocoControle|process_0~0_combout\);

-- Location: LCCOMB_X30_Y35_N26
\BlocoControle|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state~11_combout\ = (\BlocoControle|state.S2~regout\ & !\BlocoControle|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControle|state.S2~regout\,
	datad => \BlocoControle|process_0~0_combout\,
	combout => \BlocoControle|state~11_combout\);

-- Location: LCFF_X30_Y35_N27
\BlocoControle|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|state~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S3~regout\);

-- Location: LCCOMB_X29_Y35_N26
\BlocoControle|CA\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|CA~combout\ = (\BlocoControle|state.S3~regout\) # (\BlocoControle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControle|state.S3~regout\,
	datad => \BlocoControle|state.S1~regout\,
	combout => \BlocoControle|CA~combout\);

-- Location: LCCOMB_X30_Y35_N28
\BlocoControle|state.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state.S2~feeder_combout\ = \BlocoControle|CA~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BlocoControle|CA~combout\,
	combout => \BlocoControle|state.S2~feeder_combout\);

-- Location: LCFF_X30_Y35_N29
\BlocoControle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|state.S2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S2~regout\);

-- Location: LCCOMB_X30_Y35_N0
\BlocoControle|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoControle|state~9_combout\ = (\BlocoControle|state.S2~regout\ & \BlocoControle|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControle|state.S2~regout\,
	datad => \BlocoControle|process_0~0_combout\,
	combout => \BlocoControle|state~9_combout\);

-- Location: LCFF_X30_Y35_N1
\BlocoControle|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoControle|state~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoControle|state.S4~regout\);

-- Location: LCCOMB_X28_Y35_N0
\BlocoOperativo|regP|q[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[0]~16_combout\ = (\BlocoOperativo|regB|q\(0) & (\BlocoOperativo|regP|q\(0) $ (VCC))) # (!\BlocoOperativo|regB|q\(0) & (\BlocoOperativo|regP|q\(0) & VCC))
-- \BlocoOperativo|regP|q[0]~17\ = CARRY((\BlocoOperativo|regB|q\(0) & \BlocoOperativo|regP|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(0),
	datab => \BlocoOperativo|regP|q\(0),
	datad => VCC,
	combout => \BlocoOperativo|regP|q[0]~16_combout\,
	cout => \BlocoOperativo|regP|q[0]~17\);

-- Location: LCFF_X28_Y35_N1
\BlocoOperativo|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[0]~16_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(0));

-- Location: LCCOMB_X28_Y35_N2
\BlocoOperativo|regP|q[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[1]~18_combout\ = (\BlocoOperativo|regB|q\(1) & ((\BlocoOperativo|regP|q\(1) & (\BlocoOperativo|regP|q[0]~17\ & VCC)) # (!\BlocoOperativo|regP|q\(1) & (!\BlocoOperativo|regP|q[0]~17\)))) # (!\BlocoOperativo|regB|q\(1) & 
-- ((\BlocoOperativo|regP|q\(1) & (!\BlocoOperativo|regP|q[0]~17\)) # (!\BlocoOperativo|regP|q\(1) & ((\BlocoOperativo|regP|q[0]~17\) # (GND)))))
-- \BlocoOperativo|regP|q[1]~19\ = CARRY((\BlocoOperativo|regB|q\(1) & (!\BlocoOperativo|regP|q\(1) & !\BlocoOperativo|regP|q[0]~17\)) # (!\BlocoOperativo|regB|q\(1) & ((!\BlocoOperativo|regP|q[0]~17\) # (!\BlocoOperativo|regP|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(1),
	datab => \BlocoOperativo|regP|q\(1),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[0]~17\,
	combout => \BlocoOperativo|regP|q[1]~18_combout\,
	cout => \BlocoOperativo|regP|q[1]~19\);

-- Location: LCFF_X28_Y35_N3
\BlocoOperativo|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[1]~18_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(1));

-- Location: LCCOMB_X28_Y35_N4
\BlocoOperativo|regP|q[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[2]~20_combout\ = ((\BlocoOperativo|regB|q\(2) $ (\BlocoOperativo|regP|q\(2) $ (!\BlocoOperativo|regP|q[1]~19\)))) # (GND)
-- \BlocoOperativo|regP|q[2]~21\ = CARRY((\BlocoOperativo|regB|q\(2) & ((\BlocoOperativo|regP|q\(2)) # (!\BlocoOperativo|regP|q[1]~19\))) # (!\BlocoOperativo|regB|q\(2) & (\BlocoOperativo|regP|q\(2) & !\BlocoOperativo|regP|q[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(2),
	datab => \BlocoOperativo|regP|q\(2),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[1]~19\,
	combout => \BlocoOperativo|regP|q[2]~20_combout\,
	cout => \BlocoOperativo|regP|q[2]~21\);

-- Location: LCFF_X28_Y35_N5
\BlocoOperativo|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[2]~20_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(2));

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

-- Location: LCCOMB_X29_Y35_N10
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

-- Location: LCFF_X29_Y35_N11
\BlocoOperativo|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[3]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(3));

-- Location: LCCOMB_X28_Y35_N6
\BlocoOperativo|regP|q[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[3]~22_combout\ = (\BlocoOperativo|regP|q\(3) & ((\BlocoOperativo|regB|q\(3) & (\BlocoOperativo|regP|q[2]~21\ & VCC)) # (!\BlocoOperativo|regB|q\(3) & (!\BlocoOperativo|regP|q[2]~21\)))) # (!\BlocoOperativo|regP|q\(3) & 
-- ((\BlocoOperativo|regB|q\(3) & (!\BlocoOperativo|regP|q[2]~21\)) # (!\BlocoOperativo|regB|q\(3) & ((\BlocoOperativo|regP|q[2]~21\) # (GND)))))
-- \BlocoOperativo|regP|q[3]~23\ = CARRY((\BlocoOperativo|regP|q\(3) & (!\BlocoOperativo|regB|q\(3) & !\BlocoOperativo|regP|q[2]~21\)) # (!\BlocoOperativo|regP|q\(3) & ((!\BlocoOperativo|regP|q[2]~21\) # (!\BlocoOperativo|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(3),
	datab => \BlocoOperativo|regB|q\(3),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[2]~21\,
	combout => \BlocoOperativo|regP|q[3]~22_combout\,
	cout => \BlocoOperativo|regP|q[3]~23\);

-- Location: LCFF_X28_Y35_N7
\BlocoOperativo|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[3]~22_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(3));

-- Location: LCCOMB_X28_Y35_N8
\BlocoOperativo|regP|q[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[4]~24_combout\ = ((\BlocoOperativo|regB|q\(4) $ (\BlocoOperativo|regP|q\(4) $ (!\BlocoOperativo|regP|q[3]~23\)))) # (GND)
-- \BlocoOperativo|regP|q[4]~25\ = CARRY((\BlocoOperativo|regB|q\(4) & ((\BlocoOperativo|regP|q\(4)) # (!\BlocoOperativo|regP|q[3]~23\))) # (!\BlocoOperativo|regB|q\(4) & (\BlocoOperativo|regP|q\(4) & !\BlocoOperativo|regP|q[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(4),
	datab => \BlocoOperativo|regP|q\(4),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[3]~23\,
	combout => \BlocoOperativo|regP|q[4]~24_combout\,
	cout => \BlocoOperativo|regP|q[4]~25\);

-- Location: LCFF_X28_Y35_N9
\BlocoOperativo|regP|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[4]~24_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(4));

-- Location: LCCOMB_X28_Y35_N10
\BlocoOperativo|regP|q[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[5]~26_combout\ = (\BlocoOperativo|regP|q\(5) & ((\BlocoOperativo|regB|q\(5) & (\BlocoOperativo|regP|q[4]~25\ & VCC)) # (!\BlocoOperativo|regB|q\(5) & (!\BlocoOperativo|regP|q[4]~25\)))) # (!\BlocoOperativo|regP|q\(5) & 
-- ((\BlocoOperativo|regB|q\(5) & (!\BlocoOperativo|regP|q[4]~25\)) # (!\BlocoOperativo|regB|q\(5) & ((\BlocoOperativo|regP|q[4]~25\) # (GND)))))
-- \BlocoOperativo|regP|q[5]~27\ = CARRY((\BlocoOperativo|regP|q\(5) & (!\BlocoOperativo|regB|q\(5) & !\BlocoOperativo|regP|q[4]~25\)) # (!\BlocoOperativo|regP|q\(5) & ((!\BlocoOperativo|regP|q[4]~25\) # (!\BlocoOperativo|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(5),
	datab => \BlocoOperativo|regB|q\(5),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[4]~25\,
	combout => \BlocoOperativo|regP|q[5]~26_combout\,
	cout => \BlocoOperativo|regP|q[5]~27\);

-- Location: LCFF_X28_Y35_N11
\BlocoOperativo|regP|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[5]~26_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(5));

-- Location: LCCOMB_X28_Y35_N12
\BlocoOperativo|regP|q[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[6]~28_combout\ = ((\BlocoOperativo|regP|q\(6) $ (\BlocoOperativo|regB|q\(6) $ (!\BlocoOperativo|regP|q[5]~27\)))) # (GND)
-- \BlocoOperativo|regP|q[6]~29\ = CARRY((\BlocoOperativo|regP|q\(6) & ((\BlocoOperativo|regB|q\(6)) # (!\BlocoOperativo|regP|q[5]~27\))) # (!\BlocoOperativo|regP|q\(6) & (\BlocoOperativo|regB|q\(6) & !\BlocoOperativo|regP|q[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(6),
	datab => \BlocoOperativo|regB|q\(6),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[5]~27\,
	combout => \BlocoOperativo|regP|q[6]~28_combout\,
	cout => \BlocoOperativo|regP|q[6]~29\);

-- Location: LCFF_X28_Y35_N13
\BlocoOperativo|regP|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[6]~28_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(6));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N24
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

-- Location: LCFF_X29_Y35_N25
\BlocoOperativo|regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regB|q[7]~feeder_combout\,
	ena => \BlocoControle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regB|q\(7));

-- Location: LCCOMB_X28_Y35_N14
\BlocoOperativo|regP|q[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[7]~30_combout\ = (\BlocoOperativo|regP|q\(7) & ((\BlocoOperativo|regB|q\(7) & (\BlocoOperativo|regP|q[6]~29\ & VCC)) # (!\BlocoOperativo|regB|q\(7) & (!\BlocoOperativo|regP|q[6]~29\)))) # (!\BlocoOperativo|regP|q\(7) & 
-- ((\BlocoOperativo|regB|q\(7) & (!\BlocoOperativo|regP|q[6]~29\)) # (!\BlocoOperativo|regB|q\(7) & ((\BlocoOperativo|regP|q[6]~29\) # (GND)))))
-- \BlocoOperativo|regP|q[7]~31\ = CARRY((\BlocoOperativo|regP|q\(7) & (!\BlocoOperativo|regB|q\(7) & !\BlocoOperativo|regP|q[6]~29\)) # (!\BlocoOperativo|regP|q\(7) & ((!\BlocoOperativo|regP|q[6]~29\) # (!\BlocoOperativo|regB|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(7),
	datab => \BlocoOperativo|regB|q\(7),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[6]~29\,
	combout => \BlocoOperativo|regP|q[7]~30_combout\,
	cout => \BlocoOperativo|regP|q[7]~31\);

-- Location: LCFF_X28_Y35_N15
\BlocoOperativo|regP|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[7]~30_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(7));

-- Location: LCCOMB_X28_Y35_N16
\BlocoOperativo|regP|q[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[8]~32_combout\ = (\BlocoOperativo|regP|q\(8) & (\BlocoOperativo|regP|q[7]~31\ $ (GND))) # (!\BlocoOperativo|regP|q\(8) & (!\BlocoOperativo|regP|q[7]~31\ & VCC))
-- \BlocoOperativo|regP|q[8]~33\ = CARRY((\BlocoOperativo|regP|q\(8) & !\BlocoOperativo|regP|q[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(8),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[7]~31\,
	combout => \BlocoOperativo|regP|q[8]~32_combout\,
	cout => \BlocoOperativo|regP|q[8]~33\);

-- Location: LCFF_X28_Y35_N17
\BlocoOperativo|regP|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[8]~32_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(8));

-- Location: LCCOMB_X28_Y35_N18
\BlocoOperativo|regP|q[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[9]~34_combout\ = (\BlocoOperativo|regP|q\(9) & (!\BlocoOperativo|regP|q[8]~33\)) # (!\BlocoOperativo|regP|q\(9) & ((\BlocoOperativo|regP|q[8]~33\) # (GND)))
-- \BlocoOperativo|regP|q[9]~35\ = CARRY((!\BlocoOperativo|regP|q[8]~33\) # (!\BlocoOperativo|regP|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(9),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[8]~33\,
	combout => \BlocoOperativo|regP|q[9]~34_combout\,
	cout => \BlocoOperativo|regP|q[9]~35\);

-- Location: LCFF_X28_Y35_N19
\BlocoOperativo|regP|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[9]~34_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(9));

-- Location: LCCOMB_X28_Y35_N20
\BlocoOperativo|regP|q[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[10]~36_combout\ = (\BlocoOperativo|regP|q\(10) & (\BlocoOperativo|regP|q[9]~35\ $ (GND))) # (!\BlocoOperativo|regP|q\(10) & (!\BlocoOperativo|regP|q[9]~35\ & VCC))
-- \BlocoOperativo|regP|q[10]~37\ = CARRY((\BlocoOperativo|regP|q\(10) & !\BlocoOperativo|regP|q[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(10),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[9]~35\,
	combout => \BlocoOperativo|regP|q[10]~36_combout\,
	cout => \BlocoOperativo|regP|q[10]~37\);

-- Location: LCFF_X28_Y35_N21
\BlocoOperativo|regP|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[10]~36_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(10));

-- Location: LCCOMB_X28_Y35_N22
\BlocoOperativo|regP|q[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[11]~38_combout\ = (\BlocoOperativo|regP|q\(11) & (!\BlocoOperativo|regP|q[10]~37\)) # (!\BlocoOperativo|regP|q\(11) & ((\BlocoOperativo|regP|q[10]~37\) # (GND)))
-- \BlocoOperativo|regP|q[11]~39\ = CARRY((!\BlocoOperativo|regP|q[10]~37\) # (!\BlocoOperativo|regP|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(11),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[10]~37\,
	combout => \BlocoOperativo|regP|q[11]~38_combout\,
	cout => \BlocoOperativo|regP|q[11]~39\);

-- Location: LCFF_X28_Y35_N23
\BlocoOperativo|regP|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[11]~38_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(11));

-- Location: LCCOMB_X28_Y35_N24
\BlocoOperativo|regP|q[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[12]~40_combout\ = (\BlocoOperativo|regP|q\(12) & (\BlocoOperativo|regP|q[11]~39\ $ (GND))) # (!\BlocoOperativo|regP|q\(12) & (!\BlocoOperativo|regP|q[11]~39\ & VCC))
-- \BlocoOperativo|regP|q[12]~41\ = CARRY((\BlocoOperativo|regP|q\(12) & !\BlocoOperativo|regP|q[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(12),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[11]~39\,
	combout => \BlocoOperativo|regP|q[12]~40_combout\,
	cout => \BlocoOperativo|regP|q[12]~41\);

-- Location: LCFF_X28_Y35_N25
\BlocoOperativo|regP|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[12]~40_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(12));

-- Location: LCCOMB_X28_Y35_N26
\BlocoOperativo|regP|q[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[13]~42_combout\ = (\BlocoOperativo|regP|q\(13) & (!\BlocoOperativo|regP|q[12]~41\)) # (!\BlocoOperativo|regP|q\(13) & ((\BlocoOperativo|regP|q[12]~41\) # (GND)))
-- \BlocoOperativo|regP|q[13]~43\ = CARRY((!\BlocoOperativo|regP|q[12]~41\) # (!\BlocoOperativo|regP|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(13),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[12]~41\,
	combout => \BlocoOperativo|regP|q[13]~42_combout\,
	cout => \BlocoOperativo|regP|q[13]~43\);

-- Location: LCFF_X28_Y35_N27
\BlocoOperativo|regP|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[13]~42_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(13));

-- Location: LCCOMB_X28_Y35_N28
\BlocoOperativo|regP|q[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[14]~44_combout\ = (\BlocoOperativo|regP|q\(14) & (\BlocoOperativo|regP|q[13]~43\ $ (GND))) # (!\BlocoOperativo|regP|q\(14) & (!\BlocoOperativo|regP|q[13]~43\ & VCC))
-- \BlocoOperativo|regP|q[14]~45\ = CARRY((\BlocoOperativo|regP|q\(14) & !\BlocoOperativo|regP|q[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(14),
	datad => VCC,
	cin => \BlocoOperativo|regP|q[13]~43\,
	combout => \BlocoOperativo|regP|q[14]~44_combout\,
	cout => \BlocoOperativo|regP|q[14]~45\);

-- Location: LCFF_X28_Y35_N29
\BlocoOperativo|regP|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[14]~44_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(14));

-- Location: LCCOMB_X28_Y35_N30
\BlocoOperativo|regP|q[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regP|q[15]~46_combout\ = \BlocoOperativo|regP|q[14]~45\ $ (\BlocoOperativo|regP|q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BlocoOperativo|regP|q\(15),
	cin => \BlocoOperativo|regP|q[14]~45\,
	combout => \BlocoOperativo|regP|q[15]~46_combout\);

-- Location: LCFF_X28_Y35_N31
\BlocoOperativo|regP|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BlocoOperativo|regP|q[15]~46_combout\,
	sclr => \BlocoControle|state.S1~regout\,
	ena => \BlocoControle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BlocoOperativo|regP|q\(15));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \BlocoControle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[8]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(8));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[9]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(9));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[10]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(10));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[11]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(11));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[12]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(12));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[13]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(13));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[14]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(14));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[15]~I\ : cycloneii_io
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
	datain => \BlocoOperativo|regP|q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(15));
END structure;


