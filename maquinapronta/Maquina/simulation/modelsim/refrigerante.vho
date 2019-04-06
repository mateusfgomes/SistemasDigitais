-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "11/21/2018 17:30:35"

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

ENTITY 	refrigerante IS
    PORT (
	ck : IN std_logic;
	clk_button : IN std_logic;
	rst_db : IN std_logic;
	rst_button : IN std_logic;
	confirm : IN std_logic;
	money : IN std_logic_vector(1 DOWNTO 0);
	q : OUT std_logic_vector(9 DOWNTO 0);
	display_0 : OUT std_logic_vector(6 DOWNTO 0);
	display_1 : OUT std_logic_vector(6 DOWNTO 0);
	display_2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END refrigerante;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_db	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- money[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- money[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirm	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_button	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_button	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF refrigerante IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_clk_button : std_logic;
SIGNAL ww_rst_db : std_logic;
SIGNAL ww_rst_button : std_logic;
SIGNAL ww_confirm : std_logic;
SIGNAL ww_money : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_display_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_button~input_o\ : std_logic;
SIGNAL \rst_db~input_o\ : std_logic;
SIGNAL \D1|outb~1_combout\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D1|intermediate~1_combout\ : std_logic;
SIGNAL \D1|intermediate~_emulated_q\ : std_logic;
SIGNAL \D1|intermediate~0_combout\ : std_logic;
SIGNAL \D1|Add0~37_sumout\ : std_logic;
SIGNAL \D1|always0~0_combout\ : std_logic;
SIGNAL \D1|Add0~38\ : std_logic;
SIGNAL \D1|Add0~33_sumout\ : std_logic;
SIGNAL \D1|Add0~34\ : std_logic;
SIGNAL \D1|Add0~17_sumout\ : std_logic;
SIGNAL \D1|Add0~18\ : std_logic;
SIGNAL \D1|Add0~13_sumout\ : std_logic;
SIGNAL \D1|Add0~14\ : std_logic;
SIGNAL \D1|Add0~9_sumout\ : std_logic;
SIGNAL \D1|Add0~10\ : std_logic;
SIGNAL \D1|Add0~5_sumout\ : std_logic;
SIGNAL \D1|outb~5_combout\ : std_logic;
SIGNAL \D1|Add0~6\ : std_logic;
SIGNAL \D1|Add0~41_sumout\ : std_logic;
SIGNAL \D1|Add0~42\ : std_logic;
SIGNAL \D1|Add0~45_sumout\ : std_logic;
SIGNAL \D1|Add0~46\ : std_logic;
SIGNAL \D1|Add0~49_sumout\ : std_logic;
SIGNAL \D1|Add0~50\ : std_logic;
SIGNAL \D1|Add0~53_sumout\ : std_logic;
SIGNAL \D1|Add0~54\ : std_logic;
SIGNAL \D1|Add0~57_sumout\ : std_logic;
SIGNAL \D1|Add0~58\ : std_logic;
SIGNAL \D1|Add0~61_sumout\ : std_logic;
SIGNAL \D1|Add0~62\ : std_logic;
SIGNAL \D1|Add0~1_sumout\ : std_logic;
SIGNAL \D1|Add0~2\ : std_logic;
SIGNAL \D1|Add0~29_sumout\ : std_logic;
SIGNAL \D1|Add0~30\ : std_logic;
SIGNAL \D1|Add0~25_sumout\ : std_logic;
SIGNAL \D1|Add0~26\ : std_logic;
SIGNAL \D1|Add0~21_sumout\ : std_logic;
SIGNAL \D1|outb~6_combout\ : std_logic;
SIGNAL \D1|outb~7_combout\ : std_logic;
SIGNAL \D1|outb~8_combout\ : std_logic;
SIGNAL \D1|outb~3_combout\ : std_logic;
SIGNAL \D1|outb~_emulated_q\ : std_logic;
SIGNAL \D1|outb~2_combout\ : std_logic;
SIGNAL \confirm~input_o\ : std_logic;
SIGNAL \D3|outb~1_combout\ : std_logic;
SIGNAL \D3|intermediate~1_combout\ : std_logic;
SIGNAL \D3|intermediate~_emulated_q\ : std_logic;
SIGNAL \D3|intermediate~0_combout\ : std_logic;
SIGNAL \D3|Add0~9_sumout\ : std_logic;
SIGNAL \D3|always0~0_combout\ : std_logic;
SIGNAL \D3|Add0~10\ : std_logic;
SIGNAL \D3|Add0~5_sumout\ : std_logic;
SIGNAL \D3|Add0~6\ : std_logic;
SIGNAL \D3|Add0~21_sumout\ : std_logic;
SIGNAL \D3|Add0~22\ : std_logic;
SIGNAL \D3|Add0~25_sumout\ : std_logic;
SIGNAL \D3|Add0~26\ : std_logic;
SIGNAL \D3|Add0~29_sumout\ : std_logic;
SIGNAL \D3|Add0~30\ : std_logic;
SIGNAL \D3|Add0~37_sumout\ : std_logic;
SIGNAL \D3|Add0~38\ : std_logic;
SIGNAL \D3|Add0~41_sumout\ : std_logic;
SIGNAL \D3|Add0~42\ : std_logic;
SIGNAL \D3|Add0~33_sumout\ : std_logic;
SIGNAL \D3|Add0~34\ : std_logic;
SIGNAL \D3|Add0~1_sumout\ : std_logic;
SIGNAL \D3|outb~6_combout\ : std_logic;
SIGNAL \D3|Add0~2\ : std_logic;
SIGNAL \D3|Add0~61_sumout\ : std_logic;
SIGNAL \D3|Add0~62\ : std_logic;
SIGNAL \D3|Add0~57_sumout\ : std_logic;
SIGNAL \D3|Add0~58\ : std_logic;
SIGNAL \D3|Add0~53_sumout\ : std_logic;
SIGNAL \D3|Add0~54\ : std_logic;
SIGNAL \D3|Add0~49_sumout\ : std_logic;
SIGNAL \D3|Add0~50\ : std_logic;
SIGNAL \D3|Add0~45_sumout\ : std_logic;
SIGNAL \D3|outb~7_combout\ : std_logic;
SIGNAL \D3|Add0~46\ : std_logic;
SIGNAL \D3|Add0~17_sumout\ : std_logic;
SIGNAL \D3|Add0~18\ : std_logic;
SIGNAL \D3|Add0~13_sumout\ : std_logic;
SIGNAL \D3|outb~5_combout\ : std_logic;
SIGNAL \D3|outb~8_combout\ : std_logic;
SIGNAL \D3|outb~3_combout\ : std_logic;
SIGNAL \D3|outb~_emulated_q\ : std_logic;
SIGNAL \D3|outb~2_combout\ : std_logic;
SIGNAL \money[0]~input_o\ : std_logic;
SIGNAL \D4|outb~1_combout\ : std_logic;
SIGNAL \D4|intermediate~1_combout\ : std_logic;
SIGNAL \D4|intermediate~_emulated_q\ : std_logic;
SIGNAL \D4|intermediate~0_combout\ : std_logic;
SIGNAL \D4|Add0~33_sumout\ : std_logic;
SIGNAL \D4|always0~0_combout\ : std_logic;
SIGNAL \D4|Add0~34\ : std_logic;
SIGNAL \D4|Add0~29_sumout\ : std_logic;
SIGNAL \D4|Add0~30\ : std_logic;
SIGNAL \D4|Add0~25_sumout\ : std_logic;
SIGNAL \D4|Add0~26\ : std_logic;
SIGNAL \D4|Add0~21_sumout\ : std_logic;
SIGNAL \D4|Add0~22\ : std_logic;
SIGNAL \D4|Add0~1_sumout\ : std_logic;
SIGNAL \D4|Add0~2\ : std_logic;
SIGNAL \D4|Add0~61_sumout\ : std_logic;
SIGNAL \D4|Add0~62\ : std_logic;
SIGNAL \D4|Add0~57_sumout\ : std_logic;
SIGNAL \D4|Add0~58\ : std_logic;
SIGNAL \D4|Add0~53_sumout\ : std_logic;
SIGNAL \D4|Add0~54\ : std_logic;
SIGNAL \D4|Add0~49_sumout\ : std_logic;
SIGNAL \D4|Add0~50\ : std_logic;
SIGNAL \D4|Add0~45_sumout\ : std_logic;
SIGNAL \D4|outb~7_combout\ : std_logic;
SIGNAL \D4|Add0~46\ : std_logic;
SIGNAL \D4|Add0~17_sumout\ : std_logic;
SIGNAL \D4|Add0~18\ : std_logic;
SIGNAL \D4|Add0~13_sumout\ : std_logic;
SIGNAL \D4|Add0~14\ : std_logic;
SIGNAL \D4|Add0~9_sumout\ : std_logic;
SIGNAL \D4|Add0~10\ : std_logic;
SIGNAL \D4|Add0~5_sumout\ : std_logic;
SIGNAL \D4|Add0~6\ : std_logic;
SIGNAL \D4|Add0~41_sumout\ : std_logic;
SIGNAL \D4|Add0~42\ : std_logic;
SIGNAL \D4|Add0~37_sumout\ : std_logic;
SIGNAL \D4|outb~6_combout\ : std_logic;
SIGNAL \D4|outb~5_combout\ : std_logic;
SIGNAL \D4|outb~8_combout\ : std_logic;
SIGNAL \D4|outb~3_combout\ : std_logic;
SIGNAL \D4|outb~_emulated_q\ : std_logic;
SIGNAL \D4|outb~2_combout\ : std_logic;
SIGNAL \money[1]~input_o\ : std_logic;
SIGNAL \D5|outb~1_combout\ : std_logic;
SIGNAL \D5|intermediate~1_combout\ : std_logic;
SIGNAL \D5|intermediate~_emulated_q\ : std_logic;
SIGNAL \D5|intermediate~0_combout\ : std_logic;
SIGNAL \D5|Add0~25_sumout\ : std_logic;
SIGNAL \D5|always0~0_combout\ : std_logic;
SIGNAL \D5|Add0~26\ : std_logic;
SIGNAL \D5|Add0~49_sumout\ : std_logic;
SIGNAL \D5|Add0~50\ : std_logic;
SIGNAL \D5|Add0~53_sumout\ : std_logic;
SIGNAL \D5|Add0~54\ : std_logic;
SIGNAL \D5|Add0~57_sumout\ : std_logic;
SIGNAL \D5|Add0~58\ : std_logic;
SIGNAL \D5|Add0~61_sumout\ : std_logic;
SIGNAL \D5|Add0~62\ : std_logic;
SIGNAL \D5|Add0~21_sumout\ : std_logic;
SIGNAL \D5|Add0~22\ : std_logic;
SIGNAL \D5|Add0~29_sumout\ : std_logic;
SIGNAL \D5|Add0~30\ : std_logic;
SIGNAL \D5|Add0~33_sumout\ : std_logic;
SIGNAL \D5|Add0~34\ : std_logic;
SIGNAL \D5|Add0~37_sumout\ : std_logic;
SIGNAL \D5|Add0~38\ : std_logic;
SIGNAL \D5|Add0~41_sumout\ : std_logic;
SIGNAL \D5|Add0~42\ : std_logic;
SIGNAL \D5|Add0~5_sumout\ : std_logic;
SIGNAL \D5|Add0~6\ : std_logic;
SIGNAL \D5|Add0~9_sumout\ : std_logic;
SIGNAL \D5|Add0~10\ : std_logic;
SIGNAL \D5|Add0~17_sumout\ : std_logic;
SIGNAL \D5|Add0~18\ : std_logic;
SIGNAL \D5|Add0~1_sumout\ : std_logic;
SIGNAL \D5|Add0~2\ : std_logic;
SIGNAL \D5|Add0~45_sumout\ : std_logic;
SIGNAL \D5|outb~7_combout\ : std_logic;
SIGNAL \D5|outb~6_combout\ : std_logic;
SIGNAL \D5|Add0~46\ : std_logic;
SIGNAL \D5|Add0~13_sumout\ : std_logic;
SIGNAL \D5|outb~5_combout\ : std_logic;
SIGNAL \D5|outb~8_combout\ : std_logic;
SIGNAL \D5|outb~3_combout\ : std_logic;
SIGNAL \D5|outb~_emulated_q\ : std_logic;
SIGNAL \D5|outb~2_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \rst_button~input_o\ : std_logic;
SIGNAL \D2|outb~1_combout\ : std_logic;
SIGNAL \D2|intermediate~1_combout\ : std_logic;
SIGNAL \D2|intermediate~_emulated_q\ : std_logic;
SIGNAL \D2|intermediate~0_combout\ : std_logic;
SIGNAL \D2|Add0~45_sumout\ : std_logic;
SIGNAL \D2|always0~0_combout\ : std_logic;
SIGNAL \D2|Add0~46\ : std_logic;
SIGNAL \D2|Add0~17_sumout\ : std_logic;
SIGNAL \D2|Add0~18\ : std_logic;
SIGNAL \D2|Add0~13_sumout\ : std_logic;
SIGNAL \D2|Add0~14\ : std_logic;
SIGNAL \D2|Add0~9_sumout\ : std_logic;
SIGNAL \D2|Add0~10\ : std_logic;
SIGNAL \D2|Add0~5_sumout\ : std_logic;
SIGNAL \D2|Add0~6\ : std_logic;
SIGNAL \D2|Add0~41_sumout\ : std_logic;
SIGNAL \D2|Add0~42\ : std_logic;
SIGNAL \D2|Add0~37_sumout\ : std_logic;
SIGNAL \D2|Add0~38\ : std_logic;
SIGNAL \D2|Add0~33_sumout\ : std_logic;
SIGNAL \D2|Add0~34\ : std_logic;
SIGNAL \D2|Add0~29_sumout\ : std_logic;
SIGNAL \D2|Add0~30\ : std_logic;
SIGNAL \D2|Add0~25_sumout\ : std_logic;
SIGNAL \D2|Add0~26\ : std_logic;
SIGNAL \D2|Add0~21_sumout\ : std_logic;
SIGNAL \D2|Add0~22\ : std_logic;
SIGNAL \D2|Add0~1_sumout\ : std_logic;
SIGNAL \D2|Add0~2\ : std_logic;
SIGNAL \D2|Add0~61_sumout\ : std_logic;
SIGNAL \D2|Add0~62\ : std_logic;
SIGNAL \D2|Add0~57_sumout\ : std_logic;
SIGNAL \D2|Add0~58\ : std_logic;
SIGNAL \D2|Add0~53_sumout\ : std_logic;
SIGNAL \D2|Add0~54\ : std_logic;
SIGNAL \D2|Add0~49_sumout\ : std_logic;
SIGNAL \D2|outb~7_combout\ : std_logic;
SIGNAL \D2|outb~6_combout\ : std_logic;
SIGNAL \D2|outb~5_combout\ : std_logic;
SIGNAL \D2|outb~8_combout\ : std_logic;
SIGNAL \D2|outb~3_combout\ : std_logic;
SIGNAL \D2|outb~_emulated_q\ : std_logic;
SIGNAL \D2|outb~2_combout\ : std_logic;
SIGNAL \estado.cents25~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.cents10~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado.cents35~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.cents20~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado.cents30~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado.cents40~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado.cents50~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \estado.cents60~q\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \estado.cents45~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \estado.cents55~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \estado.cents65~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \estado.cents70~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \estado.cents80~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \estado.cents90~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \estado.cents75~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \estado.cents85~q\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \estado.cents0~q\ : std_logic;
SIGNAL \WideOr29~0_combout\ : std_logic;
SIGNAL \display_1~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \estado.cents100~q\ : std_logic;
SIGNAL \WideOr30~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \estado.cents95~q\ : std_logic;
SIGNAL \WideOr29~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \estado.refri~q\ : std_logic;
SIGNAL \WideOr27~0_combout\ : std_logic;
SIGNAL \WideOr28~combout\ : std_logic;
SIGNAL \WideOr27~combout\ : std_logic;
SIGNAL \WideOr26~combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \display_0[1]~reg0_q\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \display_0[6]~reg0_q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \display_1[0]~reg0_q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \display_1[1]~reg0_q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \display_1[2]~reg0_q\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \display_1[3]~reg0_q\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \display_1[4]~reg0_q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \display_1[5]~reg0_q\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \display_1[6]~reg0_q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \display_2[0]~reg0_q\ : std_logic;
SIGNAL \D4|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D5|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D3|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D1|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D2|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst_button~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_button~input_o\ : std_logic;
SIGNAL \ALT_INV_confirm~input_o\ : std_logic;
SIGNAL \ALT_INV_money[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_money[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_db~input_o\ : std_logic;
SIGNAL \D2|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~6_combout\ : std_logic;
SIGNAL \D2|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D1|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D3|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D3|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D5|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D5|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D4|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D4|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D2|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \D2|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \D2|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \D2|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \D2|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D2|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \D1|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \D3|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \D5|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \D4|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Selector24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector31~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \ALT_INV_estado.cents25~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \D2|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D1|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D3|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D5|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_display_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_display_2[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_1[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_0[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_display_0[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_estado.cents65~q\ : std_logic;
SIGNAL \ALT_INV_WideOr27~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.refri~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents85~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents45~q\ : std_logic;
SIGNAL \ALT_INV_WideOr29~combout\ : std_logic;
SIGNAL \ALT_INV_estado.cents95~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents75~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents55~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents35~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents10~q\ : std_logic;
SIGNAL \ALT_INV_WideOr30~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr29~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.cents70~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents50~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents90~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents30~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents0~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents100~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents80~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents60~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents40~q\ : std_logic;
SIGNAL \ALT_INV_estado.cents20~q\ : std_logic;
SIGNAL \D4|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_ck <= ck;
ww_clk_button <= clk_button;
ww_rst_db <= rst_db;
ww_rst_button <= rst_button;
ww_confirm <= confirm;
ww_money <= money;
q <= ww_q;
display_0 <= ww_display_0;
display_1 <= ww_display_1;
display_2 <= ww_display_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst_button~input_o\ <= NOT \rst_button~input_o\;
\ALT_INV_clk_button~input_o\ <= NOT \clk_button~input_o\;
\ALT_INV_confirm~input_o\ <= NOT \confirm~input_o\;
\ALT_INV_money[1]~input_o\ <= NOT \money[1]~input_o\;
\ALT_INV_money[0]~input_o\ <= NOT \money[0]~input_o\;
\ALT_INV_rst_db~input_o\ <= NOT \rst_db~input_o\;
\D2|ALT_INV_outb~1_combout\ <= NOT \D2|outb~1_combout\;
\D1|ALT_INV_outb~1_combout\ <= NOT \D1|outb~1_combout\;
\D3|ALT_INV_outb~1_combout\ <= NOT \D3|outb~1_combout\;
\D5|ALT_INV_outb~1_combout\ <= NOT \D5|outb~1_combout\;
\D4|ALT_INV_outb~1_combout\ <= NOT \D4|outb~1_combout\;
\ALT_INV_Selector0~7_combout\ <= NOT \Selector0~7_combout\;
\ALT_INV_Selector0~6_combout\ <= NOT \Selector0~6_combout\;
\D2|ALT_INV_intermediate~0_combout\ <= NOT \D2|intermediate~0_combout\;
\D2|ALT_INV_intermediate~_emulated_q\ <= NOT \D2|intermediate~_emulated_q\;
\D1|ALT_INV_intermediate~0_combout\ <= NOT \D1|intermediate~0_combout\;
\D1|ALT_INV_intermediate~_emulated_q\ <= NOT \D1|intermediate~_emulated_q\;
\D3|ALT_INV_intermediate~0_combout\ <= NOT \D3|intermediate~0_combout\;
\D3|ALT_INV_intermediate~_emulated_q\ <= NOT \D3|intermediate~_emulated_q\;
\D5|ALT_INV_intermediate~0_combout\ <= NOT \D5|intermediate~0_combout\;
\D5|ALT_INV_intermediate~_emulated_q\ <= NOT \D5|intermediate~_emulated_q\;
\D4|ALT_INV_intermediate~0_combout\ <= NOT \D4|intermediate~0_combout\;
\D4|ALT_INV_intermediate~_emulated_q\ <= NOT \D4|intermediate~_emulated_q\;
\D2|ALT_INV_outb~8_combout\ <= NOT \D2|outb~8_combout\;
\D2|ALT_INV_outb~7_combout\ <= NOT \D2|outb~7_combout\;
\D2|ALT_INV_outb~6_combout\ <= NOT \D2|outb~6_combout\;
\D2|ALT_INV_outb~5_combout\ <= NOT \D2|outb~5_combout\;
\D1|ALT_INV_outb~8_combout\ <= NOT \D1|outb~8_combout\;
\D1|ALT_INV_outb~7_combout\ <= NOT \D1|outb~7_combout\;
\D1|ALT_INV_outb~6_combout\ <= NOT \D1|outb~6_combout\;
\D1|ALT_INV_outb~5_combout\ <= NOT \D1|outb~5_combout\;
\D3|ALT_INV_outb~8_combout\ <= NOT \D3|outb~8_combout\;
\D3|ALT_INV_outb~7_combout\ <= NOT \D3|outb~7_combout\;
\D3|ALT_INV_outb~6_combout\ <= NOT \D3|outb~6_combout\;
\D3|ALT_INV_outb~5_combout\ <= NOT \D3|outb~5_combout\;
\D5|ALT_INV_outb~8_combout\ <= NOT \D5|outb~8_combout\;
\D5|ALT_INV_outb~7_combout\ <= NOT \D5|outb~7_combout\;
\D5|ALT_INV_outb~6_combout\ <= NOT \D5|outb~6_combout\;
\D5|ALT_INV_outb~5_combout\ <= NOT \D5|outb~5_combout\;
\D4|ALT_INV_outb~8_combout\ <= NOT \D4|outb~8_combout\;
\D4|ALT_INV_outb~7_combout\ <= NOT \D4|outb~7_combout\;
\D4|ALT_INV_outb~6_combout\ <= NOT \D4|outb~6_combout\;
\D4|ALT_INV_outb~5_combout\ <= NOT \D4|outb~5_combout\;
\D2|ALT_INV_outb~2_combout\ <= NOT \D2|outb~2_combout\;
\D2|ALT_INV_outb~_emulated_q\ <= NOT \D2|outb~_emulated_q\;
\D1|ALT_INV_outb~2_combout\ <= NOT \D1|outb~2_combout\;
\D1|ALT_INV_outb~_emulated_q\ <= NOT \D1|outb~_emulated_q\;
\D3|ALT_INV_outb~2_combout\ <= NOT \D3|outb~2_combout\;
\D3|ALT_INV_outb~_emulated_q\ <= NOT \D3|outb~_emulated_q\;
\D5|ALT_INV_outb~2_combout\ <= NOT \D5|outb~2_combout\;
\D5|ALT_INV_outb~_emulated_q\ <= NOT \D5|outb~_emulated_q\;
\D4|ALT_INV_outb~2_combout\ <= NOT \D4|outb~2_combout\;
\D4|ALT_INV_outb~_emulated_q\ <= NOT \D4|outb~_emulated_q\;
\ALT_INV_Selector24~3_combout\ <= NOT \Selector24~3_combout\;
\ALT_INV_Selector24~2_combout\ <= NOT \Selector24~2_combout\;
\ALT_INV_Selector24~1_combout\ <= NOT \Selector24~1_combout\;
\ALT_INV_Selector25~1_combout\ <= NOT \Selector25~1_combout\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\ALT_INV_Selector26~3_combout\ <= NOT \Selector26~3_combout\;
\ALT_INV_Selector26~2_combout\ <= NOT \Selector26~2_combout\;
\ALT_INV_Selector26~1_combout\ <= NOT \Selector26~1_combout\;
\ALT_INV_Selector27~3_combout\ <= NOT \Selector27~3_combout\;
\ALT_INV_Selector27~2_combout\ <= NOT \Selector27~2_combout\;
\ALT_INV_Selector27~1_combout\ <= NOT \Selector27~1_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_Selector29~2_combout\ <= NOT \Selector29~2_combout\;
\ALT_INV_Selector29~1_combout\ <= NOT \Selector29~1_combout\;
\ALT_INV_Selector29~0_combout\ <= NOT \Selector29~0_combout\;
\ALT_INV_Selector31~2_combout\ <= NOT \Selector31~2_combout\;
\ALT_INV_Selector31~1_combout\ <= NOT \Selector31~1_combout\;
\ALT_INV_Selector31~0_combout\ <= NOT \Selector31~0_combout\;
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector13~1_combout\ <= NOT \Selector13~1_combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector0~4_combout\ <= NOT \Selector0~4_combout\;
\ALT_INV_Selector0~3_combout\ <= NOT \Selector0~3_combout\;
\ALT_INV_estado.cents25~q\ <= NOT \estado.cents25~q\;
\ALT_INV_Selector0~2_combout\ <= NOT \Selector0~2_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\D2|ALT_INV_counter\(12) <= NOT \D2|counter\(12);
\D2|ALT_INV_counter\(13) <= NOT \D2|counter\(13);
\D2|ALT_INV_counter\(14) <= NOT \D2|counter\(14);
\D2|ALT_INV_counter\(15) <= NOT \D2|counter\(15);
\D2|ALT_INV_counter\(0) <= NOT \D2|counter\(0);
\D2|ALT_INV_counter\(5) <= NOT \D2|counter\(5);
\D2|ALT_INV_counter\(6) <= NOT \D2|counter\(6);
\D2|ALT_INV_counter\(7) <= NOT \D2|counter\(7);
\D2|ALT_INV_counter\(8) <= NOT \D2|counter\(8);
\D2|ALT_INV_counter\(9) <= NOT \D2|counter\(9);
\D2|ALT_INV_counter\(10) <= NOT \D2|counter\(10);
\D2|ALT_INV_counter\(1) <= NOT \D2|counter\(1);
\D2|ALT_INV_counter\(2) <= NOT \D2|counter\(2);
\D2|ALT_INV_counter\(3) <= NOT \D2|counter\(3);
\D2|ALT_INV_counter\(4) <= NOT \D2|counter\(4);
\D2|ALT_INV_counter\(11) <= NOT \D2|counter\(11);
\D1|ALT_INV_counter\(11) <= NOT \D1|counter\(11);
\D1|ALT_INV_counter\(10) <= NOT \D1|counter\(10);
\D1|ALT_INV_counter\(9) <= NOT \D1|counter\(9);
\D1|ALT_INV_counter\(8) <= NOT \D1|counter\(8);
\D1|ALT_INV_counter\(7) <= NOT \D1|counter\(7);
\D1|ALT_INV_counter\(6) <= NOT \D1|counter\(6);
\D1|ALT_INV_counter\(0) <= NOT \D1|counter\(0);
\D1|ALT_INV_counter\(1) <= NOT \D1|counter\(1);
\D1|ALT_INV_counter\(13) <= NOT \D1|counter\(13);
\D1|ALT_INV_counter\(14) <= NOT \D1|counter\(14);
\D1|ALT_INV_counter\(15) <= NOT \D1|counter\(15);
\D1|ALT_INV_counter\(2) <= NOT \D1|counter\(2);
\D1|ALT_INV_counter\(3) <= NOT \D1|counter\(3);
\D1|ALT_INV_counter\(4) <= NOT \D1|counter\(4);
\D1|ALT_INV_counter\(5) <= NOT \D1|counter\(5);
\D1|ALT_INV_counter\(12) <= NOT \D1|counter\(12);
\D3|ALT_INV_counter\(9) <= NOT \D3|counter\(9);
\D3|ALT_INV_counter\(10) <= NOT \D3|counter\(10);
\D3|ALT_INV_counter\(11) <= NOT \D3|counter\(11);
\D3|ALT_INV_counter\(12) <= NOT \D3|counter\(12);
\D3|ALT_INV_counter\(13) <= NOT \D3|counter\(13);
\D3|ALT_INV_counter\(6) <= NOT \D3|counter\(6);
\D3|ALT_INV_counter\(5) <= NOT \D3|counter\(5);
\D3|ALT_INV_counter\(7) <= NOT \D3|counter\(7);
\D3|ALT_INV_counter\(4) <= NOT \D3|counter\(4);
\D3|ALT_INV_counter\(3) <= NOT \D3|counter\(3);
\D3|ALT_INV_counter\(2) <= NOT \D3|counter\(2);
\D3|ALT_INV_counter\(14) <= NOT \D3|counter\(14);
\D3|ALT_INV_counter\(15) <= NOT \D3|counter\(15);
\D3|ALT_INV_counter\(0) <= NOT \D3|counter\(0);
\D3|ALT_INV_counter\(1) <= NOT \D3|counter\(1);
\D3|ALT_INV_counter\(8) <= NOT \D3|counter\(8);
\D5|ALT_INV_counter\(4) <= NOT \D5|counter\(4);
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_display_1~0_combout\ <= NOT \display_1~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_display_2[0]~reg0_q\ <= NOT \display_2[0]~reg0_q\;
\ALT_INV_display_1[6]~reg0_q\ <= NOT \display_1[6]~reg0_q\;
\ALT_INV_display_1[5]~reg0_q\ <= NOT \display_1[5]~reg0_q\;
\ALT_INV_display_1[4]~reg0_q\ <= NOT \display_1[4]~reg0_q\;
\ALT_INV_display_1[3]~reg0_q\ <= NOT \display_1[3]~reg0_q\;
\ALT_INV_display_1[2]~reg0_q\ <= NOT \display_1[2]~reg0_q\;
\ALT_INV_display_1[1]~reg0_q\ <= NOT \display_1[1]~reg0_q\;
\ALT_INV_display_1[0]~reg0_q\ <= NOT \display_1[0]~reg0_q\;
\ALT_INV_display_0[6]~reg0_q\ <= NOT \display_0[6]~reg0_q\;
\ALT_INV_display_0[1]~reg0_q\ <= NOT \display_0[1]~reg0_q\;
\ALT_INV_estado.cents65~q\ <= NOT \estado.cents65~q\;
\ALT_INV_WideOr27~0_combout\ <= NOT \WideOr27~0_combout\;
\ALT_INV_estado.refri~q\ <= NOT \estado.refri~q\;
\ALT_INV_estado.cents85~q\ <= NOT \estado.cents85~q\;
\ALT_INV_estado.cents45~q\ <= NOT \estado.cents45~q\;
\ALT_INV_WideOr29~combout\ <= NOT \WideOr29~combout\;
\ALT_INV_estado.cents95~q\ <= NOT \estado.cents95~q\;
\ALT_INV_estado.cents75~q\ <= NOT \estado.cents75~q\;
\ALT_INV_estado.cents55~q\ <= NOT \estado.cents55~q\;
\ALT_INV_estado.cents35~q\ <= NOT \estado.cents35~q\;
\ALT_INV_estado.cents10~q\ <= NOT \estado.cents10~q\;
\ALT_INV_WideOr30~combout\ <= NOT \WideOr30~combout\;
\ALT_INV_WideOr29~0_combout\ <= NOT \WideOr29~0_combout\;
\ALT_INV_estado.cents70~q\ <= NOT \estado.cents70~q\;
\ALT_INV_estado.cents50~q\ <= NOT \estado.cents50~q\;
\ALT_INV_estado.cents90~q\ <= NOT \estado.cents90~q\;
\ALT_INV_estado.cents30~q\ <= NOT \estado.cents30~q\;
\ALT_INV_estado.cents0~q\ <= NOT \estado.cents0~q\;
\ALT_INV_estado.cents100~q\ <= NOT \estado.cents100~q\;
\ALT_INV_estado.cents80~q\ <= NOT \estado.cents80~q\;
\ALT_INV_estado.cents60~q\ <= NOT \estado.cents60~q\;
\ALT_INV_estado.cents40~q\ <= NOT \estado.cents40~q\;
\ALT_INV_estado.cents20~q\ <= NOT \estado.cents20~q\;
\D5|ALT_INV_counter\(3) <= NOT \D5|counter\(3);
\D5|ALT_INV_counter\(2) <= NOT \D5|counter\(2);
\D5|ALT_INV_counter\(1) <= NOT \D5|counter\(1);
\D5|ALT_INV_counter\(14) <= NOT \D5|counter\(14);
\D5|ALT_INV_counter\(9) <= NOT \D5|counter\(9);
\D5|ALT_INV_counter\(8) <= NOT \D5|counter\(8);
\D5|ALT_INV_counter\(7) <= NOT \D5|counter\(7);
\D5|ALT_INV_counter\(6) <= NOT \D5|counter\(6);
\D5|ALT_INV_counter\(0) <= NOT \D5|counter\(0);
\D5|ALT_INV_counter\(5) <= NOT \D5|counter\(5);
\D5|ALT_INV_counter\(12) <= NOT \D5|counter\(12);
\D5|ALT_INV_counter\(15) <= NOT \D5|counter\(15);
\D5|ALT_INV_counter\(11) <= NOT \D5|counter\(11);
\D5|ALT_INV_counter\(10) <= NOT \D5|counter\(10);
\D5|ALT_INV_counter\(13) <= NOT \D5|counter\(13);
\D4|ALT_INV_counter\(5) <= NOT \D4|counter\(5);
\D4|ALT_INV_counter\(6) <= NOT \D4|counter\(6);
\D4|ALT_INV_counter\(7) <= NOT \D4|counter\(7);
\D4|ALT_INV_counter\(8) <= NOT \D4|counter\(8);
\D4|ALT_INV_counter\(9) <= NOT \D4|counter\(9);
\D4|ALT_INV_counter\(14) <= NOT \D4|counter\(14);
\D4|ALT_INV_counter\(15) <= NOT \D4|counter\(15);
\D4|ALT_INV_counter\(0) <= NOT \D4|counter\(0);
\D4|ALT_INV_counter\(1) <= NOT \D4|counter\(1);
\D4|ALT_INV_counter\(2) <= NOT \D4|counter\(2);
\D4|ALT_INV_counter\(3) <= NOT \D4|counter\(3);
\D4|ALT_INV_counter\(10) <= NOT \D4|counter\(10);
\D4|ALT_INV_counter\(11) <= NOT \D4|counter\(11);
\D4|ALT_INV_counter\(12) <= NOT \D4|counter\(12);
\D4|ALT_INV_counter\(13) <= NOT \D4|counter\(13);
\D4|ALT_INV_counter\(4) <= NOT \D4|counter\(4);

-- Location: IOOBUF_X0_Y18_N79
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr30~combout\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X0_Y18_N96
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr29~combout\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X0_Y18_N62
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr28~combout\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X0_Y18_N45
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr27~combout\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X0_Y19_N39
\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr26~combout\,
	devoe => ww_devoe,
	o => ww_q(4));

-- Location: IOOBUF_X0_Y19_N56
\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.refri~q\,
	devoe => ww_devoe,
	o => ww_q(5));

-- Location: IOOBUF_X0_Y19_N5
\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.refri~q\,
	devoe => ww_devoe,
	o => ww_q(6));

-- Location: IOOBUF_X0_Y19_N22
\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.refri~q\,
	devoe => ww_devoe,
	o => ww_q(7));

-- Location: IOOBUF_X0_Y20_N39
\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.refri~q\,
	devoe => ww_devoe,
	o => ww_q(8));

-- Location: IOOBUF_X0_Y20_N56
\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.refri~q\,
	devoe => ww_devoe,
	o => ww_q(9));

-- Location: IOOBUF_X52_Y0_N53
\display_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display_0(0));

-- Location: IOOBUF_X51_Y0_N36
\display_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_0[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_0(1));

-- Location: IOOBUF_X48_Y0_N76
\display_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display_0(2));

-- Location: IOOBUF_X50_Y0_N36
\display_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display_0(3));

-- Location: IOOBUF_X48_Y0_N93
\display_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_0[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_0(4));

-- Location: IOOBUF_X50_Y0_N53
\display_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display_0(5));

-- Location: IOOBUF_X46_Y0_N36
\display_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_display_0[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_0(6));

-- Location: IOOBUF_X44_Y0_N36
\display_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_1[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(0));

-- Location: IOOBUF_X40_Y0_N93
\display_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_1[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(1));

-- Location: IOOBUF_X44_Y0_N53
\display_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_1[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(2));

-- Location: IOOBUF_X43_Y0_N36
\display_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_1[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(3));

-- Location: IOOBUF_X38_Y0_N36
\display_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_1[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(4));

-- Location: IOOBUF_X43_Y0_N53
\display_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_1[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(5));

-- Location: IOOBUF_X51_Y0_N53
\display_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_display_1[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_1(6));

-- Location: IOOBUF_X48_Y0_N42
\display_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_2(0));

-- Location: IOOBUF_X38_Y0_N53
\display_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display_2(1));

-- Location: IOOBUF_X22_Y0_N53
\display_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display_2(2));

-- Location: IOOBUF_X36_Y0_N19
\display_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_2(3));

-- Location: IOOBUF_X38_Y0_N19
\display_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_2(4));

-- Location: IOOBUF_X46_Y0_N53
\display_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_2(5));

-- Location: IOOBUF_X40_Y0_N76
\display_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display_2(6));

-- Location: IOIBUF_X33_Y0_N75
\clk_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_button,
	o => \clk_button~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\rst_db~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_db,
	o => \rst_db~input_o\);

-- Location: LABCELL_X6_Y1_N12
\D1|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~1_combout\ = ( \rst_db~input_o\ & ( \D1|outb~1_combout\ ) ) # ( !\rst_db~input_o\ & ( \D1|outb~1_combout\ & ( \clk_button~input_o\ ) ) ) # ( !\rst_db~input_o\ & ( !\D1|outb~1_combout\ & ( \clk_button~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk_button~input_o\,
	datae => \ALT_INV_rst_db~input_o\,
	dataf => \D1|ALT_INV_outb~1_combout\,
	combout => \D1|outb~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\ck~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G6
\ck~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \ck~input_o\,
	outclk => \ck~inputCLKENA0_outclk\);

-- Location: LABCELL_X6_Y1_N54
\D1|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|intermediate~1_combout\ = ( \clk_button~input_o\ & ( !\D1|outb~1_combout\ ) ) # ( !\clk_button~input_o\ & ( \D1|outb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_outb~1_combout\,
	datae => \ALT_INV_clk_button~input_o\,
	combout => \D1|intermediate~1_combout\);

-- Location: FF_X6_Y1_N56
\D1|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|intermediate~1_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|intermediate~_emulated_q\);

-- Location: LABCELL_X6_Y1_N48
\D1|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|intermediate~0_combout\ = ( \D1|intermediate~_emulated_q\ & ( \D1|outb~1_combout\ & ( (!\rst_db~input_o\ & \clk_button~input_o\) ) ) ) # ( !\D1|intermediate~_emulated_q\ & ( \D1|outb~1_combout\ & ( (\clk_button~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D1|intermediate~_emulated_q\ & ( !\D1|outb~1_combout\ & ( (\clk_button~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D1|intermediate~_emulated_q\ & ( !\D1|outb~1_combout\ & ( (!\rst_db~input_o\ & \clk_button~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100110011111111110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_db~input_o\,
	datad => \ALT_INV_clk_button~input_o\,
	datae => \D1|ALT_INV_intermediate~_emulated_q\,
	dataf => \D1|ALT_INV_outb~1_combout\,
	combout => \D1|intermediate~0_combout\);

-- Location: LABCELL_X7_Y1_N0
\D1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~37_sumout\ = SUM(( \D1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D1|Add0~38\ = CARRY(( \D1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D1|Add0~37_sumout\,
	cout => \D1|Add0~38\);

-- Location: LABCELL_X6_Y1_N9
\D1|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|always0~0_combout\ = ( !\clk_button~input_o\ & ( \D1|intermediate~0_combout\ ) ) # ( \clk_button~input_o\ & ( !\D1|intermediate~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_clk_button~input_o\,
	dataf => \D1|ALT_INV_intermediate~0_combout\,
	combout => \D1|always0~0_combout\);

-- Location: FF_X7_Y1_N2
\D1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~37_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(0));

-- Location: LABCELL_X7_Y1_N3
\D1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~33_sumout\ = SUM(( \D1|counter\(1) ) + ( GND ) + ( \D1|Add0~38\ ))
-- \D1|Add0~34\ = CARRY(( \D1|counter\(1) ) + ( GND ) + ( \D1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(1),
	cin => \D1|Add0~38\,
	sumout => \D1|Add0~33_sumout\,
	cout => \D1|Add0~34\);

-- Location: FF_X7_Y1_N5
\D1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~33_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(1));

-- Location: LABCELL_X7_Y1_N6
\D1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~17_sumout\ = SUM(( \D1|counter\(2) ) + ( GND ) + ( \D1|Add0~34\ ))
-- \D1|Add0~18\ = CARRY(( \D1|counter\(2) ) + ( GND ) + ( \D1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(2),
	cin => \D1|Add0~34\,
	sumout => \D1|Add0~17_sumout\,
	cout => \D1|Add0~18\);

-- Location: FF_X7_Y1_N7
\D1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~17_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(2));

-- Location: LABCELL_X7_Y1_N9
\D1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~13_sumout\ = SUM(( \D1|counter\(3) ) + ( GND ) + ( \D1|Add0~18\ ))
-- \D1|Add0~14\ = CARRY(( \D1|counter\(3) ) + ( GND ) + ( \D1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(3),
	cin => \D1|Add0~18\,
	sumout => \D1|Add0~13_sumout\,
	cout => \D1|Add0~14\);

-- Location: FF_X7_Y1_N11
\D1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~13_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(3));

-- Location: LABCELL_X7_Y1_N12
\D1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~9_sumout\ = SUM(( \D1|counter\(4) ) + ( GND ) + ( \D1|Add0~14\ ))
-- \D1|Add0~10\ = CARRY(( \D1|counter\(4) ) + ( GND ) + ( \D1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(4),
	cin => \D1|Add0~14\,
	sumout => \D1|Add0~9_sumout\,
	cout => \D1|Add0~10\);

-- Location: FF_X7_Y1_N14
\D1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~9_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(4));

-- Location: LABCELL_X7_Y1_N15
\D1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~5_sumout\ = SUM(( \D1|counter\(5) ) + ( GND ) + ( \D1|Add0~10\ ))
-- \D1|Add0~6\ = CARRY(( \D1|counter\(5) ) + ( GND ) + ( \D1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(5),
	cin => \D1|Add0~10\,
	sumout => \D1|Add0~5_sumout\,
	cout => \D1|Add0~6\);

-- Location: FF_X7_Y1_N17
\D1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~5_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(5));

-- Location: LABCELL_X7_Y1_N54
\D1|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~5_combout\ = ( \D1|counter\(3) & ( (\D1|counter\(4) & (\D1|counter\(5) & \D1|counter\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|ALT_INV_counter\(4),
	datac => \D1|ALT_INV_counter\(5),
	datad => \D1|ALT_INV_counter\(2),
	dataf => \D1|ALT_INV_counter\(3),
	combout => \D1|outb~5_combout\);

-- Location: LABCELL_X7_Y1_N18
\D1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~41_sumout\ = SUM(( \D1|counter\(6) ) + ( GND ) + ( \D1|Add0~6\ ))
-- \D1|Add0~42\ = CARRY(( \D1|counter\(6) ) + ( GND ) + ( \D1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(6),
	cin => \D1|Add0~6\,
	sumout => \D1|Add0~41_sumout\,
	cout => \D1|Add0~42\);

-- Location: FF_X7_Y1_N20
\D1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~41_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(6));

-- Location: LABCELL_X7_Y1_N21
\D1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~45_sumout\ = SUM(( \D1|counter\(7) ) + ( GND ) + ( \D1|Add0~42\ ))
-- \D1|Add0~46\ = CARRY(( \D1|counter\(7) ) + ( GND ) + ( \D1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(7),
	cin => \D1|Add0~42\,
	sumout => \D1|Add0~45_sumout\,
	cout => \D1|Add0~46\);

-- Location: FF_X7_Y1_N22
\D1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~45_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(7));

-- Location: LABCELL_X7_Y1_N24
\D1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~49_sumout\ = SUM(( \D1|counter\(8) ) + ( GND ) + ( \D1|Add0~46\ ))
-- \D1|Add0~50\ = CARRY(( \D1|counter\(8) ) + ( GND ) + ( \D1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(8),
	cin => \D1|Add0~46\,
	sumout => \D1|Add0~49_sumout\,
	cout => \D1|Add0~50\);

-- Location: FF_X7_Y1_N25
\D1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~49_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(8));

-- Location: LABCELL_X7_Y1_N27
\D1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~53_sumout\ = SUM(( \D1|counter\(9) ) + ( GND ) + ( \D1|Add0~50\ ))
-- \D1|Add0~54\ = CARRY(( \D1|counter\(9) ) + ( GND ) + ( \D1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(9),
	cin => \D1|Add0~50\,
	sumout => \D1|Add0~53_sumout\,
	cout => \D1|Add0~54\);

-- Location: FF_X7_Y1_N29
\D1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~53_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(9));

-- Location: LABCELL_X7_Y1_N30
\D1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~57_sumout\ = SUM(( \D1|counter\(10) ) + ( GND ) + ( \D1|Add0~54\ ))
-- \D1|Add0~58\ = CARRY(( \D1|counter\(10) ) + ( GND ) + ( \D1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(10),
	cin => \D1|Add0~54\,
	sumout => \D1|Add0~57_sumout\,
	cout => \D1|Add0~58\);

-- Location: FF_X7_Y1_N32
\D1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~57_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(10));

-- Location: LABCELL_X7_Y1_N33
\D1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~61_sumout\ = SUM(( \D1|counter\(11) ) + ( GND ) + ( \D1|Add0~58\ ))
-- \D1|Add0~62\ = CARRY(( \D1|counter\(11) ) + ( GND ) + ( \D1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(11),
	cin => \D1|Add0~58\,
	sumout => \D1|Add0~61_sumout\,
	cout => \D1|Add0~62\);

-- Location: FF_X7_Y1_N35
\D1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~61_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(11));

-- Location: LABCELL_X7_Y1_N36
\D1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~1_sumout\ = SUM(( \D1|counter\(12) ) + ( GND ) + ( \D1|Add0~62\ ))
-- \D1|Add0~2\ = CARRY(( \D1|counter\(12) ) + ( GND ) + ( \D1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(12),
	cin => \D1|Add0~62\,
	sumout => \D1|Add0~1_sumout\,
	cout => \D1|Add0~2\);

-- Location: FF_X7_Y1_N37
\D1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~1_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(12));

-- Location: LABCELL_X7_Y1_N39
\D1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~29_sumout\ = SUM(( \D1|counter\(13) ) + ( GND ) + ( \D1|Add0~2\ ))
-- \D1|Add0~30\ = CARRY(( \D1|counter\(13) ) + ( GND ) + ( \D1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(13),
	cin => \D1|Add0~2\,
	sumout => \D1|Add0~29_sumout\,
	cout => \D1|Add0~30\);

-- Location: FF_X7_Y1_N41
\D1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~29_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(13));

-- Location: LABCELL_X7_Y1_N42
\D1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~25_sumout\ = SUM(( \D1|counter\(14) ) + ( GND ) + ( \D1|Add0~30\ ))
-- \D1|Add0~26\ = CARRY(( \D1|counter\(14) ) + ( GND ) + ( \D1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(14),
	cin => \D1|Add0~30\,
	sumout => \D1|Add0~25_sumout\,
	cout => \D1|Add0~26\);

-- Location: FF_X7_Y1_N44
\D1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~25_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(14));

-- Location: LABCELL_X7_Y1_N45
\D1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~21_sumout\ = SUM(( \D1|counter\(15) ) + ( GND ) + ( \D1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(15),
	cin => \D1|Add0~26\,
	sumout => \D1|Add0~21_sumout\);

-- Location: FF_X7_Y1_N47
\D1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|Add0~21_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D1|always0~0_combout\,
	ena => \D1|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|counter\(15));

-- Location: LABCELL_X6_Y1_N42
\D1|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~6_combout\ = ( \D1|counter\(1) & ( \D1|counter\(15) & ( (\D1|counter\(13) & (\D1|counter\(14) & (\D1|counter\(0) & \D1|counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_counter\(13),
	datab => \D1|ALT_INV_counter\(14),
	datac => \D1|ALT_INV_counter\(0),
	datad => \D1|ALT_INV_counter\(6),
	datae => \D1|ALT_INV_counter\(1),
	dataf => \D1|ALT_INV_counter\(15),
	combout => \D1|outb~6_combout\);

-- Location: LABCELL_X6_Y1_N18
\D1|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~7_combout\ = ( \D1|counter\(9) & ( \D1|counter\(7) & ( (\D1|counter\(10) & (\D1|counter\(11) & \D1|counter\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_counter\(10),
	datac => \D1|ALT_INV_counter\(11),
	datad => \D1|ALT_INV_counter\(8),
	datae => \D1|ALT_INV_counter\(9),
	dataf => \D1|ALT_INV_counter\(7),
	combout => \D1|outb~7_combout\);

-- Location: LABCELL_X7_Y1_N48
\D1|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~8_combout\ = ( \D1|outb~6_combout\ & ( \D1|outb~7_combout\ & ( (!\D1|outb~5_combout\) # ((!\D1|counter\(12)) # (!\clk_button~input_o\ $ (!\D1|intermediate~0_combout\))) ) ) ) # ( !\D1|outb~6_combout\ & ( \D1|outb~7_combout\ ) ) # ( 
-- \D1|outb~6_combout\ & ( !\D1|outb~7_combout\ ) ) # ( !\D1|outb~6_combout\ & ( !\D1|outb~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_button~input_o\,
	datab => \D1|ALT_INV_intermediate~0_combout\,
	datac => \D1|ALT_INV_outb~5_combout\,
	datad => \D1|ALT_INV_counter\(12),
	datae => \D1|ALT_INV_outb~6_combout\,
	dataf => \D1|ALT_INV_outb~7_combout\,
	combout => \D1|outb~8_combout\);

-- Location: LABCELL_X6_Y1_N39
\D1|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~3_combout\ = ( \D1|outb~1_combout\ & ( \D1|outb~2_combout\ & ( (!\D1|outb~8_combout\ & !\D1|intermediate~0_combout\) ) ) ) # ( !\D1|outb~1_combout\ & ( \D1|outb~2_combout\ & ( (\D1|intermediate~0_combout\) # (\D1|outb~8_combout\) ) ) ) # ( 
-- \D1|outb~1_combout\ & ( !\D1|outb~2_combout\ & ( (!\D1|intermediate~0_combout\) # (\D1|outb~8_combout\) ) ) ) # ( !\D1|outb~1_combout\ & ( !\D1|outb~2_combout\ & ( (!\D1|outb~8_combout\ & \D1|intermediate~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010110111011101110101110111011101111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_outb~8_combout\,
	datab => \D1|ALT_INV_intermediate~0_combout\,
	datae => \D1|ALT_INV_outb~1_combout\,
	dataf => \D1|ALT_INV_outb~2_combout\,
	combout => \D1|outb~3_combout\);

-- Location: FF_X6_Y1_N40
\D1|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|outb~3_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|outb~_emulated_q\);

-- Location: LABCELL_X7_Y1_N57
\D1|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~2_combout\ = ( \D1|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\clk_button~input_o\)) # (\rst_db~input_o\ & ((!\D1|outb~1_combout\))) ) ) # ( !\D1|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\clk_button~input_o\)) # (\rst_db~input_o\ & 
-- ((\D1|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101011111010100000101111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_button~input_o\,
	datac => \ALT_INV_rst_db~input_o\,
	datad => \D1|ALT_INV_outb~1_combout\,
	dataf => \D1|ALT_INV_outb~_emulated_q\,
	combout => \D1|outb~2_combout\);

-- Location: IOIBUF_X34_Y0_N35
\confirm~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirm,
	o => \confirm~input_o\);

-- Location: LABCELL_X10_Y1_N51
\D3|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~1_combout\ = ( \D3|outb~1_combout\ & ( \rst_db~input_o\ ) ) # ( \D3|outb~1_combout\ & ( !\rst_db~input_o\ & ( \confirm~input_o\ ) ) ) # ( !\D3|outb~1_combout\ & ( !\rst_db~input_o\ & ( \confirm~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_confirm~input_o\,
	datae => \D3|ALT_INV_outb~1_combout\,
	dataf => \ALT_INV_rst_db~input_o\,
	combout => \D3|outb~1_combout\);

-- Location: LABCELL_X10_Y1_N36
\D3|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|intermediate~1_combout\ = ( \confirm~input_o\ & ( !\D3|outb~1_combout\ ) ) # ( !\confirm~input_o\ & ( \D3|outb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D3|ALT_INV_outb~1_combout\,
	datae => \ALT_INV_confirm~input_o\,
	combout => \D3|intermediate~1_combout\);

-- Location: FF_X10_Y1_N38
\D3|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|intermediate~1_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|intermediate~_emulated_q\);

-- Location: LABCELL_X10_Y1_N9
\D3|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|intermediate~0_combout\ = ( \D3|intermediate~_emulated_q\ & ( \D3|outb~1_combout\ & ( (!\rst_db~input_o\ & \confirm~input_o\) ) ) ) # ( !\D3|intermediate~_emulated_q\ & ( \D3|outb~1_combout\ & ( (\confirm~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D3|intermediate~_emulated_q\ & ( !\D3|outb~1_combout\ & ( (\confirm~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D3|intermediate~_emulated_q\ & ( !\D3|outb~1_combout\ & ( (!\rst_db~input_o\ & \confirm~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100111111001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_confirm~input_o\,
	datae => \D3|ALT_INV_intermediate~_emulated_q\,
	dataf => \D3|ALT_INV_outb~1_combout\,
	combout => \D3|intermediate~0_combout\);

-- Location: LABCELL_X14_Y1_N0
\D3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~9_sumout\ = SUM(( \D3|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D3|Add0~10\ = CARRY(( \D3|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D3|Add0~9_sumout\,
	cout => \D3|Add0~10\);

-- Location: LABCELL_X10_Y1_N18
\D3|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|always0~0_combout\ = ( !\confirm~input_o\ & ( \D3|intermediate~0_combout\ ) ) # ( \confirm~input_o\ & ( !\D3|intermediate~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_confirm~input_o\,
	dataf => \D3|ALT_INV_intermediate~0_combout\,
	combout => \D3|always0~0_combout\);

-- Location: FF_X14_Y1_N1
\D3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~9_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(0));

-- Location: LABCELL_X14_Y1_N3
\D3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~5_sumout\ = SUM(( \D3|counter\(1) ) + ( GND ) + ( \D3|Add0~10\ ))
-- \D3|Add0~6\ = CARRY(( \D3|counter\(1) ) + ( GND ) + ( \D3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(1),
	cin => \D3|Add0~10\,
	sumout => \D3|Add0~5_sumout\,
	cout => \D3|Add0~6\);

-- Location: FF_X14_Y1_N5
\D3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~5_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(1));

-- Location: LABCELL_X14_Y1_N6
\D3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~21_sumout\ = SUM(( \D3|counter\(2) ) + ( GND ) + ( \D3|Add0~6\ ))
-- \D3|Add0~22\ = CARRY(( \D3|counter\(2) ) + ( GND ) + ( \D3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(2),
	cin => \D3|Add0~6\,
	sumout => \D3|Add0~21_sumout\,
	cout => \D3|Add0~22\);

-- Location: FF_X14_Y1_N8
\D3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~21_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(2));

-- Location: LABCELL_X14_Y1_N9
\D3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~25_sumout\ = SUM(( \D3|counter\(3) ) + ( GND ) + ( \D3|Add0~22\ ))
-- \D3|Add0~26\ = CARRY(( \D3|counter\(3) ) + ( GND ) + ( \D3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(3),
	cin => \D3|Add0~22\,
	sumout => \D3|Add0~25_sumout\,
	cout => \D3|Add0~26\);

-- Location: FF_X14_Y1_N10
\D3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~25_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(3));

-- Location: LABCELL_X14_Y1_N12
\D3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~29_sumout\ = SUM(( \D3|counter\(4) ) + ( GND ) + ( \D3|Add0~26\ ))
-- \D3|Add0~30\ = CARRY(( \D3|counter\(4) ) + ( GND ) + ( \D3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(4),
	cin => \D3|Add0~26\,
	sumout => \D3|Add0~29_sumout\,
	cout => \D3|Add0~30\);

-- Location: FF_X14_Y1_N14
\D3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~29_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(4));

-- Location: LABCELL_X14_Y1_N15
\D3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~37_sumout\ = SUM(( \D3|counter\(5) ) + ( GND ) + ( \D3|Add0~30\ ))
-- \D3|Add0~38\ = CARRY(( \D3|counter\(5) ) + ( GND ) + ( \D3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(5),
	cin => \D3|Add0~30\,
	sumout => \D3|Add0~37_sumout\,
	cout => \D3|Add0~38\);

-- Location: FF_X14_Y1_N17
\D3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~37_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(5));

-- Location: LABCELL_X14_Y1_N18
\D3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~41_sumout\ = SUM(( \D3|counter\(6) ) + ( GND ) + ( \D3|Add0~38\ ))
-- \D3|Add0~42\ = CARRY(( \D3|counter\(6) ) + ( GND ) + ( \D3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(6),
	cin => \D3|Add0~38\,
	sumout => \D3|Add0~41_sumout\,
	cout => \D3|Add0~42\);

-- Location: FF_X14_Y1_N20
\D3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~41_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(6));

-- Location: LABCELL_X14_Y1_N21
\D3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~33_sumout\ = SUM(( \D3|counter\(7) ) + ( GND ) + ( \D3|Add0~42\ ))
-- \D3|Add0~34\ = CARRY(( \D3|counter\(7) ) + ( GND ) + ( \D3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(7),
	cin => \D3|Add0~42\,
	sumout => \D3|Add0~33_sumout\,
	cout => \D3|Add0~34\);

-- Location: FF_X14_Y1_N23
\D3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~33_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(7));

-- Location: LABCELL_X14_Y1_N24
\D3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~1_sumout\ = SUM(( \D3|counter\(8) ) + ( GND ) + ( \D3|Add0~34\ ))
-- \D3|Add0~2\ = CARRY(( \D3|counter\(8) ) + ( GND ) + ( \D3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(8),
	cin => \D3|Add0~34\,
	sumout => \D3|Add0~1_sumout\,
	cout => \D3|Add0~2\);

-- Location: FF_X14_Y1_N26
\D3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~1_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(8));

-- Location: LABCELL_X14_Y1_N54
\D3|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~6_combout\ = ( \D3|counter\(3) & ( \D3|counter\(2) & ( (\D3|counter\(6) & (\D3|counter\(5) & (\D3|counter\(7) & \D3|counter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_counter\(6),
	datab => \D3|ALT_INV_counter\(5),
	datac => \D3|ALT_INV_counter\(7),
	datad => \D3|ALT_INV_counter\(4),
	datae => \D3|ALT_INV_counter\(3),
	dataf => \D3|ALT_INV_counter\(2),
	combout => \D3|outb~6_combout\);

-- Location: LABCELL_X14_Y1_N27
\D3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~61_sumout\ = SUM(( \D3|counter\(9) ) + ( GND ) + ( \D3|Add0~2\ ))
-- \D3|Add0~62\ = CARRY(( \D3|counter\(9) ) + ( GND ) + ( \D3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(9),
	cin => \D3|Add0~2\,
	sumout => \D3|Add0~61_sumout\,
	cout => \D3|Add0~62\);

-- Location: FF_X14_Y1_N29
\D3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~61_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(9));

-- Location: LABCELL_X14_Y1_N30
\D3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~57_sumout\ = SUM(( \D3|counter\(10) ) + ( GND ) + ( \D3|Add0~62\ ))
-- \D3|Add0~58\ = CARRY(( \D3|counter\(10) ) + ( GND ) + ( \D3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(10),
	cin => \D3|Add0~62\,
	sumout => \D3|Add0~57_sumout\,
	cout => \D3|Add0~58\);

-- Location: FF_X14_Y1_N32
\D3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~57_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(10));

-- Location: LABCELL_X14_Y1_N33
\D3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~53_sumout\ = SUM(( \D3|counter\(11) ) + ( GND ) + ( \D3|Add0~58\ ))
-- \D3|Add0~54\ = CARRY(( \D3|counter\(11) ) + ( GND ) + ( \D3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(11),
	cin => \D3|Add0~58\,
	sumout => \D3|Add0~53_sumout\,
	cout => \D3|Add0~54\);

-- Location: FF_X14_Y1_N35
\D3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~53_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(11));

-- Location: LABCELL_X14_Y1_N36
\D3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~49_sumout\ = SUM(( \D3|counter\(12) ) + ( GND ) + ( \D3|Add0~54\ ))
-- \D3|Add0~50\ = CARRY(( \D3|counter\(12) ) + ( GND ) + ( \D3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(12),
	cin => \D3|Add0~54\,
	sumout => \D3|Add0~49_sumout\,
	cout => \D3|Add0~50\);

-- Location: FF_X14_Y1_N38
\D3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~49_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(12));

-- Location: LABCELL_X14_Y1_N39
\D3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~45_sumout\ = SUM(( \D3|counter\(13) ) + ( GND ) + ( \D3|Add0~50\ ))
-- \D3|Add0~46\ = CARRY(( \D3|counter\(13) ) + ( GND ) + ( \D3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(13),
	cin => \D3|Add0~50\,
	sumout => \D3|Add0~45_sumout\,
	cout => \D3|Add0~46\);

-- Location: FF_X14_Y1_N41
\D3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~45_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(13));

-- Location: MLABCELL_X13_Y1_N48
\D3|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~7_combout\ = ( \D3|counter\(12) & ( \D3|counter\(13) & ( (\D3|counter\(11) & (\D3|counter\(9) & \D3|counter\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_counter\(11),
	datac => \D3|ALT_INV_counter\(9),
	datad => \D3|ALT_INV_counter\(10),
	datae => \D3|ALT_INV_counter\(12),
	dataf => \D3|ALT_INV_counter\(13),
	combout => \D3|outb~7_combout\);

-- Location: LABCELL_X14_Y1_N42
\D3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~17_sumout\ = SUM(( \D3|counter\(14) ) + ( GND ) + ( \D3|Add0~46\ ))
-- \D3|Add0~18\ = CARRY(( \D3|counter\(14) ) + ( GND ) + ( \D3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(14),
	cin => \D3|Add0~46\,
	sumout => \D3|Add0~17_sumout\,
	cout => \D3|Add0~18\);

-- Location: FF_X14_Y1_N43
\D3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~17_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(14));

-- Location: LABCELL_X14_Y1_N45
\D3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~13_sumout\ = SUM(( \D3|counter\(15) ) + ( GND ) + ( \D3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(15),
	cin => \D3|Add0~18\,
	sumout => \D3|Add0~13_sumout\);

-- Location: FF_X14_Y1_N47
\D3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|Add0~13_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D3|always0~0_combout\,
	ena => \D3|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|counter\(15));

-- Location: LABCELL_X16_Y1_N57
\D3|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~5_combout\ = ( \D3|counter\(0) & ( \D3|counter\(1) & ( (\D3|counter\(14) & \D3|counter\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D3|ALT_INV_counter\(14),
	datad => \D3|ALT_INV_counter\(15),
	datae => \D3|ALT_INV_counter\(0),
	dataf => \D3|ALT_INV_counter\(1),
	combout => \D3|outb~5_combout\);

-- Location: LABCELL_X14_Y1_N48
\D3|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~8_combout\ = ( \D3|outb~7_combout\ & ( \D3|outb~5_combout\ & ( (!\D3|counter\(8)) # ((!\D3|outb~6_combout\) # (!\D3|intermediate~0_combout\ $ (!\confirm~input_o\))) ) ) ) # ( !\D3|outb~7_combout\ & ( \D3|outb~5_combout\ ) ) # ( 
-- \D3|outb~7_combout\ & ( !\D3|outb~5_combout\ ) ) # ( !\D3|outb~7_combout\ & ( !\D3|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111101111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_counter\(8),
	datab => \D3|ALT_INV_intermediate~0_combout\,
	datac => \D3|ALT_INV_outb~6_combout\,
	datad => \ALT_INV_confirm~input_o\,
	datae => \D3|ALT_INV_outb~7_combout\,
	dataf => \D3|ALT_INV_outb~5_combout\,
	combout => \D3|outb~8_combout\);

-- Location: LABCELL_X10_Y2_N3
\D3|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~3_combout\ = ( \D3|outb~8_combout\ & ( !\D3|outb~1_combout\ $ (!\D3|outb~2_combout\) ) ) # ( !\D3|outb~8_combout\ & ( !\D3|outb~1_combout\ $ (!\D3|intermediate~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D3|ALT_INV_outb~1_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D3|ALT_INV_intermediate~0_combout\,
	dataf => \D3|ALT_INV_outb~8_combout\,
	combout => \D3|outb~3_combout\);

-- Location: FF_X10_Y2_N5
\D3|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D3|outb~3_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|outb~_emulated_q\);

-- Location: LABCELL_X10_Y2_N0
\D3|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~2_combout\ = ( \confirm~input_o\ & ( (!\rst_db~input_o\) # (!\D3|outb~1_combout\ $ (!\D3|outb~_emulated_q\)) ) ) # ( !\confirm~input_o\ & ( (\rst_db~input_o\ & (!\D3|outb~1_combout\ $ (!\D3|outb~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101011110101111110101111010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~1_combout\,
	datac => \ALT_INV_rst_db~input_o\,
	datad => \D3|ALT_INV_outb~_emulated_q\,
	dataf => \ALT_INV_confirm~input_o\,
	combout => \D3|outb~2_combout\);

-- Location: IOIBUF_X33_Y0_N41
\money[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_money(0),
	o => \money[0]~input_o\);

-- Location: LABCELL_X12_Y1_N39
\D4|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~1_combout\ = ( \D4|outb~1_combout\ & ( \rst_db~input_o\ ) ) # ( \D4|outb~1_combout\ & ( !\rst_db~input_o\ & ( \money[0]~input_o\ ) ) ) # ( !\D4|outb~1_combout\ & ( !\rst_db~input_o\ & ( \money[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_money[0]~input_o\,
	datae => \D4|ALT_INV_outb~1_combout\,
	dataf => \ALT_INV_rst_db~input_o\,
	combout => \D4|outb~1_combout\);

-- Location: LABCELL_X12_Y1_N45
\D4|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|intermediate~1_combout\ = ( !\money[0]~input_o\ & ( \D4|outb~1_combout\ ) ) # ( \money[0]~input_o\ & ( !\D4|outb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_money[0]~input_o\,
	dataf => \D4|ALT_INV_outb~1_combout\,
	combout => \D4|intermediate~1_combout\);

-- Location: FF_X12_Y1_N47
\D4|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|intermediate~1_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|intermediate~_emulated_q\);

-- Location: LABCELL_X12_Y1_N54
\D4|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|intermediate~0_combout\ = ( \D4|intermediate~_emulated_q\ & ( \D4|outb~1_combout\ & ( (!\rst_db~input_o\ & \money[0]~input_o\) ) ) ) # ( !\D4|intermediate~_emulated_q\ & ( \D4|outb~1_combout\ & ( (\money[0]~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D4|intermediate~_emulated_q\ & ( !\D4|outb~1_combout\ & ( (\money[0]~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D4|intermediate~_emulated_q\ & ( !\D4|outb~1_combout\ & ( (!\rst_db~input_o\ & \money[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011101110111011101110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_db~input_o\,
	datab => \ALT_INV_money[0]~input_o\,
	datae => \D4|ALT_INV_intermediate~_emulated_q\,
	dataf => \D4|ALT_INV_outb~1_combout\,
	combout => \D4|intermediate~0_combout\);

-- Location: MLABCELL_X13_Y1_N0
\D4|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~33_sumout\ = SUM(( \D4|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D4|Add0~34\ = CARRY(( \D4|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D4|Add0~33_sumout\,
	cout => \D4|Add0~34\);

-- Location: LABCELL_X12_Y1_N24
\D4|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|always0~0_combout\ = ( !\money[0]~input_o\ & ( \D4|intermediate~0_combout\ ) ) # ( \money[0]~input_o\ & ( !\D4|intermediate~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_money[0]~input_o\,
	dataf => \D4|ALT_INV_intermediate~0_combout\,
	combout => \D4|always0~0_combout\);

-- Location: FF_X13_Y1_N2
\D4|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~33_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(0));

-- Location: MLABCELL_X13_Y1_N3
\D4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~29_sumout\ = SUM(( \D4|counter\(1) ) + ( GND ) + ( \D4|Add0~34\ ))
-- \D4|Add0~30\ = CARRY(( \D4|counter\(1) ) + ( GND ) + ( \D4|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(1),
	cin => \D4|Add0~34\,
	sumout => \D4|Add0~29_sumout\,
	cout => \D4|Add0~30\);

-- Location: FF_X13_Y1_N5
\D4|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~29_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(1));

-- Location: MLABCELL_X13_Y1_N6
\D4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~25_sumout\ = SUM(( \D4|counter\(2) ) + ( GND ) + ( \D4|Add0~30\ ))
-- \D4|Add0~26\ = CARRY(( \D4|counter\(2) ) + ( GND ) + ( \D4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(2),
	cin => \D4|Add0~30\,
	sumout => \D4|Add0~25_sumout\,
	cout => \D4|Add0~26\);

-- Location: FF_X13_Y1_N8
\D4|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~25_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(2));

-- Location: MLABCELL_X13_Y1_N9
\D4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~21_sumout\ = SUM(( \D4|counter\(3) ) + ( GND ) + ( \D4|Add0~26\ ))
-- \D4|Add0~22\ = CARRY(( \D4|counter\(3) ) + ( GND ) + ( \D4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(3),
	cin => \D4|Add0~26\,
	sumout => \D4|Add0~21_sumout\,
	cout => \D4|Add0~22\);

-- Location: FF_X13_Y1_N11
\D4|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~21_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(3));

-- Location: MLABCELL_X13_Y1_N12
\D4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~1_sumout\ = SUM(( \D4|counter\(4) ) + ( GND ) + ( \D4|Add0~22\ ))
-- \D4|Add0~2\ = CARRY(( \D4|counter\(4) ) + ( GND ) + ( \D4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(4),
	cin => \D4|Add0~22\,
	sumout => \D4|Add0~1_sumout\,
	cout => \D4|Add0~2\);

-- Location: FF_X13_Y1_N13
\D4|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~1_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(4));

-- Location: MLABCELL_X13_Y1_N15
\D4|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~61_sumout\ = SUM(( \D4|counter\(5) ) + ( GND ) + ( \D4|Add0~2\ ))
-- \D4|Add0~62\ = CARRY(( \D4|counter\(5) ) + ( GND ) + ( \D4|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(5),
	cin => \D4|Add0~2\,
	sumout => \D4|Add0~61_sumout\,
	cout => \D4|Add0~62\);

-- Location: FF_X13_Y1_N17
\D4|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~61_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(5));

-- Location: MLABCELL_X13_Y1_N18
\D4|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~57_sumout\ = SUM(( \D4|counter\(6) ) + ( GND ) + ( \D4|Add0~62\ ))
-- \D4|Add0~58\ = CARRY(( \D4|counter\(6) ) + ( GND ) + ( \D4|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(6),
	cin => \D4|Add0~62\,
	sumout => \D4|Add0~57_sumout\,
	cout => \D4|Add0~58\);

-- Location: FF_X13_Y1_N20
\D4|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~57_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(6));

-- Location: MLABCELL_X13_Y1_N21
\D4|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~53_sumout\ = SUM(( \D4|counter\(7) ) + ( GND ) + ( \D4|Add0~58\ ))
-- \D4|Add0~54\ = CARRY(( \D4|counter\(7) ) + ( GND ) + ( \D4|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(7),
	cin => \D4|Add0~58\,
	sumout => \D4|Add0~53_sumout\,
	cout => \D4|Add0~54\);

-- Location: FF_X13_Y1_N23
\D4|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~53_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(7));

-- Location: MLABCELL_X13_Y1_N24
\D4|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~49_sumout\ = SUM(( \D4|counter\(8) ) + ( GND ) + ( \D4|Add0~54\ ))
-- \D4|Add0~50\ = CARRY(( \D4|counter\(8) ) + ( GND ) + ( \D4|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(8),
	cin => \D4|Add0~54\,
	sumout => \D4|Add0~49_sumout\,
	cout => \D4|Add0~50\);

-- Location: FF_X13_Y1_N26
\D4|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~49_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(8));

-- Location: MLABCELL_X13_Y1_N27
\D4|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~45_sumout\ = SUM(( \D4|counter\(9) ) + ( GND ) + ( \D4|Add0~50\ ))
-- \D4|Add0~46\ = CARRY(( \D4|counter\(9) ) + ( GND ) + ( \D4|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(9),
	cin => \D4|Add0~50\,
	sumout => \D4|Add0~45_sumout\,
	cout => \D4|Add0~46\);

-- Location: FF_X13_Y1_N29
\D4|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~45_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(9));

-- Location: LABCELL_X12_Y1_N3
\D4|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~7_combout\ = ( \D4|counter\(7) & ( \D4|counter\(8) & ( (\D4|counter\(9) & (\D4|counter\(6) & \D4|counter\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_counter\(9),
	datac => \D4|ALT_INV_counter\(6),
	datad => \D4|ALT_INV_counter\(5),
	datae => \D4|ALT_INV_counter\(7),
	dataf => \D4|ALT_INV_counter\(8),
	combout => \D4|outb~7_combout\);

-- Location: MLABCELL_X13_Y1_N30
\D4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~17_sumout\ = SUM(( \D4|counter\(10) ) + ( GND ) + ( \D4|Add0~46\ ))
-- \D4|Add0~18\ = CARRY(( \D4|counter\(10) ) + ( GND ) + ( \D4|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(10),
	cin => \D4|Add0~46\,
	sumout => \D4|Add0~17_sumout\,
	cout => \D4|Add0~18\);

-- Location: FF_X13_Y1_N32
\D4|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~17_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(10));

-- Location: MLABCELL_X13_Y1_N33
\D4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~13_sumout\ = SUM(( \D4|counter\(11) ) + ( GND ) + ( \D4|Add0~18\ ))
-- \D4|Add0~14\ = CARRY(( \D4|counter\(11) ) + ( GND ) + ( \D4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(11),
	cin => \D4|Add0~18\,
	sumout => \D4|Add0~13_sumout\,
	cout => \D4|Add0~14\);

-- Location: FF_X13_Y1_N35
\D4|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~13_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(11));

-- Location: MLABCELL_X13_Y1_N36
\D4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~9_sumout\ = SUM(( \D4|counter\(12) ) + ( GND ) + ( \D4|Add0~14\ ))
-- \D4|Add0~10\ = CARRY(( \D4|counter\(12) ) + ( GND ) + ( \D4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(12),
	cin => \D4|Add0~14\,
	sumout => \D4|Add0~9_sumout\,
	cout => \D4|Add0~10\);

-- Location: FF_X13_Y1_N38
\D4|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~9_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(12));

-- Location: MLABCELL_X13_Y1_N39
\D4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~5_sumout\ = SUM(( \D4|counter\(13) ) + ( GND ) + ( \D4|Add0~10\ ))
-- \D4|Add0~6\ = CARRY(( \D4|counter\(13) ) + ( GND ) + ( \D4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(13),
	cin => \D4|Add0~10\,
	sumout => \D4|Add0~5_sumout\,
	cout => \D4|Add0~6\);

-- Location: FF_X13_Y1_N41
\D4|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~5_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(13));

-- Location: MLABCELL_X13_Y1_N42
\D4|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~41_sumout\ = SUM(( \D4|counter\(14) ) + ( GND ) + ( \D4|Add0~6\ ))
-- \D4|Add0~42\ = CARRY(( \D4|counter\(14) ) + ( GND ) + ( \D4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(14),
	cin => \D4|Add0~6\,
	sumout => \D4|Add0~41_sumout\,
	cout => \D4|Add0~42\);

-- Location: FF_X13_Y1_N44
\D4|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~41_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(14));

-- Location: MLABCELL_X13_Y1_N45
\D4|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~37_sumout\ = SUM(( \D4|counter\(15) ) + ( GND ) + ( \D4|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(15),
	cin => \D4|Add0~42\,
	sumout => \D4|Add0~37_sumout\);

-- Location: FF_X13_Y1_N47
\D4|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|Add0~37_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D4|always0~0_combout\,
	ena => \D4|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|counter\(15));

-- Location: LABCELL_X12_Y1_N21
\D4|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~6_combout\ = ( \D4|counter\(0) & ( \D4|counter\(15) & ( (\D4|counter\(1) & (\D4|counter\(14) & (\D4|counter\(3) & \D4|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_counter\(1),
	datab => \D4|ALT_INV_counter\(14),
	datac => \D4|ALT_INV_counter\(3),
	datad => \D4|ALT_INV_counter\(2),
	datae => \D4|ALT_INV_counter\(0),
	dataf => \D4|ALT_INV_counter\(15),
	combout => \D4|outb~6_combout\);

-- Location: MLABCELL_X13_Y1_N54
\D4|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~5_combout\ = ( \D4|counter\(12) & ( \D4|counter\(13) & ( (\D4|counter\(11) & \D4|counter\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D4|ALT_INV_counter\(11),
	datad => \D4|ALT_INV_counter\(10),
	datae => \D4|ALT_INV_counter\(12),
	dataf => \D4|ALT_INV_counter\(13),
	combout => \D4|outb~5_combout\);

-- Location: LABCELL_X12_Y1_N51
\D4|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~8_combout\ = ( \D4|outb~6_combout\ & ( \D4|outb~5_combout\ & ( (!\D4|counter\(4)) # ((!\D4|outb~7_combout\) # (!\D4|intermediate~0_combout\ $ (!\money[0]~input_o\))) ) ) ) # ( !\D4|outb~6_combout\ & ( \D4|outb~5_combout\ ) ) # ( 
-- \D4|outb~6_combout\ & ( !\D4|outb~5_combout\ ) ) # ( !\D4|outb~6_combout\ & ( !\D4|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_intermediate~0_combout\,
	datab => \ALT_INV_money[0]~input_o\,
	datac => \D4|ALT_INV_counter\(4),
	datad => \D4|ALT_INV_outb~7_combout\,
	datae => \D4|ALT_INV_outb~6_combout\,
	dataf => \D4|ALT_INV_outb~5_combout\,
	combout => \D4|outb~8_combout\);

-- Location: MLABCELL_X9_Y2_N39
\D4|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~3_combout\ = ( \D4|outb~2_combout\ & ( !\D4|outb~1_combout\ $ (((!\D4|outb~8_combout\ & !\D4|intermediate~0_combout\))) ) ) # ( !\D4|outb~2_combout\ & ( !\D4|outb~1_combout\ $ (((!\D4|intermediate~0_combout\) # (\D4|outb~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010101011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~8_combout\,
	datac => \D4|ALT_INV_intermediate~0_combout\,
	datad => \D4|ALT_INV_outb~1_combout\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \D4|outb~3_combout\);

-- Location: FF_X9_Y2_N41
\D4|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D4|outb~3_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|outb~_emulated_q\);

-- Location: MLABCELL_X9_Y2_N54
\D4|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~2_combout\ = ( \D4|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\money[0]~input_o\)) # (\rst_db~input_o\ & ((!\D4|outb~1_combout\))) ) ) # ( !\D4|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\money[0]~input_o\)) # (\rst_db~input_o\ & 
-- ((\D4|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_money[0]~input_o\,
	datad => \D4|ALT_INV_outb~1_combout\,
	dataf => \D4|ALT_INV_outb~_emulated_q\,
	combout => \D4|outb~2_combout\);

-- Location: IOIBUF_X33_Y0_N58
\money[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_money(1),
	o => \money[1]~input_o\);

-- Location: LABCELL_X10_Y1_N57
\D5|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~1_combout\ = ( \D5|outb~1_combout\ & ( \rst_db~input_o\ ) ) # ( \D5|outb~1_combout\ & ( !\rst_db~input_o\ & ( \money[1]~input_o\ ) ) ) # ( !\D5|outb~1_combout\ & ( !\rst_db~input_o\ & ( \money[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_money[1]~input_o\,
	datae => \D5|ALT_INV_outb~1_combout\,
	dataf => \ALT_INV_rst_db~input_o\,
	combout => \D5|outb~1_combout\);

-- Location: LABCELL_X10_Y1_N12
\D5|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|intermediate~1_combout\ = ( \D5|outb~1_combout\ & ( !\money[1]~input_o\ ) ) # ( !\D5|outb~1_combout\ & ( \money[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_money[1]~input_o\,
	dataf => \D5|ALT_INV_outb~1_combout\,
	combout => \D5|intermediate~1_combout\);

-- Location: FF_X10_Y1_N14
\D5|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|intermediate~1_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|intermediate~_emulated_q\);

-- Location: LABCELL_X10_Y1_N24
\D5|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|intermediate~0_combout\ = ( \D5|outb~1_combout\ & ( \D5|intermediate~_emulated_q\ & ( (!\rst_db~input_o\ & \money[1]~input_o\) ) ) ) # ( !\D5|outb~1_combout\ & ( \D5|intermediate~_emulated_q\ & ( (\money[1]~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D5|outb~1_combout\ & ( !\D5|intermediate~_emulated_q\ & ( (\money[1]~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D5|outb~1_combout\ & ( !\D5|intermediate~_emulated_q\ & ( (!\rst_db~input_o\ & \money[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111101010101111111110000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_db~input_o\,
	datad => \ALT_INV_money[1]~input_o\,
	datae => \D5|ALT_INV_outb~1_combout\,
	dataf => \D5|ALT_INV_intermediate~_emulated_q\,
	combout => \D5|intermediate~0_combout\);

-- Location: MLABCELL_X9_Y1_N0
\D5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~25_sumout\ = SUM(( \D5|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D5|Add0~26\ = CARRY(( \D5|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D5|Add0~25_sumout\,
	cout => \D5|Add0~26\);

-- Location: MLABCELL_X9_Y1_N57
\D5|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|always0~0_combout\ = ( \D5|intermediate~0_combout\ & ( !\money[1]~input_o\ ) ) # ( !\D5|intermediate~0_combout\ & ( \money[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_money[1]~input_o\,
	dataf => \D5|ALT_INV_intermediate~0_combout\,
	combout => \D5|always0~0_combout\);

-- Location: FF_X9_Y1_N1
\D5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~25_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(0));

-- Location: MLABCELL_X9_Y1_N3
\D5|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~49_sumout\ = SUM(( \D5|counter\(1) ) + ( GND ) + ( \D5|Add0~26\ ))
-- \D5|Add0~50\ = CARRY(( \D5|counter\(1) ) + ( GND ) + ( \D5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(1),
	cin => \D5|Add0~26\,
	sumout => \D5|Add0~49_sumout\,
	cout => \D5|Add0~50\);

-- Location: FF_X9_Y1_N5
\D5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~49_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(1));

-- Location: MLABCELL_X9_Y1_N6
\D5|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~53_sumout\ = SUM(( \D5|counter\(2) ) + ( GND ) + ( \D5|Add0~50\ ))
-- \D5|Add0~54\ = CARRY(( \D5|counter\(2) ) + ( GND ) + ( \D5|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(2),
	cin => \D5|Add0~50\,
	sumout => \D5|Add0~53_sumout\,
	cout => \D5|Add0~54\);

-- Location: FF_X9_Y1_N8
\D5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~53_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(2));

-- Location: MLABCELL_X9_Y1_N9
\D5|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~57_sumout\ = SUM(( \D5|counter\(3) ) + ( GND ) + ( \D5|Add0~54\ ))
-- \D5|Add0~58\ = CARRY(( \D5|counter\(3) ) + ( GND ) + ( \D5|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(3),
	cin => \D5|Add0~54\,
	sumout => \D5|Add0~57_sumout\,
	cout => \D5|Add0~58\);

-- Location: FF_X9_Y1_N10
\D5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~57_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(3));

-- Location: MLABCELL_X9_Y1_N12
\D5|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~61_sumout\ = SUM(( \D5|counter\(4) ) + ( GND ) + ( \D5|Add0~58\ ))
-- \D5|Add0~62\ = CARRY(( \D5|counter\(4) ) + ( GND ) + ( \D5|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(4),
	cin => \D5|Add0~58\,
	sumout => \D5|Add0~61_sumout\,
	cout => \D5|Add0~62\);

-- Location: FF_X9_Y1_N14
\D5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~61_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(4));

-- Location: MLABCELL_X9_Y1_N15
\D5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~21_sumout\ = SUM(( \D5|counter\(5) ) + ( GND ) + ( \D5|Add0~62\ ))
-- \D5|Add0~22\ = CARRY(( \D5|counter\(5) ) + ( GND ) + ( \D5|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(5),
	cin => \D5|Add0~62\,
	sumout => \D5|Add0~21_sumout\,
	cout => \D5|Add0~22\);

-- Location: FF_X9_Y1_N16
\D5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~21_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(5));

-- Location: MLABCELL_X9_Y1_N18
\D5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~29_sumout\ = SUM(( \D5|counter\(6) ) + ( GND ) + ( \D5|Add0~22\ ))
-- \D5|Add0~30\ = CARRY(( \D5|counter\(6) ) + ( GND ) + ( \D5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(6),
	cin => \D5|Add0~22\,
	sumout => \D5|Add0~29_sumout\,
	cout => \D5|Add0~30\);

-- Location: FF_X9_Y1_N20
\D5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~29_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(6));

-- Location: MLABCELL_X9_Y1_N21
\D5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~33_sumout\ = SUM(( \D5|counter\(7) ) + ( GND ) + ( \D5|Add0~30\ ))
-- \D5|Add0~34\ = CARRY(( \D5|counter\(7) ) + ( GND ) + ( \D5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(7),
	cin => \D5|Add0~30\,
	sumout => \D5|Add0~33_sumout\,
	cout => \D5|Add0~34\);

-- Location: FF_X9_Y1_N22
\D5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~33_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(7));

-- Location: MLABCELL_X9_Y1_N24
\D5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~37_sumout\ = SUM(( \D5|counter\(8) ) + ( GND ) + ( \D5|Add0~34\ ))
-- \D5|Add0~38\ = CARRY(( \D5|counter\(8) ) + ( GND ) + ( \D5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(8),
	cin => \D5|Add0~34\,
	sumout => \D5|Add0~37_sumout\,
	cout => \D5|Add0~38\);

-- Location: FF_X9_Y1_N25
\D5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~37_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(8));

-- Location: MLABCELL_X9_Y1_N27
\D5|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~41_sumout\ = SUM(( \D5|counter\(9) ) + ( GND ) + ( \D5|Add0~38\ ))
-- \D5|Add0~42\ = CARRY(( \D5|counter\(9) ) + ( GND ) + ( \D5|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(9),
	cin => \D5|Add0~38\,
	sumout => \D5|Add0~41_sumout\,
	cout => \D5|Add0~42\);

-- Location: FF_X9_Y1_N28
\D5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~41_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(9));

-- Location: MLABCELL_X9_Y1_N30
\D5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~5_sumout\ = SUM(( \D5|counter\(10) ) + ( GND ) + ( \D5|Add0~42\ ))
-- \D5|Add0~6\ = CARRY(( \D5|counter\(10) ) + ( GND ) + ( \D5|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(10),
	cin => \D5|Add0~42\,
	sumout => \D5|Add0~5_sumout\,
	cout => \D5|Add0~6\);

-- Location: FF_X9_Y1_N31
\D5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~5_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(10));

-- Location: MLABCELL_X9_Y1_N33
\D5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~9_sumout\ = SUM(( \D5|counter\(11) ) + ( GND ) + ( \D5|Add0~6\ ))
-- \D5|Add0~10\ = CARRY(( \D5|counter\(11) ) + ( GND ) + ( \D5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(11),
	cin => \D5|Add0~6\,
	sumout => \D5|Add0~9_sumout\,
	cout => \D5|Add0~10\);

-- Location: FF_X9_Y1_N34
\D5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~9_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(11));

-- Location: MLABCELL_X9_Y1_N36
\D5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~17_sumout\ = SUM(( \D5|counter\(12) ) + ( GND ) + ( \D5|Add0~10\ ))
-- \D5|Add0~18\ = CARRY(( \D5|counter\(12) ) + ( GND ) + ( \D5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(12),
	cin => \D5|Add0~10\,
	sumout => \D5|Add0~17_sumout\,
	cout => \D5|Add0~18\);

-- Location: FF_X9_Y1_N37
\D5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~17_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(12));

-- Location: MLABCELL_X9_Y1_N39
\D5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~1_sumout\ = SUM(( \D5|counter\(13) ) + ( GND ) + ( \D5|Add0~18\ ))
-- \D5|Add0~2\ = CARRY(( \D5|counter\(13) ) + ( GND ) + ( \D5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(13),
	cin => \D5|Add0~18\,
	sumout => \D5|Add0~1_sumout\,
	cout => \D5|Add0~2\);

-- Location: FF_X9_Y1_N41
\D5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~1_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(13));

-- Location: MLABCELL_X9_Y1_N42
\D5|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~45_sumout\ = SUM(( \D5|counter\(14) ) + ( GND ) + ( \D5|Add0~2\ ))
-- \D5|Add0~46\ = CARRY(( \D5|counter\(14) ) + ( GND ) + ( \D5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(14),
	cin => \D5|Add0~2\,
	sumout => \D5|Add0~45_sumout\,
	cout => \D5|Add0~46\);

-- Location: FF_X9_Y1_N44
\D5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~45_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(14));

-- Location: MLABCELL_X9_Y1_N54
\D5|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~7_combout\ = ( \D5|counter\(14) & ( (\D5|counter\(4) & (\D5|counter\(2) & (\D5|counter\(3) & \D5|counter\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_counter\(4),
	datab => \D5|ALT_INV_counter\(2),
	datac => \D5|ALT_INV_counter\(3),
	datad => \D5|ALT_INV_counter\(1),
	dataf => \D5|ALT_INV_counter\(14),
	combout => \D5|outb~7_combout\);

-- Location: LABCELL_X10_Y1_N0
\D5|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~6_combout\ = ( \D5|counter\(9) & ( \D5|counter\(6) & ( (\D5|counter\(8) & (\D5|counter\(0) & (\D5|counter\(7) & \D5|counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_counter\(8),
	datab => \D5|ALT_INV_counter\(0),
	datac => \D5|ALT_INV_counter\(7),
	datad => \D5|ALT_INV_counter\(5),
	datae => \D5|ALT_INV_counter\(9),
	dataf => \D5|ALT_INV_counter\(6),
	combout => \D5|outb~6_combout\);

-- Location: MLABCELL_X9_Y1_N45
\D5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~13_sumout\ = SUM(( \D5|counter\(15) ) + ( GND ) + ( \D5|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(15),
	cin => \D5|Add0~46\,
	sumout => \D5|Add0~13_sumout\);

-- Location: FF_X9_Y1_N46
\D5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|Add0~13_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D5|always0~0_combout\,
	ena => \D5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|counter\(15));

-- Location: LABCELL_X10_Y1_N30
\D5|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~5_combout\ = ( \D5|counter\(11) & ( \D5|counter\(10) & ( (\D5|counter\(12) & \D5|counter\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_counter\(12),
	datac => \D5|ALT_INV_counter\(15),
	datae => \D5|ALT_INV_counter\(11),
	dataf => \D5|ALT_INV_counter\(10),
	combout => \D5|outb~5_combout\);

-- Location: MLABCELL_X9_Y1_N51
\D5|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~8_combout\ = ( \D5|outb~6_combout\ & ( \D5|outb~5_combout\ & ( (!\D5|counter\(13)) # ((!\D5|outb~7_combout\) # (!\money[1]~input_o\ $ (!\D5|intermediate~0_combout\))) ) ) ) # ( !\D5|outb~6_combout\ & ( \D5|outb~5_combout\ ) ) # ( 
-- \D5|outb~6_combout\ & ( !\D5|outb~5_combout\ ) ) # ( !\D5|outb~6_combout\ & ( !\D5|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_money[1]~input_o\,
	datab => \D5|ALT_INV_intermediate~0_combout\,
	datac => \D5|ALT_INV_counter\(13),
	datad => \D5|ALT_INV_outb~7_combout\,
	datae => \D5|ALT_INV_outb~6_combout\,
	dataf => \D5|ALT_INV_outb~5_combout\,
	combout => \D5|outb~8_combout\);

-- Location: LABCELL_X10_Y2_N57
\D5|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~3_combout\ = ( \D5|outb~2_combout\ & ( !\D5|outb~1_combout\ $ (((!\D5|intermediate~0_combout\ & !\D5|outb~8_combout\))) ) ) # ( !\D5|outb~2_combout\ & ( !\D5|outb~1_combout\ $ (((!\D5|intermediate~0_combout\) # (\D5|outb~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_intermediate~0_combout\,
	datac => \D5|ALT_INV_outb~8_combout\,
	datad => \D5|ALT_INV_outb~1_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \D5|outb~3_combout\);

-- Location: FF_X10_Y2_N58
\D5|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D5|outb~3_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|outb~_emulated_q\);

-- Location: LABCELL_X10_Y2_N54
\D5|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~2_combout\ = ( \D5|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\money[1]~input_o\)) # (\rst_db~input_o\ & ((!\D5|outb~1_combout\))) ) ) # ( !\D5|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\money[1]~input_o\)) # (\rst_db~input_o\ & 
-- ((\D5|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_money[1]~input_o\,
	datad => \D5|ALT_INV_outb~1_combout\,
	dataf => \D5|ALT_INV_outb~_emulated_q\,
	combout => \D5|outb~2_combout\);

-- Location: LABCELL_X10_Y3_N51
\Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = ( \D4|outb~2_combout\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & !\estado.cents0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents0~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector33~1_combout\);

-- Location: IOIBUF_X33_Y0_N92
\rst_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_button,
	o => \rst_button~input_o\);

-- Location: MLABCELL_X13_Y2_N15
\D2|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~1_combout\ = ( \rst_db~input_o\ & ( \D2|outb~1_combout\ ) ) # ( !\rst_db~input_o\ & ( \rst_button~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_button~input_o\,
	datad => \D2|ALT_INV_outb~1_combout\,
	dataf => \ALT_INV_rst_db~input_o\,
	combout => \D2|outb~1_combout\);

-- Location: MLABCELL_X13_Y2_N45
\D2|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|intermediate~1_combout\ = ( \D2|outb~1_combout\ & ( !\rst_button~input_o\ ) ) # ( !\D2|outb~1_combout\ & ( \rst_button~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_button~input_o\,
	dataf => \D2|ALT_INV_outb~1_combout\,
	combout => \D2|intermediate~1_combout\);

-- Location: FF_X13_Y2_N47
\D2|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|intermediate~1_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|intermediate~_emulated_q\);

-- Location: MLABCELL_X13_Y2_N51
\D2|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|intermediate~0_combout\ = ( \D2|outb~1_combout\ & ( (!\rst_db~input_o\ & (\rst_button~input_o\)) # (\rst_db~input_o\ & ((!\D2|intermediate~_emulated_q\))) ) ) # ( !\D2|outb~1_combout\ & ( (!\rst_db~input_o\ & (\rst_button~input_o\)) # 
-- (\rst_db~input_o\ & ((\D2|intermediate~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_button~input_o\,
	datac => \ALT_INV_rst_db~input_o\,
	datad => \D2|ALT_INV_intermediate~_emulated_q\,
	dataf => \D2|ALT_INV_outb~1_combout\,
	combout => \D2|intermediate~0_combout\);

-- Location: LABCELL_X14_Y2_N0
\D2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~45_sumout\ = SUM(( \D2|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D2|Add0~46\ = CARRY(( \D2|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D2|Add0~45_sumout\,
	cout => \D2|Add0~46\);

-- Location: MLABCELL_X13_Y2_N48
\D2|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|always0~0_combout\ = !\rst_button~input_o\ $ (!\D2|intermediate~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_button~input_o\,
	datac => \D2|ALT_INV_intermediate~0_combout\,
	combout => \D2|always0~0_combout\);

-- Location: FF_X14_Y2_N2
\D2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~45_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(0));

-- Location: LABCELL_X14_Y2_N3
\D2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~17_sumout\ = SUM(( \D2|counter\(1) ) + ( GND ) + ( \D2|Add0~46\ ))
-- \D2|Add0~18\ = CARRY(( \D2|counter\(1) ) + ( GND ) + ( \D2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(1),
	cin => \D2|Add0~46\,
	sumout => \D2|Add0~17_sumout\,
	cout => \D2|Add0~18\);

-- Location: FF_X14_Y2_N4
\D2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~17_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(1));

-- Location: LABCELL_X14_Y2_N6
\D2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~13_sumout\ = SUM(( \D2|counter\(2) ) + ( GND ) + ( \D2|Add0~18\ ))
-- \D2|Add0~14\ = CARRY(( \D2|counter\(2) ) + ( GND ) + ( \D2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(2),
	cin => \D2|Add0~18\,
	sumout => \D2|Add0~13_sumout\,
	cout => \D2|Add0~14\);

-- Location: FF_X14_Y2_N7
\D2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~13_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(2));

-- Location: LABCELL_X14_Y2_N9
\D2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~9_sumout\ = SUM(( \D2|counter\(3) ) + ( GND ) + ( \D2|Add0~14\ ))
-- \D2|Add0~10\ = CARRY(( \D2|counter\(3) ) + ( GND ) + ( \D2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(3),
	cin => \D2|Add0~14\,
	sumout => \D2|Add0~9_sumout\,
	cout => \D2|Add0~10\);

-- Location: FF_X14_Y2_N11
\D2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~9_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(3));

-- Location: LABCELL_X14_Y2_N12
\D2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~5_sumout\ = SUM(( \D2|counter\(4) ) + ( GND ) + ( \D2|Add0~10\ ))
-- \D2|Add0~6\ = CARRY(( \D2|counter\(4) ) + ( GND ) + ( \D2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(4),
	cin => \D2|Add0~10\,
	sumout => \D2|Add0~5_sumout\,
	cout => \D2|Add0~6\);

-- Location: FF_X14_Y2_N13
\D2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~5_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(4));

-- Location: LABCELL_X14_Y2_N15
\D2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~41_sumout\ = SUM(( \D2|counter\(5) ) + ( GND ) + ( \D2|Add0~6\ ))
-- \D2|Add0~42\ = CARRY(( \D2|counter\(5) ) + ( GND ) + ( \D2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(5),
	cin => \D2|Add0~6\,
	sumout => \D2|Add0~41_sumout\,
	cout => \D2|Add0~42\);

-- Location: FF_X14_Y2_N17
\D2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~41_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(5));

-- Location: LABCELL_X14_Y2_N18
\D2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~37_sumout\ = SUM(( \D2|counter\(6) ) + ( GND ) + ( \D2|Add0~42\ ))
-- \D2|Add0~38\ = CARRY(( \D2|counter\(6) ) + ( GND ) + ( \D2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(6),
	cin => \D2|Add0~42\,
	sumout => \D2|Add0~37_sumout\,
	cout => \D2|Add0~38\);

-- Location: FF_X14_Y2_N19
\D2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~37_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(6));

-- Location: LABCELL_X14_Y2_N21
\D2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~33_sumout\ = SUM(( \D2|counter\(7) ) + ( GND ) + ( \D2|Add0~38\ ))
-- \D2|Add0~34\ = CARRY(( \D2|counter\(7) ) + ( GND ) + ( \D2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(7),
	cin => \D2|Add0~38\,
	sumout => \D2|Add0~33_sumout\,
	cout => \D2|Add0~34\);

-- Location: FF_X14_Y2_N23
\D2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~33_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(7));

-- Location: LABCELL_X14_Y2_N24
\D2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~29_sumout\ = SUM(( \D2|counter\(8) ) + ( GND ) + ( \D2|Add0~34\ ))
-- \D2|Add0~30\ = CARRY(( \D2|counter\(8) ) + ( GND ) + ( \D2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(8),
	cin => \D2|Add0~34\,
	sumout => \D2|Add0~29_sumout\,
	cout => \D2|Add0~30\);

-- Location: FF_X14_Y2_N26
\D2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~29_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(8));

-- Location: LABCELL_X14_Y2_N27
\D2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~25_sumout\ = SUM(( \D2|counter\(9) ) + ( GND ) + ( \D2|Add0~30\ ))
-- \D2|Add0~26\ = CARRY(( \D2|counter\(9) ) + ( GND ) + ( \D2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(9),
	cin => \D2|Add0~30\,
	sumout => \D2|Add0~25_sumout\,
	cout => \D2|Add0~26\);

-- Location: FF_X14_Y2_N29
\D2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~25_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(9));

-- Location: LABCELL_X14_Y2_N30
\D2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~21_sumout\ = SUM(( \D2|counter\(10) ) + ( GND ) + ( \D2|Add0~26\ ))
-- \D2|Add0~22\ = CARRY(( \D2|counter\(10) ) + ( GND ) + ( \D2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(10),
	cin => \D2|Add0~26\,
	sumout => \D2|Add0~21_sumout\,
	cout => \D2|Add0~22\);

-- Location: FF_X14_Y2_N32
\D2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~21_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(10));

-- Location: LABCELL_X14_Y2_N33
\D2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~1_sumout\ = SUM(( \D2|counter\(11) ) + ( GND ) + ( \D2|Add0~22\ ))
-- \D2|Add0~2\ = CARRY(( \D2|counter\(11) ) + ( GND ) + ( \D2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(11),
	cin => \D2|Add0~22\,
	sumout => \D2|Add0~1_sumout\,
	cout => \D2|Add0~2\);

-- Location: FF_X14_Y2_N34
\D2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~1_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(11));

-- Location: LABCELL_X14_Y2_N36
\D2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~61_sumout\ = SUM(( \D2|counter\(12) ) + ( GND ) + ( \D2|Add0~2\ ))
-- \D2|Add0~62\ = CARRY(( \D2|counter\(12) ) + ( GND ) + ( \D2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(12),
	cin => \D2|Add0~2\,
	sumout => \D2|Add0~61_sumout\,
	cout => \D2|Add0~62\);

-- Location: FF_X14_Y2_N37
\D2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~61_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(12));

-- Location: LABCELL_X14_Y2_N39
\D2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~57_sumout\ = SUM(( \D2|counter\(13) ) + ( GND ) + ( \D2|Add0~62\ ))
-- \D2|Add0~58\ = CARRY(( \D2|counter\(13) ) + ( GND ) + ( \D2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(13),
	cin => \D2|Add0~62\,
	sumout => \D2|Add0~57_sumout\,
	cout => \D2|Add0~58\);

-- Location: FF_X14_Y2_N41
\D2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~57_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(13));

-- Location: LABCELL_X14_Y2_N42
\D2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~53_sumout\ = SUM(( \D2|counter\(14) ) + ( GND ) + ( \D2|Add0~58\ ))
-- \D2|Add0~54\ = CARRY(( \D2|counter\(14) ) + ( GND ) + ( \D2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(14),
	cin => \D2|Add0~58\,
	sumout => \D2|Add0~53_sumout\,
	cout => \D2|Add0~54\);

-- Location: FF_X14_Y2_N44
\D2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~53_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(14));

-- Location: LABCELL_X14_Y2_N45
\D2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Add0~49_sumout\ = SUM(( \D2|counter\(15) ) + ( GND ) + ( \D2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D2|ALT_INV_counter\(15),
	cin => \D2|Add0~54\,
	sumout => \D2|Add0~49_sumout\);

-- Location: FF_X14_Y2_N47
\D2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|Add0~49_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D2|always0~0_combout\,
	ena => \D2|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|counter\(15));

-- Location: MLABCELL_X13_Y2_N6
\D2|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~7_combout\ = ( \D2|counter\(12) & ( \D2|counter\(13) & ( (\D2|counter\(15) & (\D2|counter\(0) & \D2|counter\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_counter\(15),
	datac => \D2|ALT_INV_counter\(0),
	datad => \D2|ALT_INV_counter\(14),
	datae => \D2|ALT_INV_counter\(12),
	dataf => \D2|ALT_INV_counter\(13),
	combout => \D2|outb~7_combout\);

-- Location: LABCELL_X14_Y2_N54
\D2|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~6_combout\ = ( \D2|counter\(9) & ( \D2|counter\(10) & ( (\D2|counter\(7) & (\D2|counter\(6) & (\D2|counter\(8) & \D2|counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_counter\(7),
	datab => \D2|ALT_INV_counter\(6),
	datac => \D2|ALT_INV_counter\(8),
	datad => \D2|ALT_INV_counter\(5),
	datae => \D2|ALT_INV_counter\(9),
	dataf => \D2|ALT_INV_counter\(10),
	combout => \D2|outb~6_combout\);

-- Location: LABCELL_X16_Y2_N3
\D2|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~5_combout\ = ( \D2|counter\(1) & ( \D2|counter\(3) & ( (\D2|counter\(2) & \D2|counter\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D2|ALT_INV_counter\(2),
	datad => \D2|ALT_INV_counter\(4),
	datae => \D2|ALT_INV_counter\(1),
	dataf => \D2|ALT_INV_counter\(3),
	combout => \D2|outb~5_combout\);

-- Location: LABCELL_X14_Y2_N48
\D2|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~8_combout\ = ( \D2|outb~6_combout\ & ( \D2|outb~5_combout\ & ( (!\D2|counter\(11)) # ((!\D2|outb~7_combout\) # (!\D2|intermediate~0_combout\ $ (!\rst_button~input_o\))) ) ) ) # ( !\D2|outb~6_combout\ & ( \D2|outb~5_combout\ ) ) # ( 
-- \D2|outb~6_combout\ & ( !\D2|outb~5_combout\ ) ) # ( !\D2|outb~6_combout\ & ( !\D2|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_intermediate~0_combout\,
	datab => \D2|ALT_INV_counter\(11),
	datac => \D2|ALT_INV_outb~7_combout\,
	datad => \ALT_INV_rst_button~input_o\,
	datae => \D2|ALT_INV_outb~6_combout\,
	dataf => \D2|ALT_INV_outb~5_combout\,
	combout => \D2|outb~8_combout\);

-- Location: MLABCELL_X13_Y2_N42
\D2|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~3_combout\ = ( \D2|outb~2_combout\ & ( !\D2|outb~1_combout\ $ (((!\D2|outb~8_combout\ & !\D2|intermediate~0_combout\))) ) ) # ( !\D2|outb~2_combout\ & ( !\D2|outb~1_combout\ $ (((!\D2|intermediate~0_combout\) # (\D2|outb~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100101101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_outb~1_combout\,
	datab => \D2|ALT_INV_outb~8_combout\,
	datac => \D2|ALT_INV_intermediate~0_combout\,
	dataf => \D2|ALT_INV_outb~2_combout\,
	combout => \D2|outb~3_combout\);

-- Location: FF_X13_Y2_N44
\D2|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D2|outb~3_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|outb~_emulated_q\);

-- Location: MLABCELL_X13_Y2_N12
\D2|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~2_combout\ = ( \D2|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\rst_button~input_o\)) # (\rst_db~input_o\ & ((!\D2|outb~1_combout\))) ) ) # ( !\D2|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\rst_button~input_o\)) # (\rst_db~input_o\ & 
-- ((\D2|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_button~input_o\,
	datab => \ALT_INV_rst_db~input_o\,
	datac => \D2|ALT_INV_outb~1_combout\,
	dataf => \D2|ALT_INV_outb~_emulated_q\,
	combout => \D2|outb~2_combout\);

-- Location: FF_X10_Y3_N53
\estado.cents25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector33~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents25~q\);

-- Location: MLABCELL_X9_Y2_N36
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\estado.cents0~q\ & ( (!\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & !\D5|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents0~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X9_Y2_N11
\estado.cents10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector1~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents10~q\);

-- Location: MLABCELL_X9_Y2_N27
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\ & (\estado.cents25~q\)) # (\D4|outb~2_combout\ & ((\estado.cents10~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents25~q\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents10~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X10_Y2_N14
\estado.cents35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector5~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents35~q\);

-- Location: LABCELL_X12_Y3_N18
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & \estado.cents10~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents10~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X12_Y3_N20
\estado.cents20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector2~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents20~q\);

-- Location: LABCELL_X12_Y2_N0
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( !\D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & \estado.cents20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents20~q\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X12_Y2_N2
\estado.cents30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector4~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents30~q\);

-- Location: MLABCELL_X9_Y2_N57
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( !\D4|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (\estado.cents30~q\ & !\D3|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents30~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X9_Y2_N5
\estado.cents40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector6~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents40~q\);

-- Location: LABCELL_X12_Y2_N42
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( !\D4|outb~2_combout\ & ( \D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & !\estado.cents0~q\) ) ) ) # ( \D4|outb~2_combout\ & ( !\D5|outb~2_combout\ & ( (\estado.cents25~q\ & !\D3|outb~2_combout\) ) ) ) # ( !\D4|outb~2_combout\ & 
-- ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & \estado.cents40~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000100010011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents25~q\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents40~q\,
	datad => \ALT_INV_estado.cents0~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X12_Y2_N44
\estado.cents50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector8~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents50~q\);

-- Location: LABCELL_X10_Y3_N18
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \estado.cents50~q\ & ( \D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & \estado.cents10~q\)) ) ) ) # ( !\estado.cents50~q\ & ( \D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & 
-- \estado.cents10~q\)) ) ) ) # ( \estado.cents50~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\) # (\estado.cents35~q\))) ) ) ) # ( !\estado.cents50~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (\D4|outb~2_combout\ 
-- & \estado.cents35~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100010001010101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents10~q\,
	datad => \ALT_INV_estado.cents35~q\,
	datae => \ALT_INV_estado.cents50~q\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X10_Y3_N20
\estado.cents60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector10~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents60~q\);

-- Location: LABCELL_X10_Y3_N36
\Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = ( \D5|outb~2_combout\ & ( \estado.cents20~q\ & ( (!\D3|outb~2_combout\ & !\D4|outb~2_combout\) ) ) ) # ( !\D5|outb~2_combout\ & ( \estado.cents20~q\ & ( !\D3|outb~2_combout\ ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.cents20~q\ & ( 
-- (\estado.cents25~q\ & (!\D3|outb~2_combout\ & !\D4|outb~2_combout\)) ) ) ) # ( !\D5|outb~2_combout\ & ( !\estado.cents20~q\ & ( (!\D3|outb~2_combout\ & ((\estado.cents60~q\) # (\estado.cents25~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010001000000000011001100110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents25~q\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents60~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents20~q\,
	combout => \Selector0~3_combout\);

-- Location: MLABCELL_X9_Y2_N42
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado.cents20~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & ((\estado.cents35~q\) # (\D4|outb~2_combout\)))) ) ) # ( !\estado.cents20~q\ & ( (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & 
-- \estado.cents35~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents35~q\,
	dataf => \ALT_INV_estado.cents20~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X10_Y2_N8
\estado.cents45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector7~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents45~q\);

-- Location: LABCELL_X12_Y2_N36
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( !\D3|outb~2_combout\ & ( \estado.cents45~q\ & ( (!\D5|outb~2_combout\ & ((!\D4|outb~2_combout\) # (\estado.cents30~q\))) ) ) ) # ( !\D3|outb~2_combout\ & ( !\estado.cents45~q\ & ( (\estado.cents30~q\ & (!\D5|outb~2_combout\ & 
-- \D4|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000011110000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents30~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents45~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X12_Y2_N41
\estado.cents55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector9~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents55~q\);

-- Location: LABCELL_X10_Y2_N9
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents55~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents40~q\)) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.cents55~q\ & ( (!\D5|outb~2_combout\ & !\D3|outb~2_combout\) ) ) ) # 
-- ( \D4|outb~2_combout\ & ( !\estado.cents55~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents40~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000010100000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents40~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents55~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X10_Y2_N47
\estado.cents65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector11~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents65~q\);

-- Location: LABCELL_X10_Y2_N33
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\D3|outb~2_combout\ & ( (!\estado.cents45~q\ & (((\estado.cents65~q\ & !\D5|outb~2_combout\)))) # (\estado.cents45~q\ & ((!\D4|outb~2_combout\) # ((!\D5|outb~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001010001111110000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents65~q\,
	datac => \ALT_INV_estado.cents45~q\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X9_Y2_N15
\Selector0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = ( \D4|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & ((!\estado.cents0~q\) # (\estado.cents10~q\)))) # (\D5|outb~2_combout\ & (((!\estado.cents0~q\)))) ) ) # ( !\D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & 
-- ((!\estado.cents0~q\) # (\estado.cents10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010111011000010001011101100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents10~q\,
	datad => \ALT_INV_estado.cents0~q\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector0~4_combout\);

-- Location: LABCELL_X7_Y2_N45
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \estado.cents20~q\ & ( \D4|outb~2_combout\ & ( (\estado.cents45~q\ & (!\D5|outb~2_combout\ & !\D3|outb~2_combout\)) ) ) ) # ( !\estado.cents20~q\ & ( \D4|outb~2_combout\ & ( (\estado.cents45~q\ & (!\D5|outb~2_combout\ & 
-- !\D3|outb~2_combout\)) ) ) ) # ( \estado.cents20~q\ & ( !\D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & ((\estado.cents60~q\) # (\D5|outb~2_combout\))) ) ) ) # ( !\estado.cents20~q\ & ( !\D4|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (\estado.cents60~q\ 
-- & !\D3|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001111110000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents45~q\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents60~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.cents20~q\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X7_Y2_N47
\estado.cents70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector12~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents70~q\);

-- Location: LABCELL_X7_Y2_N36
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \estado.cents55~q\ & ( \estado.cents70~q\ & ( (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\) # ((!\D4|outb~2_combout\ & \estado.cents30~q\)))) ) ) ) # ( !\estado.cents55~q\ & ( \estado.cents70~q\ & ( (!\D4|outb~2_combout\ & 
-- (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\) # (\estado.cents30~q\)))) ) ) ) # ( \estado.cents55~q\ & ( !\estado.cents70~q\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\ & (\D5|outb~2_combout\ & \estado.cents30~q\)) # (\D4|outb~2_combout\ & 
-- (!\D5|outb~2_combout\)))) ) ) ) # ( !\estado.cents55~q\ & ( !\estado.cents70~q\ & ( (!\D4|outb~2_combout\ & (\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents30~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000010000000110000010000000101000001100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents30~q\,
	datae => \ALT_INV_estado.cents55~q\,
	dataf => \ALT_INV_estado.cents70~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X7_Y2_N38
\estado.cents80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector14~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents80~q\);

-- Location: LABCELL_X12_Y1_N33
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & \estado.cents65~q\) ) ) ) # ( !\D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & ((\estado.cents80~q\))) # (\D5|outb~2_combout\ & 
-- (\estado.cents40~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents40~q\,
	datab => \ALT_INV_estado.cents80~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents65~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X12_Y1_N35
\estado.cents90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector16~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents90~q\);

-- Location: LABCELL_X12_Y2_N9
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents50~q\ & ( (!\D3|outb~2_combout\ & !\D5|outb~2_combout\) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.cents50~q\ & ( (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\ & (\estado.cents65~q\)) # 
-- (\D5|outb~2_combout\ & ((\estado.cents25~q\))))) ) ) ) # ( !\D4|outb~2_combout\ & ( !\estado.cents50~q\ & ( (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\ & (\estado.cents65~q\)) # (\D5|outb~2_combout\ & ((\estado.cents25~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents65~q\,
	datad => \ALT_INV_estado.cents25~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents50~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X12_Y2_N11
\estado.cents75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector13~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents75~q\);

-- Location: LABCELL_X7_Y2_N54
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents75~q\ & ( !\D5|outb~2_combout\ ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.cents75~q\ & ( (!\D5|outb~2_combout\ & ((!\D3|outb~2_combout\) # ((\estado.cents90~q\)))) # (\D5|outb~2_combout\ & 
-- (((\estado.cents50~q\)))) ) ) ) # ( \D4|outb~2_combout\ & ( !\estado.cents75~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents50~q\)) ) ) ) # ( !\D4|outb~2_combout\ & ( !\estado.cents75~q\ & ( (!\D5|outb~2_combout\ & 
-- (((!\D3|outb~2_combout\ & \estado.cents50~q\)) # (\estado.cents90~q\))) # (\D5|outb~2_combout\ & (((\estado.cents50~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110110101111000010000000100010001101101011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents50~q\,
	datad => \ALT_INV_estado.cents90~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents75~q\,
	combout => \Selector0~2_combout\);

-- Location: MLABCELL_X9_Y2_N45
\Selector0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = ( \estado.cents30~q\ & ( (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\) # (!\D4|outb~2_combout\))) ) ) # ( !\estado.cents30~q\ & ( (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\) # ((!\D4|outb~2_combout\ & \estado.cents40~q\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011100000101000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents40~q\,
	dataf => \ALT_INV_estado.cents30~q\,
	combout => \Selector0~7_combout\);

-- Location: MLABCELL_X13_Y2_N0
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \estado.cents35~q\ & ( \estado.cents60~q\ & ( (!\D3|outb~2_combout\ & ((!\D5|outb~2_combout\ & ((\D4|outb~2_combout\) # (\estado.cents75~q\))) # (\D5|outb~2_combout\ & ((!\D4|outb~2_combout\))))) ) ) ) # ( !\estado.cents35~q\ & 
-- ( \estado.cents60~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & ((\D4|outb~2_combout\) # (\estado.cents75~q\)))) ) ) ) # ( \estado.cents35~q\ & ( !\estado.cents60~q\ & ( (!\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & ((\estado.cents75~q\) # 
-- (\D5|outb~2_combout\)))) ) ) ) # ( !\estado.cents35~q\ & ( !\estado.cents60~q\ & ( (!\D5|outb~2_combout\ & (\estado.cents75~q\ & (!\D4|outb~2_combout\ & !\D3|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000011100000000000000101010000000000111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents75~q\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.cents35~q\,
	dataf => \ALT_INV_estado.cents60~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X12_Y2_N26
\estado.cents85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector15~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents85~q\);

-- Location: MLABCELL_X9_Y2_N18
\Selector0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = ( \estado.cents35~q\ & ( \estado.cents80~q\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\) # (!\D5|outb~2_combout\))) ) ) ) # ( !\estado.cents35~q\ & ( \estado.cents80~q\ & ( (!\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & 
-- !\D5|outb~2_combout\)) ) ) ) # ( \estado.cents35~q\ & ( !\estado.cents80~q\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\) # (!\D5|outb~2_combout\))) ) ) ) # ( !\estado.cents35~q\ & ( !\estado.cents80~q\ & ( (!\D3|outb~2_combout\ & 
-- (!\D4|outb~2_combout\ & (!\D5|outb~2_combout\ & \estado.cents85~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000101010001010100010000000100000001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents85~q\,
	datae => \ALT_INV_estado.cents35~q\,
	dataf => \ALT_INV_estado.cents80~q\,
	combout => \Selector0~6_combout\);

-- Location: MLABCELL_X9_Y2_N30
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \estado.cents55~q\ & ( \Selector0~6_combout\ & ( (!\Selector0~7_combout\ & ((\estado.cents30~q\) # (\estado.cents40~q\))) ) ) ) # ( !\estado.cents55~q\ & ( \Selector0~6_combout\ & ( (!\Selector0~7_combout\ & ((\estado.cents30~q\) 
-- # (\estado.cents40~q\))) ) ) ) # ( \estado.cents55~q\ & ( !\Selector0~6_combout\ & ( !\Selector0~7_combout\ ) ) ) # ( !\estado.cents55~q\ & ( !\Selector0~6_combout\ & ( (!\Selector0~7_combout\) # ((!\estado.cents70~q\ & (!\estado.cents40~q\ & 
-- !\estado.cents30~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100110011001100110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents70~q\,
	datab => \ALT_INV_Selector0~7_combout\,
	datac => \ALT_INV_estado.cents40~q\,
	datad => \ALT_INV_estado.cents30~q\,
	datae => \ALT_INV_estado.cents55~q\,
	dataf => \ALT_INV_Selector0~6_combout\,
	combout => \Selector0~1_combout\);

-- Location: LABCELL_X10_Y2_N48
\Selector0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = ( \Selector0~1_combout\ & ( (((\Selector0~2_combout\) # (\Selector0~4_combout\)) # (\Selector0~0_combout\)) # (\Selector0~3_combout\) ) ) # ( !\Selector0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~3_combout\,
	datab => \ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_Selector0~4_combout\,
	datad => \ALT_INV_Selector0~2_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector0~5_combout\);

-- Location: FF_X10_Y2_N50
\estado.cents0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector0~5_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents0~q\);

-- Location: LABCELL_X12_Y3_N48
\WideOr29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr29~0_combout\ = ( !\estado.cents90~q\ & ( (\estado.cents0~q\ & (!\estado.cents70~q\ & (!\estado.cents30~q\ & !\estado.cents50~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents0~q\,
	datab => \ALT_INV_estado.cents70~q\,
	datac => \ALT_INV_estado.cents30~q\,
	datad => \ALT_INV_estado.cents50~q\,
	datae => \ALT_INV_estado.cents90~q\,
	combout => \WideOr29~0_combout\);

-- Location: LABCELL_X12_Y2_N15
\display_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_1~0_combout\ = ( \D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & !\D4|outb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \display_1~0_combout\);

-- Location: LABCELL_X12_Y2_N27
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \estado.cents90~q\ & ( \D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (\D4|outb~2_combout\ & !\estado.cents0~q\)) ) ) ) # ( !\estado.cents90~q\ & ( \D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (\D4|outb~2_combout\ & 
-- !\estado.cents0~q\)) ) ) ) # ( \estado.cents90~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\) # (\estado.cents75~q\))) ) ) ) # ( !\estado.cents90~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (\D4|outb~2_combout\ 
-- & \estado.cents75~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010100010101000101000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents75~q\,
	datad => \ALT_INV_estado.cents0~q\,
	datae => \ALT_INV_estado.cents90~q\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X12_Y2_N3
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( \Selector18~0_combout\ ) # ( !\Selector18~0_combout\ & ( (\estado.cents50~q\ & \display_1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.cents50~q\,
	datad => \ALT_INV_display_1~0_combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X12_Y2_N5
\estado.cents100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector18~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents100~q\);

-- Location: LABCELL_X12_Y3_N39
WideOr30 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr30~combout\ = ( \estado.cents80~q\ & ( \estado.cents20~q\ ) ) # ( !\estado.cents80~q\ & ( \estado.cents20~q\ ) ) # ( \estado.cents80~q\ & ( !\estado.cents20~q\ ) ) # ( !\estado.cents80~q\ & ( !\estado.cents20~q\ & ( (!\WideOr29~0_combout\) # 
-- (((\estado.cents60~q\) # (\estado.cents100~q\)) # (\estado.cents40~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr29~0_combout\,
	datab => \ALT_INV_estado.cents40~q\,
	datac => \ALT_INV_estado.cents100~q\,
	datad => \ALT_INV_estado.cents60~q\,
	datae => \ALT_INV_estado.cents80~q\,
	dataf => \ALT_INV_estado.cents20~q\,
	combout => \WideOr30~combout\);

-- Location: LABCELL_X12_Y1_N6
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (\estado.cents70~q\ & !\D5|outb~2_combout\) ) ) ) # ( !\D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (\estado.cents85~q\)) # (\D5|outb~2_combout\ & 
-- ((\estado.cents45~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents70~q\,
	datab => \ALT_INV_estado.cents85~q\,
	datac => \ALT_INV_estado.cents45~q\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X12_Y1_N8
\estado.cents95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector17~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cents95~q\);

-- Location: LABCELL_X12_Y3_N12
WideOr29 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr29~combout\ = ( \estado.cents55~q\ & ( \WideOr29~0_combout\ ) ) # ( !\estado.cents55~q\ & ( \WideOr29~0_combout\ & ( (((\estado.cents35~q\) # (\estado.cents95~q\)) # (\estado.cents10~q\)) # (\estado.cents75~q\) ) ) ) # ( \estado.cents55~q\ & ( 
-- !\WideOr29~0_combout\ ) ) # ( !\estado.cents55~q\ & ( !\WideOr29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents75~q\,
	datab => \ALT_INV_estado.cents10~q\,
	datac => \ALT_INV_estado.cents95~q\,
	datad => \ALT_INV_estado.cents35~q\,
	datae => \ALT_INV_estado.cents55~q\,
	dataf => \ALT_INV_WideOr29~0_combout\,
	combout => \WideOr29~combout\);

-- Location: LABCELL_X12_Y3_N6
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( !\D5|outb~2_combout\ & ( (\D3|outb~2_combout\ & ((!\D4|outb~2_combout\ & (\estado.cents90~q\)) # (\D4|outb~2_combout\ & (((\estado.cents75~q\)))))) ) ) # ( \D5|outb~2_combout\ & ( (\D3|outb~2_combout\ & ((!\D4|outb~2_combout\ & 
-- (((\estado.cents50~q\)))) # (\D4|outb~2_combout\ & (!\estado.cents0~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000100000100000101010000010101000101010001000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents0~q\,
	datad => \ALT_INV_estado.cents50~q\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents75~q\,
	datag => \ALT_INV_estado.cents90~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X12_Y3_N8
\estado.refri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector19~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.refri~q\);

-- Location: LABCELL_X12_Y3_N30
\WideOr27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr27~0_combout\ = ( !\estado.cents75~q\ & ( (!\estado.cents85~q\ & (!\estado.cents70~q\ & (!\estado.refri~q\ & !\estado.cents80~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents85~q\,
	datab => \ALT_INV_estado.cents70~q\,
	datac => \ALT_INV_estado.refri~q\,
	datad => \ALT_INV_estado.cents80~q\,
	dataf => \ALT_INV_estado.cents75~q\,
	combout => \WideOr27~0_combout\);

-- Location: LABCELL_X10_Y3_N30
WideOr28 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr28~combout\ = ( \estado.cents40~q\ & ( \estado.cents35~q\ ) ) # ( !\estado.cents40~q\ & ( \estado.cents35~q\ ) ) # ( \estado.cents40~q\ & ( !\estado.cents35~q\ ) ) # ( !\estado.cents40~q\ & ( !\estado.cents35~q\ & ( ((!\WideOr27~0_combout\) # 
-- (\estado.cents30~q\)) # (\estado.cents45~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents45~q\,
	datab => \ALT_INV_estado.cents30~q\,
	datac => \ALT_INV_WideOr27~0_combout\,
	datae => \ALT_INV_estado.cents40~q\,
	dataf => \ALT_INV_estado.cents35~q\,
	combout => \WideOr28~combout\);

-- Location: LABCELL_X7_Y2_N12
WideOr27 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr27~combout\ = ( \estado.cents50~q\ ) # ( !\estado.cents50~q\ & ( (!\WideOr27~0_combout\) # (((\estado.cents60~q\) # (\estado.cents65~q\)) # (\estado.cents55~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr27~0_combout\,
	datab => \ALT_INV_estado.cents55~q\,
	datac => \ALT_INV_estado.cents65~q\,
	datad => \ALT_INV_estado.cents60~q\,
	dataf => \ALT_INV_estado.cents50~q\,
	combout => \WideOr27~combout\);

-- Location: LABCELL_X12_Y3_N21
WideOr26 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr26~combout\ = ( \estado.cents95~q\ ) # ( !\estado.cents95~q\ & ( ((\estado.cents90~q\) # (\estado.cents100~q\)) # (\estado.refri~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.refri~q\,
	datac => \ALT_INV_estado.cents100~q\,
	datad => \ALT_INV_estado.cents90~q\,
	dataf => \ALT_INV_estado.cents95~q\,
	combout => \WideOr26~combout\);

-- Location: LABCELL_X10_Y2_N18
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents45~q\ & ( (!\D5|outb~2_combout\ & (\estado.cents60~q\ & !\D3|outb~2_combout\)) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.cents45~q\ & ( !\D3|outb~2_combout\ ) ) ) # ( \D4|outb~2_combout\ & ( 
-- !\estado.cents45~q\ & ( (!\D5|outb~2_combout\ & (\estado.cents60~q\ & !\D3|outb~2_combout\)) ) ) ) # ( !\D4|outb~2_combout\ & ( !\estado.cents45~q\ & ( (!\D5|outb~2_combout\ & (\estado.cents75~q\ & !\D3|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000010100000000011111111000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents75~q\,
	datac => \ALT_INV_estado.cents60~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents45~q\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X10_Y2_N30
\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & ((!\D4|outb~2_combout\ & (\estado.cents65~q\)) # (\D4|outb~2_combout\ & ((\estado.cents50~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents65~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents50~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector13~1_combout\);

-- Location: LABCELL_X10_Y2_N27
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \estado.cents85~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\) # (\estado.cents70~q\)))) ) ) # ( !\estado.cents85~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & (\estado.cents70~q\ & 
-- \D4|outb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100010001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents70~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents85~q\,
	combout => \Selector17~1_combout\);

-- Location: LABCELL_X10_Y2_N36
\Selector31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents25~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & ((!\estado.cents0~q\) # (\estado.cents20~q\)))) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.cents25~q\ & ( !\D3|outb~2_combout\ ) ) ) 
-- # ( \D4|outb~2_combout\ & ( !\estado.cents25~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & ((!\estado.cents0~q\) # (\estado.cents20~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000100000000011111111000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents20~q\,
	datac => \ALT_INV_estado.cents0~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents25~q\,
	combout => \Selector31~1_combout\);

-- Location: LABCELL_X10_Y2_N42
\Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents10~q\ & ( (!\D5|outb~2_combout\ & !\D3|outb~2_combout\) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.cents10~q\ & ( (!\D3|outb~2_combout\ & \estado.cents35~q\) ) ) ) # ( \D4|outb~2_combout\ & ( 
-- !\estado.cents10~q\ & ( (!\D5|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents30~q\)) ) ) ) # ( !\D4|outb~2_combout\ & ( !\estado.cents10~q\ & ( (!\D3|outb~2_combout\ & \estado.cents35~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000010000000100000000000110011001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents30~q\,
	datad => \ALT_INV_estado.cents35~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents10~q\,
	combout => \Selector31~0_combout\);

-- Location: LABCELL_X10_Y2_N15
\Selector31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = ( !\Selector31~0_combout\ & ( !\Selector11~0_combout\ & ( (!\Selector24~0_combout\ & (!\Selector13~1_combout\ & (!\Selector17~1_combout\ & !\Selector31~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector24~0_combout\,
	datab => \ALT_INV_Selector13~1_combout\,
	datac => \ALT_INV_Selector17~1_combout\,
	datad => \ALT_INV_Selector31~1_combout\,
	datae => \ALT_INV_Selector31~0_combout\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector31~2_combout\);

-- Location: LABCELL_X10_Y2_N51
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \display_0[1]~reg0_q\ & ( (!\Selector31~2_combout\) # (\estado.refri~q\) ) ) # ( !\display_0[1]~reg0_q\ & ( !\Selector31~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector31~2_combout\,
	datad => \ALT_INV_estado.refri~q\,
	dataf => \ALT_INV_display_0[1]~reg0_q\,
	combout => \Selector33~0_combout\);

-- Location: FF_X10_Y2_N11
\display_0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector33~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_0[1]~reg0_q\);

-- Location: LABCELL_X10_Y2_N24
\Selector31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~3_combout\ = ( \Selector31~2_combout\ & ( (\display_0[6]~reg0_q\ & \estado.refri~q\) ) ) # ( !\Selector31~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_display_0[6]~reg0_q\,
	datad => \ALT_INV_estado.refri~q\,
	dataf => \ALT_INV_Selector31~2_combout\,
	combout => \Selector31~3_combout\);

-- Location: FF_X10_Y2_N23
\display_0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector31~3_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_0[6]~reg0_q\);

-- Location: MLABCELL_X9_Y2_N0
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( \Selector1~0_combout\ ) # ( !\Selector1~0_combout\ & ( (((\display_1[0]~reg0_q\ & \estado.refri~q\)) # (\Selector7~0_combout\)) # (\Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~0_combout\,
	datab => \ALT_INV_Selector7~0_combout\,
	datac => \ALT_INV_display_1[0]~reg0_q\,
	datad => \ALT_INV_estado.refri~q\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X9_Y2_N35
\display_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector30~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[0]~reg0_q\);

-- Location: MLABCELL_X13_Y2_N30
\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (\D4|outb~2_combout\ & ((\estado.cents25~q\) # (\estado.cents35~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents35~q\,
	datad => \ALT_INV_estado.cents25~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector29~0_combout\);

-- Location: MLABCELL_X13_Y2_N57
\Selector29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = ( !\D3|outb~2_combout\ & ( \estado.cents55~q\ & ( (!\D5|outb~2_combout\ & ((!\D4|outb~2_combout\) # (\estado.cents40~q\))) ) ) ) # ( !\D3|outb~2_combout\ & ( !\estado.cents55~q\ & ( (!\D5|outb~2_combout\ & \estado.cents40~q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000010100000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents40~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents55~q\,
	combout => \Selector29~2_combout\);

-- Location: LABCELL_X12_Y3_N42
\Selector29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = ( \D5|outb~2_combout\ & ( \estado.cents0~q\ & ( (\estado.cents10~q\ & (!\D3|outb~2_combout\ & !\D4|outb~2_combout\)) ) ) ) # ( !\D5|outb~2_combout\ & ( \estado.cents0~q\ & ( (\estado.cents50~q\ & (!\D3|outb~2_combout\ & 
-- !\D4|outb~2_combout\)) ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.cents0~q\ & ( (!\D3|outb~2_combout\ & !\D4|outb~2_combout\) ) ) ) # ( !\D5|outb~2_combout\ & ( !\estado.cents0~q\ & ( (\estado.cents50~q\ & (!\D3|outb~2_combout\ & !\D4|outb~2_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111100000000000001010000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents50~q\,
	datab => \ALT_INV_estado.cents10~q\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents0~q\,
	combout => \Selector29~1_combout\);

-- Location: MLABCELL_X13_Y2_N18
\Selector29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = ( \Selector29~2_combout\ & ( \Selector29~1_combout\ ) ) # ( !\Selector29~2_combout\ & ( \Selector29~1_combout\ ) ) # ( \Selector29~2_combout\ & ( !\Selector29~1_combout\ ) ) # ( !\Selector29~2_combout\ & ( !\Selector29~1_combout\ 
-- & ( (((\estado.refri~q\ & \display_1[1]~reg0_q\)) # (\Selector29~0_combout\)) # (\Selector9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~0_combout\,
	datab => \ALT_INV_Selector29~0_combout\,
	datac => \ALT_INV_estado.refri~q\,
	datad => \ALT_INV_display_1[1]~reg0_q\,
	datae => \ALT_INV_Selector29~2_combout\,
	dataf => \ALT_INV_Selector29~1_combout\,
	combout => \Selector29~3_combout\);

-- Location: FF_X13_Y2_N14
\display_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector29~3_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[1]~reg0_q\);

-- Location: LABCELL_X12_Y3_N57
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( !\D4|outb~2_combout\ & ( (!\estado.refri~q\ & (!\D5|outb~2_combout\ & (\estado.cents10~q\ & (!\D3|outb~2_combout\)))) # (\estado.refri~q\ & (((!\D5|outb~2_combout\ & (\estado.cents10~q\ & !\D3|outb~2_combout\))) # 
-- (\display_1[2]~reg0_q\))) ) ) # ( \D4|outb~2_combout\ & ( (!\estado.refri~q\ & (!\D5|outb~2_combout\ & (!\estado.cents0~q\ & (!\D3|outb~2_combout\)))) # (\estado.refri~q\ & (((!\D5|outb~2_combout\ & (!\estado.cents0~q\ & !\D3|outb~2_combout\))) # 
-- (\display_1[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000110000000000000001011101010101011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.refri~q\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents0~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_display_1[2]~reg0_q\,
	datag => \ALT_INV_estado.cents10~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X12_Y3_N59
\display_1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector28~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[2]~reg0_q\);

-- Location: LABCELL_X12_Y2_N51
\Selector27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = ( \D5|outb~2_combout\ & ( (!\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents20~q\)) ) ) # ( !\D5|outb~2_combout\ & ( (\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents20~q\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector27~2_combout\);

-- Location: LABCELL_X12_Y2_N33
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( \estado.cents65~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (((!\D4|outb~2_combout\) # (\estado.cents50~q\)) # (\estado.cents45~q\))) ) ) ) # ( !\estado.cents65~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & 
-- (\D4|outb~2_combout\ & ((\estado.cents50~q\) # (\estado.cents45~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010101010100010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents45~q\,
	datac => \ALT_INV_estado.cents50~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.cents65~q\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector27~1_combout\);

-- Location: MLABCELL_X13_Y2_N24
\Selector27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = ( \estado.cents25~q\ & ( \estado.cents30~q\ & ( (!\D3|outb~2_combout\ & !\D4|outb~2_combout\) ) ) ) # ( !\estado.cents25~q\ & ( \estado.cents30~q\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & !\D4|outb~2_combout\)) ) ) ) # 
-- ( \estado.cents25~q\ & ( !\estado.cents30~q\ & ( (!\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & ((!\estado.cents0~q\) # (\D5|outb~2_combout\)))) ) ) ) # ( !\estado.cents25~q\ & ( !\estado.cents30~q\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & 
-- (!\D4|outb~2_combout\ & !\estado.cents0~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101000000010000010000000100000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents0~q\,
	datae => \ALT_INV_estado.cents25~q\,
	dataf => \ALT_INV_estado.cents30~q\,
	combout => \Selector27~3_combout\);

-- Location: MLABCELL_X13_Y2_N33
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \estado.cents60~q\ & ( (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & !\D3|outb~2_combout\)) ) ) # ( !\estado.cents60~q\ & ( (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents35~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents35~q\,
	dataf => \ALT_INV_estado.cents60~q\,
	combout => \Selector27~0_combout\);

-- Location: MLABCELL_X13_Y2_N39
\Selector27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = ( \display_1[3]~reg0_q\ & ( \Selector27~0_combout\ ) ) # ( !\display_1[3]~reg0_q\ & ( \Selector27~0_combout\ ) ) # ( \display_1[3]~reg0_q\ & ( !\Selector27~0_combout\ & ( (((\estado.refri~q\) # (\Selector27~3_combout\)) # 
-- (\Selector27~1_combout\)) # (\Selector27~2_combout\) ) ) ) # ( !\display_1[3]~reg0_q\ & ( !\Selector27~0_combout\ & ( ((\Selector27~3_combout\) # (\Selector27~1_combout\)) # (\Selector27~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector27~2_combout\,
	datab => \ALT_INV_Selector27~1_combout\,
	datac => \ALT_INV_Selector27~3_combout\,
	datad => \ALT_INV_estado.refri~q\,
	datae => \ALT_INV_display_1[3]~reg0_q\,
	dataf => \ALT_INV_Selector27~0_combout\,
	combout => \Selector27~4_combout\);

-- Location: FF_X13_Y2_N23
\display_1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector27~4_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[3]~reg0_q\);

-- Location: LABCELL_X10_Y3_N12
\Selector26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = ( \estado.refri~q\ & ( \estado.cents0~q\ & ( ((!\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & \estado.cents40~q\))) # (\display_1[4]~reg0_q\) ) ) ) # ( !\estado.refri~q\ & ( \estado.cents0~q\ & ( (!\D3|outb~2_combout\ & 
-- (!\D4|outb~2_combout\ & \estado.cents40~q\)) ) ) ) # ( \estado.refri~q\ & ( !\estado.cents0~q\ & ( ((!\D3|outb~2_combout\ & !\D4|outb~2_combout\)) # (\display_1[4]~reg0_q\) ) ) ) # ( !\estado.refri~q\ & ( !\estado.cents0~q\ & ( (!\D3|outb~2_combout\ & 
-- !\D4|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001111111100001000000010000000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents40~q\,
	datad => \ALT_INV_display_1[4]~reg0_q\,
	datae => \ALT_INV_estado.refri~q\,
	dataf => \ALT_INV_estado.cents0~q\,
	combout => \Selector26~2_combout\);

-- Location: LABCELL_X10_Y3_N24
\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ( \D4|outb~2_combout\ & ( \estado.cents50~q\ & ( (!\D3|outb~2_combout\ & !\D5|outb~2_combout\) ) ) ) # ( \D4|outb~2_combout\ & ( !\estado.cents50~q\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & ((\estado.cents70~q\) # 
-- (\estado.cents10~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000100000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents10~q\,
	datad => \ALT_INV_estado.cents70~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents50~q\,
	combout => \Selector26~1_combout\);

-- Location: LABCELL_X10_Y3_N54
\Selector26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = ( !\D3|outb~2_combout\ & ( \estado.cents20~q\ & ( (!\D4|outb~2_combout\) # (!\D5|outb~2_combout\) ) ) ) # ( !\D3|outb~2_combout\ & ( !\estado.cents20~q\ & ( (!\D5|outb~2_combout\ & (((\estado.cents30~q\) # (\estado.cents25~q\)))) 
-- # (\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & (\estado.cents25~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011001110000000000000000011101110111011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents25~q\,
	datad => \ALT_INV_estado.cents30~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.cents20~q\,
	combout => \Selector26~3_combout\);

-- Location: LABCELL_X10_Y3_N0
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \estado.cents85~q\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & !\D4|outb~2_combout\)) ) ) # ( !\estado.cents85~q\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & \estado.cents80~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100000001000000000000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents80~q\,
	datae => \ALT_INV_estado.cents85~q\,
	combout => \Selector26~0_combout\);

-- Location: LABCELL_X10_Y3_N42
\Selector26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = ( \Selector26~3_combout\ & ( \Selector26~0_combout\ ) ) # ( !\Selector26~3_combout\ & ( \Selector26~0_combout\ ) ) # ( \Selector26~3_combout\ & ( !\Selector26~0_combout\ ) ) # ( !\Selector26~3_combout\ & ( !\Selector26~0_combout\ 
-- & ( (((\Selector0~0_combout\) # (\Selector27~0_combout\)) # (\Selector26~1_combout\)) # (\Selector26~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~2_combout\,
	datab => \ALT_INV_Selector26~1_combout\,
	datac => \ALT_INV_Selector27~0_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_Selector26~3_combout\,
	dataf => \ALT_INV_Selector26~0_combout\,
	combout => \Selector26~4_combout\);

-- Location: FF_X10_Y3_N44
\display_1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector26~4_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[4]~reg0_q\);

-- Location: LABCELL_X12_Y2_N48
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \estado.cents25~q\ & ( (!\D4|outb~2_combout\ & !\D3|outb~2_combout\) ) ) # ( !\estado.cents25~q\ & ( (!\D4|outb~2_combout\ & (!\D3|outb~2_combout\ & \estado.cents20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents20~q\,
	dataf => \ALT_INV_estado.cents25~q\,
	combout => \Selector25~0_combout\);

-- Location: LABCELL_X12_Y2_N54
\Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = ( \estado.cents60~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & ((!\D4|outb~2_combout\) # ((!\estado.cents0~q\) # (\estado.cents10~q\)))) ) ) ) # ( !\estado.cents60~q\ & ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & 
-- ((!\estado.cents0~q\) # (\estado.cents10~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101010001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.cents0~q\,
	datad => \ALT_INV_estado.cents10~q\,
	datae => \ALT_INV_estado.cents60~q\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector25~1_combout\);

-- Location: LABCELL_X12_Y2_N18
\Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = ( \Selector27~1_combout\ & ( \Selector25~1_combout\ ) ) # ( !\Selector27~1_combout\ & ( \Selector25~1_combout\ ) ) # ( \Selector27~1_combout\ & ( !\Selector25~1_combout\ ) ) # ( !\Selector27~1_combout\ & ( !\Selector25~1_combout\ 
-- & ( ((\estado.refri~q\ & \display_1[5]~reg0_q\)) # (\Selector25~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector25~0_combout\,
	datac => \ALT_INV_estado.refri~q\,
	datad => \ALT_INV_display_1[5]~reg0_q\,
	datae => \ALT_INV_Selector27~1_combout\,
	dataf => \ALT_INV_Selector25~1_combout\,
	combout => \Selector25~2_combout\);

-- Location: FF_X12_Y2_N59
\display_1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector25~2_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[5]~reg0_q\);

-- Location: MLABCELL_X9_Y2_N24
\Selector24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = ( !\D5|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (((\D4|outb~2_combout\ & \estado.cents65~q\)) # (\estado.cents25~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110000010100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.cents25~q\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents65~q\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector24~2_combout\);

-- Location: MLABCELL_X9_Y2_N6
\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = ( \estado.cents50~q\ & ( \D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (!\D5|outb~2_combout\ & ((!\estado.cents0~q\) # (\estado.cents10~q\)))) ) ) ) # ( !\estado.cents50~q\ & ( \D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & 
-- (!\D5|outb~2_combout\ & ((!\estado.cents0~q\) # (\estado.cents10~q\)))) ) ) ) # ( \estado.cents50~q\ & ( !\D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (((!\D5|outb~2_combout\) # (!\estado.cents0~q\)) # (\estado.cents10~q\))) ) ) ) # ( 
-- !\estado.cents50~q\ & ( !\D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (((\D5|outb~2_combout\ & !\estado.cents0~q\)) # (\estado.cents10~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000100010101010101010001010100000001000001010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.cents10~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.cents0~q\,
	datae => \ALT_INV_estado.cents50~q\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector24~1_combout\);

-- Location: MLABCELL_X9_Y2_N12
\Selector24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = ( !\Selector24~1_combout\ & ( (!\Selector24~2_combout\ & (((!\estado.cents20~q\) # (\D5|outb~2_combout\)) # (\D3|outb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000111100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_Selector24~2_combout\,
	datad => \ALT_INV_estado.cents20~q\,
	dataf => \ALT_INV_Selector24~1_combout\,
	combout => \Selector24~3_combout\);

-- Location: MLABCELL_X9_Y2_N48
\Selector24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = ( \display_1[6]~reg0_q\ & ( \Selector0~1_combout\ & ( ((!\Selector24~3_combout\) # (\estado.refri~q\)) # (\Selector24~0_combout\) ) ) ) # ( !\display_1[6]~reg0_q\ & ( \Selector0~1_combout\ & ( (!\Selector24~3_combout\) # 
-- (\Selector24~0_combout\) ) ) ) # ( \display_1[6]~reg0_q\ & ( !\Selector0~1_combout\ ) ) # ( !\display_1[6]~reg0_q\ & ( !\Selector0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101110111011101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector24~0_combout\,
	datab => \ALT_INV_Selector24~3_combout\,
	datad => \ALT_INV_estado.refri~q\,
	datae => \ALT_INV_display_1[6]~reg0_q\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector24~4_combout\);

-- Location: FF_X9_Y2_N23
\display_1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector24~4_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_1[6]~reg0_q\);

-- Location: LABCELL_X12_Y2_N12
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \Selector18~0_combout\ ) # ( !\Selector18~0_combout\ & ( (!\display_2[0]~reg0_q\ & (\display_1~0_combout\ & ((\estado.cents50~q\)))) # (\display_2[0]~reg0_q\ & (((\display_1~0_combout\ & \estado.cents50~q\)) # 
-- (\estado.refri~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display_2[0]~reg0_q\,
	datab => \ALT_INV_display_1~0_combout\,
	datac => \ALT_INV_estado.refri~q\,
	datad => \ALT_INV_estado.cents50~q\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X12_Y2_N29
\display_2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector23~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_2[0]~reg0_q\);

-- Location: LABCELL_X21_Y42_N0
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


