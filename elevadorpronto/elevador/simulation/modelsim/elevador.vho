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

-- DATE "11/21/2018 14:41:52"

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

ENTITY 	elevador IS
    PORT (
	ck : IN std_logic;
	clk_button : IN std_logic;
	rst : IN std_logic;
	rst_db : IN std_logic;
	escolha : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(3 DOWNTO 0);
	display : OUT std_logic_vector(6 DOWNTO 0);
	porta : OUT std_logic_vector(6 DOWNTO 0)
	);
END elevador;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_db	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escolha[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escolha[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escolha[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escolha[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_button	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF elevador IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_rst_db : std_logic;
SIGNAL ww_escolha : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_porta : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_button~input_o\ : std_logic;
SIGNAL \rst_db~input_o\ : std_logic;
SIGNAL \D1|outb~1_combout\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D1|intermediate~1_combout\ : std_logic;
SIGNAL \D1|intermediate~_emulatedfeeder_combout\ : std_logic;
SIGNAL \D1|intermediate~_emulated_q\ : std_logic;
SIGNAL \D1|intermediate~0_combout\ : std_logic;
SIGNAL \D1|Add0~61_sumout\ : std_logic;
SIGNAL \D1|always0~0_combout\ : std_logic;
SIGNAL \D1|Add0~62\ : std_logic;
SIGNAL \D1|Add0~17_sumout\ : std_logic;
SIGNAL \D1|Add0~18\ : std_logic;
SIGNAL \D1|Add0~13_sumout\ : std_logic;
SIGNAL \D1|Add0~14\ : std_logic;
SIGNAL \D1|Add0~9_sumout\ : std_logic;
SIGNAL \D1|Add0~10\ : std_logic;
SIGNAL \D1|Add0~5_sumout\ : std_logic;
SIGNAL \D1|Add0~6\ : std_logic;
SIGNAL \D1|Add0~41_sumout\ : std_logic;
SIGNAL \D1|Add0~42\ : std_logic;
SIGNAL \D1|Add0~37_sumout\ : std_logic;
SIGNAL \D1|Add0~38\ : std_logic;
SIGNAL \D1|Add0~33_sumout\ : std_logic;
SIGNAL \D1|Add0~34\ : std_logic;
SIGNAL \D1|Add0~29_sumout\ : std_logic;
SIGNAL \D1|Add0~30\ : std_logic;
SIGNAL \D1|Add0~25_sumout\ : std_logic;
SIGNAL \D1|Add0~26\ : std_logic;
SIGNAL \D1|Add0~21_sumout\ : std_logic;
SIGNAL \D1|Add0~22\ : std_logic;
SIGNAL \D1|Add0~1_sumout\ : std_logic;
SIGNAL \D1|Add0~2\ : std_logic;
SIGNAL \D1|Add0~45_sumout\ : std_logic;
SIGNAL \D1|Add0~46\ : std_logic;
SIGNAL \D1|Add0~49_sumout\ : std_logic;
SIGNAL \D1|Add0~50\ : std_logic;
SIGNAL \D1|Add0~53_sumout\ : std_logic;
SIGNAL \D1|Add0~54\ : std_logic;
SIGNAL \D1|Add0~57_sumout\ : std_logic;
SIGNAL \D1|outb~7_combout\ : std_logic;
SIGNAL \D1|outb~6_combout\ : std_logic;
SIGNAL \D1|outb~5_combout\ : std_logic;
SIGNAL \D1|outb~8_combout\ : std_logic;
SIGNAL \D1|outb~3_combout\ : std_logic;
SIGNAL \D1|outb~_emulated_q\ : std_logic;
SIGNAL \D1|outb~2_combout\ : std_logic;
SIGNAL \escolha[2]~input_o\ : std_logic;
SIGNAL \D5|outb~1_combout\ : std_logic;
SIGNAL \D5|intermediate~1_combout\ : std_logic;
SIGNAL \D5|intermediate~_emulated_q\ : std_logic;
SIGNAL \D5|intermediate~0_combout\ : std_logic;
SIGNAL \D5|Add0~53_sumout\ : std_logic;
SIGNAL \D5|always0~0_combout\ : std_logic;
SIGNAL \D5|Add0~54\ : std_logic;
SIGNAL \D5|Add0~49_sumout\ : std_logic;
SIGNAL \D5|Add0~50\ : std_logic;
SIGNAL \D5|Add0~45_sumout\ : std_logic;
SIGNAL \D5|Add0~46\ : std_logic;
SIGNAL \D5|Add0~17_sumout\ : std_logic;
SIGNAL \D5|Add0~18\ : std_logic;
SIGNAL \D5|Add0~13_sumout\ : std_logic;
SIGNAL \D5|Add0~14\ : std_logic;
SIGNAL \D5|Add0~9_sumout\ : std_logic;
SIGNAL \D5|Add0~10\ : std_logic;
SIGNAL \D5|Add0~5_sumout\ : std_logic;
SIGNAL \D5|outb~5_combout\ : std_logic;
SIGNAL \D5|Add0~6\ : std_logic;
SIGNAL \D5|Add0~41_sumout\ : std_logic;
SIGNAL \D5|Add0~42\ : std_logic;
SIGNAL \D5|Add0~37_sumout\ : std_logic;
SIGNAL \D5|Add0~38\ : std_logic;
SIGNAL \D5|Add0~33_sumout\ : std_logic;
SIGNAL \D5|Add0~34\ : std_logic;
SIGNAL \D5|Add0~29_sumout\ : std_logic;
SIGNAL \D5|Add0~30\ : std_logic;
SIGNAL \D5|Add0~25_sumout\ : std_logic;
SIGNAL \D5|Add0~26\ : std_logic;
SIGNAL \D5|Add0~21_sumout\ : std_logic;
SIGNAL \D5|Add0~22\ : std_logic;
SIGNAL \D5|Add0~1_sumout\ : std_logic;
SIGNAL \D5|outb~6_combout\ : std_logic;
SIGNAL \D5|Add0~2\ : std_logic;
SIGNAL \D5|Add0~61_sumout\ : std_logic;
SIGNAL \D5|Add0~62\ : std_logic;
SIGNAL \D5|Add0~57_sumout\ : std_logic;
SIGNAL \D5|outb~7_combout\ : std_logic;
SIGNAL \D5|outb~8_combout\ : std_logic;
SIGNAL \D5|outb~3_combout\ : std_logic;
SIGNAL \D5|outb~_emulated_q\ : std_logic;
SIGNAL \D5|outb~2_combout\ : std_logic;
SIGNAL \escolha[3]~input_o\ : std_logic;
SIGNAL \D6|outb~1_combout\ : std_logic;
SIGNAL \D6|intermediate~1_combout\ : std_logic;
SIGNAL \D6|intermediate~_emulated_q\ : std_logic;
SIGNAL \D6|intermediate~0_combout\ : std_logic;
SIGNAL \D6|Add0~57_sumout\ : std_logic;
SIGNAL \D6|always0~0_combout\ : std_logic;
SIGNAL \D6|Add0~58\ : std_logic;
SIGNAL \D6|Add0~45_sumout\ : std_logic;
SIGNAL \D6|Add0~46\ : std_logic;
SIGNAL \D6|Add0~25_sumout\ : std_logic;
SIGNAL \D6|Add0~26\ : std_logic;
SIGNAL \D6|Add0~29_sumout\ : std_logic;
SIGNAL \D6|Add0~30\ : std_logic;
SIGNAL \D6|Add0~33_sumout\ : std_logic;
SIGNAL \D6|Add0~34\ : std_logic;
SIGNAL \D6|Add0~37_sumout\ : std_logic;
SIGNAL \D6|Add0~38\ : std_logic;
SIGNAL \D6|Add0~49_sumout\ : std_logic;
SIGNAL \D6|Add0~50\ : std_logic;
SIGNAL \D6|Add0~41_sumout\ : std_logic;
SIGNAL \D6|Add0~42\ : std_logic;
SIGNAL \D6|Add0~21_sumout\ : std_logic;
SIGNAL \D6|Add0~22\ : std_logic;
SIGNAL \D6|Add0~9_sumout\ : std_logic;
SIGNAL \D6|Add0~10\ : std_logic;
SIGNAL \D6|Add0~13_sumout\ : std_logic;
SIGNAL \D6|Add0~14\ : std_logic;
SIGNAL \D6|Add0~53_sumout\ : std_logic;
SIGNAL \D6|Add0~54\ : std_logic;
SIGNAL \D6|Add0~17_sumout\ : std_logic;
SIGNAL \D6|Add0~18\ : std_logic;
SIGNAL \D6|Add0~5_sumout\ : std_logic;
SIGNAL \D6|Add0~6\ : std_logic;
SIGNAL \D6|Add0~1_sumout\ : std_logic;
SIGNAL \D6|outb~5_combout\ : std_logic;
SIGNAL \D6|Add0~2\ : std_logic;
SIGNAL \D6|Add0~61_sumout\ : std_logic;
SIGNAL \D6|outb~7_combout\ : std_logic;
SIGNAL \D6|outb~6_combout\ : std_logic;
SIGNAL \D6|outb~8_combout\ : std_logic;
SIGNAL \D6|outb~3_combout\ : std_logic;
SIGNAL \D6|outb~_emulated_q\ : std_logic;
SIGNAL \D6|outb~2_combout\ : std_logic;
SIGNAL \escolha[1]~input_o\ : std_logic;
SIGNAL \D4|outb~1_combout\ : std_logic;
SIGNAL \D4|intermediate~1_combout\ : std_logic;
SIGNAL \D4|intermediate~_emulated_q\ : std_logic;
SIGNAL \D4|intermediate~0_combout\ : std_logic;
SIGNAL \D4|Add0~33_sumout\ : std_logic;
SIGNAL \D4|always0~0_combout\ : std_logic;
SIGNAL \D4|Add0~34\ : std_logic;
SIGNAL \D4|Add0~45_sumout\ : std_logic;
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
SIGNAL \D4|Add0~38\ : std_logic;
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
SIGNAL \D4|outb~7_combout\ : std_logic;
SIGNAL \D4|outb~6_combout\ : std_logic;
SIGNAL \D4|outb~5_combout\ : std_logic;
SIGNAL \D4|outb~8_combout\ : std_logic;
SIGNAL \D4|outb~3_combout\ : std_logic;
SIGNAL \D4|outb~_emulated_q\ : std_logic;
SIGNAL \D4|outb~2_combout\ : std_logic;
SIGNAL \escolha[0]~input_o\ : std_logic;
SIGNAL \D3|outb~1_combout\ : std_logic;
SIGNAL \D3|intermediate~1_combout\ : std_logic;
SIGNAL \D3|intermediate~_emulated_q\ : std_logic;
SIGNAL \D3|intermediate~0_combout\ : std_logic;
SIGNAL \D3|Add0~57_sumout\ : std_logic;
SIGNAL \D3|always0~0_combout\ : std_logic;
SIGNAL \D3|Add0~58\ : std_logic;
SIGNAL \D3|Add0~53_sumout\ : std_logic;
SIGNAL \D3|Add0~54\ : std_logic;
SIGNAL \D3|Add0~49_sumout\ : std_logic;
SIGNAL \D3|Add0~50\ : std_logic;
SIGNAL \D3|Add0~17_sumout\ : std_logic;
SIGNAL \D3|Add0~18\ : std_logic;
SIGNAL \D3|Add0~13_sumout\ : std_logic;
SIGNAL \D3|Add0~14\ : std_logic;
SIGNAL \D3|Add0~9_sumout\ : std_logic;
SIGNAL \D3|Add0~10\ : std_logic;
SIGNAL \D3|Add0~5_sumout\ : std_logic;
SIGNAL \D3|Add0~6\ : std_logic;
SIGNAL \D3|Add0~41_sumout\ : std_logic;
SIGNAL \D3|Add0~42\ : std_logic;
SIGNAL \D3|Add0~37_sumout\ : std_logic;
SIGNAL \D3|Add0~38\ : std_logic;
SIGNAL \D3|Add0~33_sumout\ : std_logic;
SIGNAL \D3|Add0~34\ : std_logic;
SIGNAL \D3|Add0~45_sumout\ : std_logic;
SIGNAL \D3|Add0~46\ : std_logic;
SIGNAL \D3|Add0~29_sumout\ : std_logic;
SIGNAL \D3|Add0~30\ : std_logic;
SIGNAL \D3|Add0~25_sumout\ : std_logic;
SIGNAL \D3|Add0~26\ : std_logic;
SIGNAL \D3|Add0~21_sumout\ : std_logic;
SIGNAL \D3|Add0~22\ : std_logic;
SIGNAL \D3|Add0~1_sumout\ : std_logic;
SIGNAL \D3|outb~5_combout\ : std_logic;
SIGNAL \D3|outb~6_combout\ : std_logic;
SIGNAL \D3|Add0~2\ : std_logic;
SIGNAL \D3|Add0~61_sumout\ : std_logic;
SIGNAL \D3|outb~7_combout\ : std_logic;
SIGNAL \D3|outb~8_combout\ : std_logic;
SIGNAL \D3|outb~3_combout\ : std_logic;
SIGNAL \D3|outb~_emulated_q\ : std_logic;
SIGNAL \D3|outb~2_combout\ : std_logic;
SIGNAL \display~2_combout\ : std_logic;
SIGNAL \display~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \display~4_combout\ : std_logic;
SIGNAL \display~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado.andar0~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \D2|outb~1_combout\ : std_logic;
SIGNAL \D2|Add0~45_sumout\ : std_logic;
SIGNAL \D2|intermediate~1_combout\ : std_logic;
SIGNAL \D2|intermediate~_emulated_q\ : std_logic;
SIGNAL \D2|intermediate~0_combout\ : std_logic;
SIGNAL \D2|always0~0_combout\ : std_logic;
SIGNAL \D2|Add0~46\ : std_logic;
SIGNAL \D2|Add0~17_sumout\ : std_logic;
SIGNAL \D2|Add0~18\ : std_logic;
SIGNAL \D2|Add0~13_sumout\ : std_logic;
SIGNAL \D2|Add0~14\ : std_logic;
SIGNAL \D2|Add0~9_sumout\ : std_logic;
SIGNAL \D2|Add0~10\ : std_logic;
SIGNAL \D2|Add0~5_sumout\ : std_logic;
SIGNAL \D2|outb~5_combout\ : std_logic;
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
SIGNAL \D2|outb~8_combout\ : std_logic;
SIGNAL \D2|outb~3_combout\ : std_logic;
SIGNAL \D2|outb~_emulated_q\ : std_logic;
SIGNAL \D2|outb~2_combout\ : std_logic;
SIGNAL \estado.andar0~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.andar1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.andar2~feeder_combout\ : std_logic;
SIGNAL \estado.andar2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \estado.andar3~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \estado.andar4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \estado.andar5~q\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \display~5_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \display~6_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \estado.andar15~q\ : std_logic;
SIGNAL \display~3_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \estado.andar14~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \estado.andar13~feeder_combout\ : std_logic;
SIGNAL \estado.andar13~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \estado.andar12~q\ : std_logic;
SIGNAL \display~7_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \estado.andar11~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \estado.andar10~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \estado.andar9~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \estado.andar8~q\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \estado.andar7~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \estado.andar6~q\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr19~combout\ : std_logic;
SIGNAL \WideOr18~combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr17~combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \display~8_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector16~6_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~8_combout\ : std_logic;
SIGNAL \Selector16~7_combout\ : std_logic;
SIGNAL \display[0]~reg0_q\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector17~6_combout\ : std_logic;
SIGNAL \Selector17~9_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~8_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~7_combout\ : std_logic;
SIGNAL \display[1]~reg0_q\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \Selector18~7_combout\ : std_logic;
SIGNAL \Selector18~6_combout\ : std_logic;
SIGNAL \Selector18~5_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \display[2]~reg0_q\ : std_logic;
SIGNAL \display[3]~reg0_q\ : std_logic;
SIGNAL \display[4]~reg0_q\ : std_logic;
SIGNAL \display[5]~reg0_q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~7_combout\ : std_logic;
SIGNAL \Selector19~8_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \Selector19~6_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~9_combout\ : std_logic;
SIGNAL \porta[1]~reg0_q\ : std_logic;
SIGNAL \porta[2]~reg0_q\ : std_logic;
SIGNAL \D4|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D5|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D1|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D6|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D3|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D2|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D6|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D5|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D4|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_button~input_o\ : std_logic;
SIGNAL \ALT_INV_escolha[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_escolha[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_escolha[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_escolha[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_db~input_o\ : std_logic;
SIGNAL \D2|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D1|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D3|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D6|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~3_combout\ : std_logic;
SIGNAL \D1|ALT_INV_intermediate~1_combout\ : std_logic;
SIGNAL \D2|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D1|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D3|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D3|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \D6|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \D6|ALT_INV_intermediate~_emulated_q\ : std_logic;
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
SIGNAL \D6|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \D6|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \D6|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \D6|ALT_INV_outb~5_combout\ : std_logic;
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
SIGNAL \D6|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D6|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \D5|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D5|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \D4|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \D4|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Selector19~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \ALT_INV_display~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_display~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_display~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_display~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_display~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.andar15~q\ : std_logic;
SIGNAL \ALT_INV_display~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_display~2_combout\ : std_logic;
SIGNAL \ALT_INV_display~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_display~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \ALT_INV_estado.andar7~q\ : std_logic;
SIGNAL \ALT_INV_WideOr17~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.andar3~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar11~q\ : std_logic;
SIGNAL \ALT_INV_WideOr18~combout\ : std_logic;
SIGNAL \ALT_INV_estado.andar13~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar9~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar5~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar1~q\ : std_logic;
SIGNAL \ALT_INV_WideOr19~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr18~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.andar12~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar8~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar4~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar0~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar14~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar10~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar6~q\ : std_logic;
SIGNAL \ALT_INV_estado.andar2~q\ : std_logic;
SIGNAL \D2|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D1|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D3|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_ck <= ck;
ww_clk_button <= clk_button;
ww_rst <= rst;
ww_rst_db <= rst_db;
ww_escolha <= escolha;
saida <= ww_saida;
display <= ww_display;
porta <= ww_porta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\D6|ALT_INV_counter\(2) <= NOT \D6|counter\(2);
\D6|ALT_INV_counter\(8) <= NOT \D6|counter\(8);
\D6|ALT_INV_counter\(12) <= NOT \D6|counter\(12);
\D6|ALT_INV_counter\(10) <= NOT \D6|counter\(10);
\D6|ALT_INV_counter\(9) <= NOT \D6|counter\(9);
\D6|ALT_INV_counter\(13) <= NOT \D6|counter\(13);
\D6|ALT_INV_counter\(14) <= NOT \D6|counter\(14);
\D5|ALT_INV_counter\(14) <= NOT \D5|counter\(14);
\D5|ALT_INV_counter\(15) <= NOT \D5|counter\(15);
\D5|ALT_INV_counter\(0) <= NOT \D5|counter\(0);
\D5|ALT_INV_counter\(1) <= NOT \D5|counter\(1);
\D5|ALT_INV_counter\(2) <= NOT \D5|counter\(2);
\D5|ALT_INV_counter\(7) <= NOT \D5|counter\(7);
\D5|ALT_INV_counter\(8) <= NOT \D5|counter\(8);
\D5|ALT_INV_counter\(9) <= NOT \D5|counter\(9);
\D5|ALT_INV_counter\(10) <= NOT \D5|counter\(10);
\D5|ALT_INV_counter\(11) <= NOT \D5|counter\(11);
\D5|ALT_INV_counter\(12) <= NOT \D5|counter\(12);
\D5|ALT_INV_counter\(3) <= NOT \D5|counter\(3);
\D5|ALT_INV_counter\(4) <= NOT \D5|counter\(4);
\D5|ALT_INV_counter\(5) <= NOT \D5|counter\(5);
\D5|ALT_INV_counter\(6) <= NOT \D5|counter\(6);
\D5|ALT_INV_counter\(13) <= NOT \D5|counter\(13);
\D4|ALT_INV_counter\(12) <= NOT \D4|counter\(12);
\D4|ALT_INV_counter\(13) <= NOT \D4|counter\(13);
\D4|ALT_INV_counter\(14) <= NOT \D4|counter\(14);
\D4|ALT_INV_counter\(15) <= NOT \D4|counter\(15);
\D4|ALT_INV_counter\(1) <= NOT \D4|counter\(1);
\D4|ALT_INV_counter\(6) <= NOT \D4|counter\(6);
\D4|ALT_INV_counter\(7) <= NOT \D4|counter\(7);
\D4|ALT_INV_counter\(0) <= NOT \D4|counter\(0);
\D4|ALT_INV_counter\(8) <= NOT \D4|counter\(8);
\D4|ALT_INV_counter\(9) <= NOT \D4|counter\(9);
\D4|ALT_INV_counter\(10) <= NOT \D4|counter\(10);
\D4|ALT_INV_counter\(2) <= NOT \D4|counter\(2);
\D4|ALT_INV_counter\(3) <= NOT \D4|counter\(3);
\D4|ALT_INV_counter\(4) <= NOT \D4|counter\(4);
\D4|ALT_INV_counter\(5) <= NOT \D4|counter\(5);
\D4|ALT_INV_counter\(11) <= NOT \D4|counter\(11);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_clk_button~input_o\ <= NOT \clk_button~input_o\;
\ALT_INV_escolha[0]~input_o\ <= NOT \escolha[0]~input_o\;
\ALT_INV_escolha[3]~input_o\ <= NOT \escolha[3]~input_o\;
\ALT_INV_escolha[2]~input_o\ <= NOT \escolha[2]~input_o\;
\ALT_INV_escolha[1]~input_o\ <= NOT \escolha[1]~input_o\;
\ALT_INV_rst_db~input_o\ <= NOT \rst_db~input_o\;
\D2|ALT_INV_outb~1_combout\ <= NOT \D2|outb~1_combout\;
\D1|ALT_INV_outb~1_combout\ <= NOT \D1|outb~1_combout\;
\D3|ALT_INV_outb~1_combout\ <= NOT \D3|outb~1_combout\;
\D6|ALT_INV_outb~1_combout\ <= NOT \D6|outb~1_combout\;
\D5|ALT_INV_outb~1_combout\ <= NOT \D5|outb~1_combout\;
\D4|ALT_INV_outb~1_combout\ <= NOT \D4|outb~1_combout\;
\ALT_INV_Selector7~3_combout\ <= NOT \Selector7~3_combout\;
\ALT_INV_Selector7~2_combout\ <= NOT \Selector7~2_combout\;
\ALT_INV_Selector16~8_combout\ <= NOT \Selector16~8_combout\;
\ALT_INV_Selector17~9_combout\ <= NOT \Selector17~9_combout\;
\ALT_INV_Selector17~8_combout\ <= NOT \Selector17~8_combout\;
\ALT_INV_Selector18~7_combout\ <= NOT \Selector18~7_combout\;
\ALT_INV_Selector18~6_combout\ <= NOT \Selector18~6_combout\;
\ALT_INV_Selector18~5_combout\ <= NOT \Selector18~5_combout\;
\ALT_INV_Selector18~4_combout\ <= NOT \Selector18~4_combout\;
\ALT_INV_Selector18~3_combout\ <= NOT \Selector18~3_combout\;
\D1|ALT_INV_intermediate~1_combout\ <= NOT \D1|intermediate~1_combout\;
\D2|ALT_INV_intermediate~0_combout\ <= NOT \D2|intermediate~0_combout\;
\D2|ALT_INV_intermediate~_emulated_q\ <= NOT \D2|intermediate~_emulated_q\;
\D1|ALT_INV_intermediate~0_combout\ <= NOT \D1|intermediate~0_combout\;
\D1|ALT_INV_intermediate~_emulated_q\ <= NOT \D1|intermediate~_emulated_q\;
\D3|ALT_INV_intermediate~0_combout\ <= NOT \D3|intermediate~0_combout\;
\D3|ALT_INV_intermediate~_emulated_q\ <= NOT \D3|intermediate~_emulated_q\;
\D6|ALT_INV_intermediate~0_combout\ <= NOT \D6|intermediate~0_combout\;
\D6|ALT_INV_intermediate~_emulated_q\ <= NOT \D6|intermediate~_emulated_q\;
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
\D6|ALT_INV_outb~8_combout\ <= NOT \D6|outb~8_combout\;
\D6|ALT_INV_outb~7_combout\ <= NOT \D6|outb~7_combout\;
\D6|ALT_INV_outb~6_combout\ <= NOT \D6|outb~6_combout\;
\D6|ALT_INV_outb~5_combout\ <= NOT \D6|outb~5_combout\;
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
\D6|ALT_INV_outb~2_combout\ <= NOT \D6|outb~2_combout\;
\D6|ALT_INV_outb~_emulated_q\ <= NOT \D6|outb~_emulated_q\;
\D5|ALT_INV_outb~2_combout\ <= NOT \D5|outb~2_combout\;
\D5|ALT_INV_outb~_emulated_q\ <= NOT \D5|outb~_emulated_q\;
\D4|ALT_INV_outb~2_combout\ <= NOT \D4|outb~2_combout\;
\D4|ALT_INV_outb~_emulated_q\ <= NOT \D4|outb~_emulated_q\;
\ALT_INV_Selector19~8_combout\ <= NOT \Selector19~8_combout\;
\ALT_INV_Selector19~7_combout\ <= NOT \Selector19~7_combout\;
\ALT_INV_Selector19~6_combout\ <= NOT \Selector19~6_combout\;
\ALT_INV_Selector19~5_combout\ <= NOT \Selector19~5_combout\;
\ALT_INV_Selector19~4_combout\ <= NOT \Selector19~4_combout\;
\ALT_INV_Selector19~3_combout\ <= NOT \Selector19~3_combout\;
\ALT_INV_Selector19~2_combout\ <= NOT \Selector19~2_combout\;
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Selector18~1_combout\ <= NOT \Selector18~1_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector17~6_combout\ <= NOT \Selector17~6_combout\;
\ALT_INV_Selector17~5_combout\ <= NOT \Selector17~5_combout\;
\ALT_INV_Selector17~4_combout\ <= NOT \Selector17~4_combout\;
\ALT_INV_Selector17~3_combout\ <= NOT \Selector17~3_combout\;
\ALT_INV_Selector17~2_combout\ <= NOT \Selector17~2_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector16~6_combout\ <= NOT \Selector16~6_combout\;
\ALT_INV_Selector16~5_combout\ <= NOT \Selector16~5_combout\;
\ALT_INV_Selector16~4_combout\ <= NOT \Selector16~4_combout\;
\ALT_INV_Selector16~3_combout\ <= NOT \Selector16~3_combout\;
\ALT_INV_Selector16~2_combout\ <= NOT \Selector16~2_combout\;
\ALT_INV_Selector16~1_combout\ <= NOT \Selector16~1_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_Selector10~3_combout\ <= NOT \Selector10~3_combout\;
\ALT_INV_Selector7~1_combout\ <= NOT \Selector7~1_combout\;
\ALT_INV_display~8_combout\ <= NOT \display~8_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector11~1_combout\ <= NOT \Selector11~1_combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_display~7_combout\ <= NOT \display~7_combout\;
\ALT_INV_Selector10~2_combout\ <= NOT \Selector10~2_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_display~6_combout\ <= NOT \display~6_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector8~1_combout\ <= NOT \Selector8~1_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_display~5_combout\ <= NOT \display~5_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_display~4_combout\ <= NOT \display~4_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_estado.andar15~q\ <= NOT \estado.andar15~q\;
\ALT_INV_display~3_combout\ <= NOT \display~3_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_display~2_combout\ <= NOT \display~2_combout\;
\ALT_INV_display~1_combout\ <= NOT \display~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_display~0_combout\ <= NOT \display~0_combout\;
\ALT_INV_WideOr16~combout\ <= NOT \WideOr16~combout\;
\ALT_INV_estado.andar7~q\ <= NOT \estado.andar7~q\;
\ALT_INV_WideOr17~combout\ <= NOT \WideOr17~combout\;
\ALT_INV_WideOr16~0_combout\ <= NOT \WideOr16~0_combout\;
\ALT_INV_estado.andar3~q\ <= NOT \estado.andar3~q\;
\ALT_INV_estado.andar11~q\ <= NOT \estado.andar11~q\;
\ALT_INV_WideOr18~combout\ <= NOT \WideOr18~combout\;
\ALT_INV_estado.andar13~q\ <= NOT \estado.andar13~q\;
\ALT_INV_estado.andar9~q\ <= NOT \estado.andar9~q\;
\ALT_INV_estado.andar5~q\ <= NOT \estado.andar5~q\;
\ALT_INV_estado.andar1~q\ <= NOT \estado.andar1~q\;
\ALT_INV_WideOr19~combout\ <= NOT \WideOr19~combout\;
\ALT_INV_WideOr18~0_combout\ <= NOT \WideOr18~0_combout\;
\ALT_INV_estado.andar12~q\ <= NOT \estado.andar12~q\;
\ALT_INV_estado.andar8~q\ <= NOT \estado.andar8~q\;
\ALT_INV_estado.andar4~q\ <= NOT \estado.andar4~q\;
\ALT_INV_estado.andar0~q\ <= NOT \estado.andar0~q\;
\ALT_INV_estado.andar14~q\ <= NOT \estado.andar14~q\;
\ALT_INV_estado.andar10~q\ <= NOT \estado.andar10~q\;
\ALT_INV_estado.andar6~q\ <= NOT \estado.andar6~q\;
\ALT_INV_estado.andar2~q\ <= NOT \estado.andar2~q\;
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
\D1|ALT_INV_counter\(0) <= NOT \D1|counter\(0);
\D1|ALT_INV_counter\(15) <= NOT \D1|counter\(15);
\D1|ALT_INV_counter\(14) <= NOT \D1|counter\(14);
\D1|ALT_INV_counter\(13) <= NOT \D1|counter\(13);
\D1|ALT_INV_counter\(12) <= NOT \D1|counter\(12);
\D1|ALT_INV_counter\(5) <= NOT \D1|counter\(5);
\D1|ALT_INV_counter\(6) <= NOT \D1|counter\(6);
\D1|ALT_INV_counter\(7) <= NOT \D1|counter\(7);
\D1|ALT_INV_counter\(8) <= NOT \D1|counter\(8);
\D1|ALT_INV_counter\(9) <= NOT \D1|counter\(9);
\D1|ALT_INV_counter\(10) <= NOT \D1|counter\(10);
\D1|ALT_INV_counter\(1) <= NOT \D1|counter\(1);
\D1|ALT_INV_counter\(2) <= NOT \D1|counter\(2);
\D1|ALT_INV_counter\(3) <= NOT \D1|counter\(3);
\D1|ALT_INV_counter\(4) <= NOT \D1|counter\(4);
\D1|ALT_INV_counter\(11) <= NOT \D1|counter\(11);
\D3|ALT_INV_counter\(15) <= NOT \D3|counter\(15);
\D3|ALT_INV_counter\(0) <= NOT \D3|counter\(0);
\D3|ALT_INV_counter\(1) <= NOT \D3|counter\(1);
\D3|ALT_INV_counter\(2) <= NOT \D3|counter\(2);
\D3|ALT_INV_counter\(10) <= NOT \D3|counter\(10);
\D3|ALT_INV_counter\(7) <= NOT \D3|counter\(7);
\D3|ALT_INV_counter\(8) <= NOT \D3|counter\(8);
\D3|ALT_INV_counter\(9) <= NOT \D3|counter\(9);
\D3|ALT_INV_counter\(11) <= NOT \D3|counter\(11);
\D3|ALT_INV_counter\(12) <= NOT \D3|counter\(12);
\D3|ALT_INV_counter\(13) <= NOT \D3|counter\(13);
\D3|ALT_INV_counter\(3) <= NOT \D3|counter\(3);
\D3|ALT_INV_counter\(4) <= NOT \D3|counter\(4);
\D3|ALT_INV_counter\(5) <= NOT \D3|counter\(5);
\D3|ALT_INV_counter\(6) <= NOT \D3|counter\(6);
\D3|ALT_INV_counter\(14) <= NOT \D3|counter\(14);
\D6|ALT_INV_counter\(15) <= NOT \D6|counter\(15);
\D6|ALT_INV_counter\(0) <= NOT \D6|counter\(0);
\D6|ALT_INV_counter\(11) <= NOT \D6|counter\(11);
\D6|ALT_INV_counter\(6) <= NOT \D6|counter\(6);
\D6|ALT_INV_counter\(1) <= NOT \D6|counter\(1);
\D6|ALT_INV_counter\(7) <= NOT \D6|counter\(7);
\D6|ALT_INV_counter\(5) <= NOT \D6|counter\(5);
\D6|ALT_INV_counter\(4) <= NOT \D6|counter\(4);
\D6|ALT_INV_counter\(3) <= NOT \D6|counter\(3);

-- Location: IOOBUF_X0_Y18_N79
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr19~combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X0_Y18_N96
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr18~combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X0_Y18_N62
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr17~combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X0_Y18_N45
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr16~combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X52_Y0_N53
\display[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display(0));

-- Location: IOOBUF_X51_Y0_N36
\display[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display(1));

-- Location: IOOBUF_X48_Y0_N76
\display[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display(2));

-- Location: IOOBUF_X50_Y0_N36
\display[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display(3));

-- Location: IOOBUF_X48_Y0_N93
\display[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display(4));

-- Location: IOOBUF_X50_Y0_N53
\display[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display(5));

-- Location: IOOBUF_X46_Y0_N36
\display[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display(6));

-- Location: IOOBUF_X29_Y0_N2
\porta[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_porta(0));

-- Location: IOOBUF_X22_Y0_N19
\porta[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \porta[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_porta(1));

-- Location: IOOBUF_X43_Y0_N19
\porta[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \porta[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_porta(2));

-- Location: IOOBUF_X50_Y0_N19
\porta[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_porta(3));

-- Location: IOOBUF_X0_Y21_N56
\porta[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_porta(4));

-- Location: IOOBUF_X0_Y21_N39
\porta[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_porta(5));

-- Location: IOOBUF_X44_Y0_N2
\porta[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_porta(6));

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

-- Location: IOIBUF_X11_Y0_N35
\rst_db~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_db,
	o => \rst_db~input_o\);

-- Location: LABCELL_X6_Y1_N42
\D1|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~1_combout\ = ( \D1|outb~1_combout\ & ( \rst_db~input_o\ ) ) # ( \D1|outb~1_combout\ & ( !\rst_db~input_o\ & ( \clk_button~input_o\ ) ) ) # ( !\D1|outb~1_combout\ & ( !\rst_db~input_o\ & ( \clk_button~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk_button~input_o\,
	datae => \D1|ALT_INV_outb~1_combout\,
	dataf => \ALT_INV_rst_db~input_o\,
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

-- Location: LABCELL_X10_Y1_N57
\D1|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|intermediate~1_combout\ = !\clk_button~input_o\ $ (!\D1|outb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_button~input_o\,
	datac => \D1|ALT_INV_outb~1_combout\,
	combout => \D1|intermediate~1_combout\);

-- Location: LABCELL_X6_Y1_N36
\D1|intermediate~_emulatedfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|intermediate~_emulatedfeeder_combout\ = \D1|intermediate~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D1|ALT_INV_intermediate~1_combout\,
	combout => \D1|intermediate~_emulatedfeeder_combout\);

-- Location: FF_X6_Y1_N38
\D1|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D1|intermediate~_emulatedfeeder_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|intermediate~_emulated_q\);

-- Location: LABCELL_X6_Y1_N0
\D1|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|intermediate~0_combout\ = ( \D1|intermediate~_emulated_q\ & ( \D1|outb~1_combout\ & ( (!\rst_db~input_o\ & \clk_button~input_o\) ) ) ) # ( !\D1|intermediate~_emulated_q\ & ( \D1|outb~1_combout\ & ( (\clk_button~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D1|intermediate~_emulated_q\ & ( !\D1|outb~1_combout\ & ( (\clk_button~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D1|intermediate~_emulated_q\ & ( !\D1|outb~1_combout\ & ( (!\rst_db~input_o\ & \clk_button~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111101011111010111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_clk_button~input_o\,
	datae => \D1|ALT_INV_intermediate~_emulated_q\,
	dataf => \D1|ALT_INV_outb~1_combout\,
	combout => \D1|intermediate~0_combout\);

-- Location: LABCELL_X5_Y1_N0
\D1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~61_sumout\ = SUM(( \D1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D1|Add0~62\ = CARRY(( \D1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D1|Add0~61_sumout\,
	cout => \D1|Add0~62\);

-- Location: LABCELL_X6_Y1_N15
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

-- Location: FF_X5_Y1_N1
\D1|counter[0]\ : dffeas
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
	q => \D1|counter\(0));

-- Location: LABCELL_X5_Y1_N3
\D1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~17_sumout\ = SUM(( \D1|counter\(1) ) + ( GND ) + ( \D1|Add0~62\ ))
-- \D1|Add0~18\ = CARRY(( \D1|counter\(1) ) + ( GND ) + ( \D1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(1),
	cin => \D1|Add0~62\,
	sumout => \D1|Add0~17_sumout\,
	cout => \D1|Add0~18\);

-- Location: FF_X5_Y1_N4
\D1|counter[1]\ : dffeas
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
	q => \D1|counter\(1));

-- Location: LABCELL_X5_Y1_N6
\D1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~13_sumout\ = SUM(( \D1|counter\(2) ) + ( GND ) + ( \D1|Add0~18\ ))
-- \D1|Add0~14\ = CARRY(( \D1|counter\(2) ) + ( GND ) + ( \D1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(2),
	cin => \D1|Add0~18\,
	sumout => \D1|Add0~13_sumout\,
	cout => \D1|Add0~14\);

-- Location: FF_X5_Y1_N7
\D1|counter[2]\ : dffeas
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
	q => \D1|counter\(2));

-- Location: LABCELL_X5_Y1_N9
\D1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~9_sumout\ = SUM(( \D1|counter\(3) ) + ( GND ) + ( \D1|Add0~14\ ))
-- \D1|Add0~10\ = CARRY(( \D1|counter\(3) ) + ( GND ) + ( \D1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(3),
	cin => \D1|Add0~14\,
	sumout => \D1|Add0~9_sumout\,
	cout => \D1|Add0~10\);

-- Location: FF_X5_Y1_N10
\D1|counter[3]\ : dffeas
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
	q => \D1|counter\(3));

-- Location: LABCELL_X5_Y1_N12
\D1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~5_sumout\ = SUM(( \D1|counter\(4) ) + ( GND ) + ( \D1|Add0~10\ ))
-- \D1|Add0~6\ = CARRY(( \D1|counter\(4) ) + ( GND ) + ( \D1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(4),
	cin => \D1|Add0~10\,
	sumout => \D1|Add0~5_sumout\,
	cout => \D1|Add0~6\);

-- Location: FF_X5_Y1_N13
\D1|counter[4]\ : dffeas
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
	q => \D1|counter\(4));

-- Location: LABCELL_X5_Y1_N15
\D1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~41_sumout\ = SUM(( \D1|counter\(5) ) + ( GND ) + ( \D1|Add0~6\ ))
-- \D1|Add0~42\ = CARRY(( \D1|counter\(5) ) + ( GND ) + ( \D1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(5),
	cin => \D1|Add0~6\,
	sumout => \D1|Add0~41_sumout\,
	cout => \D1|Add0~42\);

-- Location: FF_X5_Y1_N17
\D1|counter[5]\ : dffeas
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
	q => \D1|counter\(5));

-- Location: LABCELL_X5_Y1_N18
\D1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~37_sumout\ = SUM(( \D1|counter\(6) ) + ( GND ) + ( \D1|Add0~42\ ))
-- \D1|Add0~38\ = CARRY(( \D1|counter\(6) ) + ( GND ) + ( \D1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(6),
	cin => \D1|Add0~42\,
	sumout => \D1|Add0~37_sumout\,
	cout => \D1|Add0~38\);

-- Location: FF_X5_Y1_N20
\D1|counter[6]\ : dffeas
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
	q => \D1|counter\(6));

-- Location: LABCELL_X5_Y1_N21
\D1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~33_sumout\ = SUM(( \D1|counter\(7) ) + ( GND ) + ( \D1|Add0~38\ ))
-- \D1|Add0~34\ = CARRY(( \D1|counter\(7) ) + ( GND ) + ( \D1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(7),
	cin => \D1|Add0~38\,
	sumout => \D1|Add0~33_sumout\,
	cout => \D1|Add0~34\);

-- Location: FF_X5_Y1_N23
\D1|counter[7]\ : dffeas
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
	q => \D1|counter\(7));

-- Location: LABCELL_X5_Y1_N24
\D1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~29_sumout\ = SUM(( \D1|counter\(8) ) + ( GND ) + ( \D1|Add0~34\ ))
-- \D1|Add0~30\ = CARRY(( \D1|counter\(8) ) + ( GND ) + ( \D1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(8),
	cin => \D1|Add0~34\,
	sumout => \D1|Add0~29_sumout\,
	cout => \D1|Add0~30\);

-- Location: FF_X5_Y1_N26
\D1|counter[8]\ : dffeas
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
	q => \D1|counter\(8));

-- Location: LABCELL_X5_Y1_N27
\D1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~25_sumout\ = SUM(( \D1|counter\(9) ) + ( GND ) + ( \D1|Add0~30\ ))
-- \D1|Add0~26\ = CARRY(( \D1|counter\(9) ) + ( GND ) + ( \D1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(9),
	cin => \D1|Add0~30\,
	sumout => \D1|Add0~25_sumout\,
	cout => \D1|Add0~26\);

-- Location: FF_X5_Y1_N29
\D1|counter[9]\ : dffeas
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
	q => \D1|counter\(9));

-- Location: LABCELL_X5_Y1_N30
\D1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~21_sumout\ = SUM(( \D1|counter\(10) ) + ( GND ) + ( \D1|Add0~26\ ))
-- \D1|Add0~22\ = CARRY(( \D1|counter\(10) ) + ( GND ) + ( \D1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(10),
	cin => \D1|Add0~26\,
	sumout => \D1|Add0~21_sumout\,
	cout => \D1|Add0~22\);

-- Location: FF_X5_Y1_N32
\D1|counter[10]\ : dffeas
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
	q => \D1|counter\(10));

-- Location: LABCELL_X5_Y1_N33
\D1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~1_sumout\ = SUM(( \D1|counter\(11) ) + ( GND ) + ( \D1|Add0~22\ ))
-- \D1|Add0~2\ = CARRY(( \D1|counter\(11) ) + ( GND ) + ( \D1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(11),
	cin => \D1|Add0~22\,
	sumout => \D1|Add0~1_sumout\,
	cout => \D1|Add0~2\);

-- Location: FF_X5_Y1_N34
\D1|counter[11]\ : dffeas
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
	q => \D1|counter\(11));

-- Location: LABCELL_X5_Y1_N36
\D1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~45_sumout\ = SUM(( \D1|counter\(12) ) + ( GND ) + ( \D1|Add0~2\ ))
-- \D1|Add0~46\ = CARRY(( \D1|counter\(12) ) + ( GND ) + ( \D1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(12),
	cin => \D1|Add0~2\,
	sumout => \D1|Add0~45_sumout\,
	cout => \D1|Add0~46\);

-- Location: FF_X5_Y1_N37
\D1|counter[12]\ : dffeas
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
	q => \D1|counter\(12));

-- Location: LABCELL_X5_Y1_N39
\D1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~49_sumout\ = SUM(( \D1|counter\(13) ) + ( GND ) + ( \D1|Add0~46\ ))
-- \D1|Add0~50\ = CARRY(( \D1|counter\(13) ) + ( GND ) + ( \D1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(13),
	cin => \D1|Add0~46\,
	sumout => \D1|Add0~49_sumout\,
	cout => \D1|Add0~50\);

-- Location: FF_X5_Y1_N40
\D1|counter[13]\ : dffeas
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
	q => \D1|counter\(13));

-- Location: LABCELL_X5_Y1_N42
\D1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~53_sumout\ = SUM(( \D1|counter\(14) ) + ( GND ) + ( \D1|Add0~50\ ))
-- \D1|Add0~54\ = CARRY(( \D1|counter\(14) ) + ( GND ) + ( \D1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(14),
	cin => \D1|Add0~50\,
	sumout => \D1|Add0~53_sumout\,
	cout => \D1|Add0~54\);

-- Location: FF_X5_Y1_N43
\D1|counter[14]\ : dffeas
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
	q => \D1|counter\(14));

-- Location: LABCELL_X5_Y1_N45
\D1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Add0~57_sumout\ = SUM(( \D1|counter\(15) ) + ( GND ) + ( \D1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D1|ALT_INV_counter\(15),
	cin => \D1|Add0~54\,
	sumout => \D1|Add0~57_sumout\);

-- Location: FF_X5_Y1_N46
\D1|counter[15]\ : dffeas
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
	q => \D1|counter\(15));

-- Location: LABCELL_X6_Y1_N6
\D1|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~7_combout\ = ( \D1|counter\(14) & ( \D1|counter\(13) & ( (\D1|counter\(12) & (\D1|counter\(15) & \D1|counter\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_counter\(12),
	datac => \D1|ALT_INV_counter\(15),
	datad => \D1|ALT_INV_counter\(0),
	datae => \D1|ALT_INV_counter\(14),
	dataf => \D1|ALT_INV_counter\(13),
	combout => \D1|outb~7_combout\);

-- Location: LABCELL_X5_Y1_N54
\D1|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~6_combout\ = ( \D1|counter\(9) & ( \D1|counter\(8) & ( (\D1|counter\(6) & (\D1|counter\(10) & (\D1|counter\(7) & \D1|counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_counter\(6),
	datab => \D1|ALT_INV_counter\(10),
	datac => \D1|ALT_INV_counter\(7),
	datad => \D1|ALT_INV_counter\(5),
	datae => \D1|ALT_INV_counter\(9),
	dataf => \D1|ALT_INV_counter\(8),
	combout => \D1|outb~6_combout\);

-- Location: LABCELL_X6_Y1_N30
\D1|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~5_combout\ = ( \D1|counter\(2) & ( (\D1|counter\(3) & (\D1|counter\(4) & \D1|counter\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|ALT_INV_counter\(3),
	datac => \D1|ALT_INV_counter\(4),
	datad => \D1|ALT_INV_counter\(1),
	datae => \D1|ALT_INV_counter\(2),
	combout => \D1|outb~5_combout\);

-- Location: LABCELL_X5_Y1_N48
\D1|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~8_combout\ = ( \D1|outb~6_combout\ & ( \D1|outb~5_combout\ & ( (!\D1|outb~7_combout\) # ((!\D1|counter\(11)) # (!\D1|intermediate~0_combout\ $ (!\clk_button~input_o\))) ) ) ) # ( !\D1|outb~6_combout\ & ( \D1|outb~5_combout\ ) ) # ( 
-- \D1|outb~6_combout\ & ( !\D1|outb~5_combout\ ) ) # ( !\D1|outb~6_combout\ & ( !\D1|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_intermediate~0_combout\,
	datab => \ALT_INV_clk_button~input_o\,
	datac => \D1|ALT_INV_outb~7_combout\,
	datad => \D1|ALT_INV_counter\(11),
	datae => \D1|ALT_INV_outb~6_combout\,
	dataf => \D1|ALT_INV_outb~5_combout\,
	combout => \D1|outb~8_combout\);

-- Location: LABCELL_X6_Y1_N51
\D1|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~3_combout\ = ( \D1|outb~1_combout\ & ( \D1|outb~2_combout\ & ( (!\D1|intermediate~0_combout\ & !\D1|outb~8_combout\) ) ) ) # ( !\D1|outb~1_combout\ & ( \D1|outb~2_combout\ & ( (\D1|outb~8_combout\) # (\D1|intermediate~0_combout\) ) ) ) # ( 
-- \D1|outb~1_combout\ & ( !\D1|outb~2_combout\ & ( (!\D1|intermediate~0_combout\) # (\D1|outb~8_combout\) ) ) ) # ( !\D1|outb~1_combout\ & ( !\D1|outb~2_combout\ & ( (\D1|intermediate~0_combout\ & !\D1|outb~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100101110111011101101110111011101111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_intermediate~0_combout\,
	datab => \D1|ALT_INV_outb~8_combout\,
	datae => \D1|ALT_INV_outb~1_combout\,
	dataf => \D1|ALT_INV_outb~2_combout\,
	combout => \D1|outb~3_combout\);

-- Location: FF_X6_Y1_N53
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

-- Location: LABCELL_X6_Y1_N27
\D1|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|outb~2_combout\ = ( \D1|outb~1_combout\ & ( \D1|outb~_emulated_q\ & ( (\clk_button~input_o\ & !\rst_db~input_o\) ) ) ) # ( !\D1|outb~1_combout\ & ( \D1|outb~_emulated_q\ & ( (\rst_db~input_o\) # (\clk_button~input_o\) ) ) ) # ( \D1|outb~1_combout\ & ( 
-- !\D1|outb~_emulated_q\ & ( (\rst_db~input_o\) # (\clk_button~input_o\) ) ) ) # ( !\D1|outb~1_combout\ & ( !\D1|outb~_emulated_q\ & ( (\clk_button~input_o\ & !\rst_db~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111101011111010111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_button~input_o\,
	datac => \ALT_INV_rst_db~input_o\,
	datae => \D1|ALT_INV_outb~1_combout\,
	dataf => \D1|ALT_INV_outb~_emulated_q\,
	combout => \D1|outb~2_combout\);

-- Location: IOIBUF_X34_Y0_N1
\escolha[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escolha(2),
	o => \escolha[2]~input_o\);

-- Location: LABCELL_X12_Y1_N15
\D5|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~1_combout\ = ( \D5|outb~1_combout\ & ( (\rst_db~input_o\) # (\escolha[2]~input_o\) ) ) # ( !\D5|outb~1_combout\ & ( (\escolha[2]~input_o\ & !\rst_db~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[2]~input_o\,
	datad => \ALT_INV_rst_db~input_o\,
	dataf => \D5|ALT_INV_outb~1_combout\,
	combout => \D5|outb~1_combout\);

-- Location: LABCELL_X12_Y1_N57
\D5|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|intermediate~1_combout\ = ( \D5|outb~1_combout\ & ( !\escolha[2]~input_o\ ) ) # ( !\D5|outb~1_combout\ & ( \escolha[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_escolha[2]~input_o\,
	dataf => \D5|ALT_INV_outb~1_combout\,
	combout => \D5|intermediate~1_combout\);

-- Location: FF_X12_Y1_N58
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

-- Location: LABCELL_X12_Y1_N42
\D5|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|intermediate~0_combout\ = ( \D5|intermediate~_emulated_q\ & ( (!\rst_db~input_o\ & (\escolha[2]~input_o\)) # (\rst_db~input_o\ & ((!\D5|outb~1_combout\))) ) ) # ( !\D5|intermediate~_emulated_q\ & ( (!\rst_db~input_o\ & (\escolha[2]~input_o\)) # 
-- (\rst_db~input_o\ & ((\D5|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_escolha[2]~input_o\,
	datad => \D5|ALT_INV_outb~1_combout\,
	dataf => \D5|ALT_INV_intermediate~_emulated_q\,
	combout => \D5|intermediate~0_combout\);

-- Location: LABCELL_X7_Y1_N0
\D5|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~53_sumout\ = SUM(( \D5|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D5|Add0~54\ = CARRY(( \D5|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D5|Add0~53_sumout\,
	cout => \D5|Add0~54\);

-- Location: LABCELL_X7_Y1_N51
\D5|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|always0~0_combout\ = ( \D5|intermediate~0_combout\ & ( !\escolha[2]~input_o\ ) ) # ( !\D5|intermediate~0_combout\ & ( \escolha[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[2]~input_o\,
	dataf => \D5|ALT_INV_intermediate~0_combout\,
	combout => \D5|always0~0_combout\);

-- Location: FF_X7_Y1_N1
\D5|counter[0]\ : dffeas
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
	q => \D5|counter\(0));

-- Location: LABCELL_X7_Y1_N3
\D5|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~49_sumout\ = SUM(( \D5|counter\(1) ) + ( GND ) + ( \D5|Add0~54\ ))
-- \D5|Add0~50\ = CARRY(( \D5|counter\(1) ) + ( GND ) + ( \D5|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(1),
	cin => \D5|Add0~54\,
	sumout => \D5|Add0~49_sumout\,
	cout => \D5|Add0~50\);

-- Location: FF_X7_Y1_N4
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

-- Location: LABCELL_X7_Y1_N6
\D5|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~45_sumout\ = SUM(( \D5|counter\(2) ) + ( GND ) + ( \D5|Add0~50\ ))
-- \D5|Add0~46\ = CARRY(( \D5|counter\(2) ) + ( GND ) + ( \D5|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(2),
	cin => \D5|Add0~50\,
	sumout => \D5|Add0~45_sumout\,
	cout => \D5|Add0~46\);

-- Location: FF_X7_Y1_N8
\D5|counter[2]\ : dffeas
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
	q => \D5|counter\(2));

-- Location: LABCELL_X7_Y1_N9
\D5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~17_sumout\ = SUM(( \D5|counter\(3) ) + ( GND ) + ( \D5|Add0~46\ ))
-- \D5|Add0~18\ = CARRY(( \D5|counter\(3) ) + ( GND ) + ( \D5|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(3),
	cin => \D5|Add0~46\,
	sumout => \D5|Add0~17_sumout\,
	cout => \D5|Add0~18\);

-- Location: FF_X7_Y1_N10
\D5|counter[3]\ : dffeas
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
	q => \D5|counter\(3));

-- Location: LABCELL_X7_Y1_N12
\D5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~13_sumout\ = SUM(( \D5|counter\(4) ) + ( GND ) + ( \D5|Add0~18\ ))
-- \D5|Add0~14\ = CARRY(( \D5|counter\(4) ) + ( GND ) + ( \D5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(4),
	cin => \D5|Add0~18\,
	sumout => \D5|Add0~13_sumout\,
	cout => \D5|Add0~14\);

-- Location: FF_X7_Y1_N14
\D5|counter[4]\ : dffeas
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
	q => \D5|counter\(4));

-- Location: LABCELL_X7_Y1_N15
\D5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~9_sumout\ = SUM(( \D5|counter\(5) ) + ( GND ) + ( \D5|Add0~14\ ))
-- \D5|Add0~10\ = CARRY(( \D5|counter\(5) ) + ( GND ) + ( \D5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(5),
	cin => \D5|Add0~14\,
	sumout => \D5|Add0~9_sumout\,
	cout => \D5|Add0~10\);

-- Location: FF_X7_Y1_N17
\D5|counter[5]\ : dffeas
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
	q => \D5|counter\(5));

-- Location: LABCELL_X7_Y1_N18
\D5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~5_sumout\ = SUM(( \D5|counter\(6) ) + ( GND ) + ( \D5|Add0~10\ ))
-- \D5|Add0~6\ = CARRY(( \D5|counter\(6) ) + ( GND ) + ( \D5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(6),
	cin => \D5|Add0~10\,
	sumout => \D5|Add0~5_sumout\,
	cout => \D5|Add0~6\);

-- Location: FF_X7_Y1_N20
\D5|counter[6]\ : dffeas
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
	q => \D5|counter\(6));

-- Location: LABCELL_X7_Y1_N48
\D5|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~5_combout\ = ( \D5|counter\(5) & ( (\D5|counter\(4) & (\D5|counter\(6) & \D5|counter\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_counter\(4),
	datac => \D5|ALT_INV_counter\(6),
	datad => \D5|ALT_INV_counter\(3),
	dataf => \D5|ALT_INV_counter\(5),
	combout => \D5|outb~5_combout\);

-- Location: LABCELL_X7_Y1_N21
\D5|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~41_sumout\ = SUM(( \D5|counter\(7) ) + ( GND ) + ( \D5|Add0~6\ ))
-- \D5|Add0~42\ = CARRY(( \D5|counter\(7) ) + ( GND ) + ( \D5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(7),
	cin => \D5|Add0~6\,
	sumout => \D5|Add0~41_sumout\,
	cout => \D5|Add0~42\);

-- Location: FF_X7_Y1_N22
\D5|counter[7]\ : dffeas
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
	q => \D5|counter\(7));

-- Location: LABCELL_X7_Y1_N24
\D5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~37_sumout\ = SUM(( \D5|counter\(8) ) + ( GND ) + ( \D5|Add0~42\ ))
-- \D5|Add0~38\ = CARRY(( \D5|counter\(8) ) + ( GND ) + ( \D5|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(8),
	cin => \D5|Add0~42\,
	sumout => \D5|Add0~37_sumout\,
	cout => \D5|Add0~38\);

-- Location: FF_X7_Y1_N26
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

-- Location: LABCELL_X7_Y1_N27
\D5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~33_sumout\ = SUM(( \D5|counter\(9) ) + ( GND ) + ( \D5|Add0~38\ ))
-- \D5|Add0~34\ = CARRY(( \D5|counter\(9) ) + ( GND ) + ( \D5|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(9),
	cin => \D5|Add0~38\,
	sumout => \D5|Add0~33_sumout\,
	cout => \D5|Add0~34\);

-- Location: FF_X7_Y1_N28
\D5|counter[9]\ : dffeas
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
	q => \D5|counter\(9));

-- Location: LABCELL_X7_Y1_N30
\D5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~29_sumout\ = SUM(( \D5|counter\(10) ) + ( GND ) + ( \D5|Add0~34\ ))
-- \D5|Add0~30\ = CARRY(( \D5|counter\(10) ) + ( GND ) + ( \D5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(10),
	cin => \D5|Add0~34\,
	sumout => \D5|Add0~29_sumout\,
	cout => \D5|Add0~30\);

-- Location: FF_X7_Y1_N32
\D5|counter[10]\ : dffeas
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
	q => \D5|counter\(10));

-- Location: LABCELL_X7_Y1_N33
\D5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~25_sumout\ = SUM(( \D5|counter\(11) ) + ( GND ) + ( \D5|Add0~30\ ))
-- \D5|Add0~26\ = CARRY(( \D5|counter\(11) ) + ( GND ) + ( \D5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(11),
	cin => \D5|Add0~30\,
	sumout => \D5|Add0~25_sumout\,
	cout => \D5|Add0~26\);

-- Location: FF_X7_Y1_N34
\D5|counter[11]\ : dffeas
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
	q => \D5|counter\(11));

-- Location: LABCELL_X7_Y1_N36
\D5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~21_sumout\ = SUM(( \D5|counter\(12) ) + ( GND ) + ( \D5|Add0~26\ ))
-- \D5|Add0~22\ = CARRY(( \D5|counter\(12) ) + ( GND ) + ( \D5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(12),
	cin => \D5|Add0~26\,
	sumout => \D5|Add0~21_sumout\,
	cout => \D5|Add0~22\);

-- Location: FF_X7_Y1_N38
\D5|counter[12]\ : dffeas
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
	q => \D5|counter\(12));

-- Location: LABCELL_X7_Y1_N39
\D5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~1_sumout\ = SUM(( \D5|counter\(13) ) + ( GND ) + ( \D5|Add0~22\ ))
-- \D5|Add0~2\ = CARRY(( \D5|counter\(13) ) + ( GND ) + ( \D5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(13),
	cin => \D5|Add0~22\,
	sumout => \D5|Add0~1_sumout\,
	cout => \D5|Add0~2\);

-- Location: FF_X7_Y1_N41
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

-- Location: LABCELL_X6_Y1_N57
\D5|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~6_combout\ = ( \D5|counter\(8) & ( \D5|counter\(7) & ( (\D5|counter\(9) & (\D5|counter\(10) & (\D5|counter\(12) & \D5|counter\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_counter\(9),
	datab => \D5|ALT_INV_counter\(10),
	datac => \D5|ALT_INV_counter\(12),
	datad => \D5|ALT_INV_counter\(11),
	datae => \D5|ALT_INV_counter\(8),
	dataf => \D5|ALT_INV_counter\(7),
	combout => \D5|outb~6_combout\);

-- Location: LABCELL_X7_Y1_N42
\D5|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~61_sumout\ = SUM(( \D5|counter\(14) ) + ( GND ) + ( \D5|Add0~2\ ))
-- \D5|Add0~62\ = CARRY(( \D5|counter\(14) ) + ( GND ) + ( \D5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(14),
	cin => \D5|Add0~2\,
	sumout => \D5|Add0~61_sumout\,
	cout => \D5|Add0~62\);

-- Location: FF_X7_Y1_N44
\D5|counter[14]\ : dffeas
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
	q => \D5|counter\(14));

-- Location: LABCELL_X7_Y1_N45
\D5|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|Add0~57_sumout\ = SUM(( \D5|counter\(15) ) + ( GND ) + ( \D5|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D5|ALT_INV_counter\(15),
	cin => \D5|Add0~62\,
	sumout => \D5|Add0~57_sumout\);

-- Location: FF_X7_Y1_N47
\D5|counter[15]\ : dffeas
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
	q => \D5|counter\(15));

-- Location: LABCELL_X7_Y2_N6
\D5|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~7_combout\ = ( \D5|counter\(14) & ( \D5|counter\(1) & ( (\D5|counter\(0) & (\D5|counter\(2) & \D5|counter\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_counter\(0),
	datac => \D5|ALT_INV_counter\(2),
	datad => \D5|ALT_INV_counter\(15),
	datae => \D5|ALT_INV_counter\(14),
	dataf => \D5|ALT_INV_counter\(1),
	combout => \D5|outb~7_combout\);

-- Location: LABCELL_X7_Y1_N54
\D5|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~8_combout\ = ( \D5|outb~6_combout\ & ( \D5|outb~7_combout\ & ( (!\D5|outb~5_combout\) # ((!\D5|counter\(13)) # (!\D5|intermediate~0_combout\ $ (!\escolha[2]~input_o\))) ) ) ) # ( !\D5|outb~6_combout\ & ( \D5|outb~7_combout\ ) ) # ( 
-- \D5|outb~6_combout\ & ( !\D5|outb~7_combout\ ) ) # ( !\D5|outb~6_combout\ & ( !\D5|outb~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_intermediate~0_combout\,
	datab => \D5|ALT_INV_outb~5_combout\,
	datac => \ALT_INV_escolha[2]~input_o\,
	datad => \D5|ALT_INV_counter\(13),
	datae => \D5|ALT_INV_outb~6_combout\,
	dataf => \D5|ALT_INV_outb~7_combout\,
	combout => \D5|outb~8_combout\);

-- Location: LABCELL_X12_Y1_N30
\D5|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~3_combout\ = ( \D5|intermediate~0_combout\ & ( \D5|outb~8_combout\ & ( !\D5|outb~1_combout\ $ (!\D5|outb~2_combout\) ) ) ) # ( !\D5|intermediate~0_combout\ & ( \D5|outb~8_combout\ & ( !\D5|outb~1_combout\ $ (!\D5|outb~2_combout\) ) ) ) # ( 
-- \D5|intermediate~0_combout\ & ( !\D5|outb~8_combout\ & ( !\D5|outb~1_combout\ ) ) ) # ( !\D5|intermediate~0_combout\ & ( !\D5|outb~8_combout\ & ( \D5|outb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~1_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_intermediate~0_combout\,
	dataf => \D5|ALT_INV_outb~8_combout\,
	combout => \D5|outb~3_combout\);

-- Location: FF_X12_Y1_N32
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

-- Location: LABCELL_X12_Y1_N12
\D5|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5|outb~2_combout\ = ( \D5|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\escolha[2]~input_o\)) # (\rst_db~input_o\ & ((!\D5|outb~1_combout\))) ) ) # ( !\D5|outb~_emulated_q\ & ( (!\rst_db~input_o\ & (\escolha[2]~input_o\)) # (\rst_db~input_o\ & 
-- ((\D5|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101011100010111000101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[2]~input_o\,
	datab => \D5|ALT_INV_outb~1_combout\,
	datac => \ALT_INV_rst_db~input_o\,
	dataf => \D5|ALT_INV_outb~_emulated_q\,
	combout => \D5|outb~2_combout\);

-- Location: IOIBUF_X34_Y0_N18
\escolha[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escolha(3),
	o => \escolha[3]~input_o\);

-- Location: LABCELL_X12_Y1_N48
\D6|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~1_combout\ = ( \rst_db~input_o\ & ( \D6|outb~1_combout\ ) ) # ( !\rst_db~input_o\ & ( \D6|outb~1_combout\ & ( \escolha[3]~input_o\ ) ) ) # ( !\rst_db~input_o\ & ( !\D6|outb~1_combout\ & ( \escolha[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_escolha[3]~input_o\,
	datae => \ALT_INV_rst_db~input_o\,
	dataf => \D6|ALT_INV_outb~1_combout\,
	combout => \D6|outb~1_combout\);

-- Location: LABCELL_X12_Y1_N54
\D6|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|intermediate~1_combout\ = !\D6|outb~1_combout\ $ (!\escolha[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~1_combout\,
	datad => \ALT_INV_escolha[3]~input_o\,
	combout => \D6|intermediate~1_combout\);

-- Location: FF_X12_Y1_N56
\D6|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|intermediate~1_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|intermediate~_emulated_q\);

-- Location: LABCELL_X12_Y1_N39
\D6|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|intermediate~0_combout\ = ( \D6|intermediate~_emulated_q\ & ( \D6|outb~1_combout\ & ( (!\rst_db~input_o\ & \escolha[3]~input_o\) ) ) ) # ( !\D6|intermediate~_emulated_q\ & ( \D6|outb~1_combout\ & ( (\escolha[3]~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D6|intermediate~_emulated_q\ & ( !\D6|outb~1_combout\ & ( (\escolha[3]~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D6|intermediate~_emulated_q\ & ( !\D6|outb~1_combout\ & ( (!\rst_db~input_o\ & \escolha[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100111111001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_escolha[3]~input_o\,
	datae => \D6|ALT_INV_intermediate~_emulated_q\,
	dataf => \D6|ALT_INV_outb~1_combout\,
	combout => \D6|intermediate~0_combout\);

-- Location: LABCELL_X12_Y2_N0
\D6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~57_sumout\ = SUM(( \D6|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D6|Add0~58\ = CARRY(( \D6|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D6|Add0~57_sumout\,
	cout => \D6|Add0~58\);

-- Location: LABCELL_X12_Y2_N57
\D6|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|always0~0_combout\ = ( \D6|intermediate~0_combout\ & ( !\escolha[3]~input_o\ ) ) # ( !\D6|intermediate~0_combout\ & ( \escolha[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[3]~input_o\,
	dataf => \D6|ALT_INV_intermediate~0_combout\,
	combout => \D6|always0~0_combout\);

-- Location: FF_X12_Y2_N1
\D6|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~57_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(0));

-- Location: LABCELL_X12_Y2_N3
\D6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~45_sumout\ = SUM(( \D6|counter\(1) ) + ( GND ) + ( \D6|Add0~58\ ))
-- \D6|Add0~46\ = CARRY(( \D6|counter\(1) ) + ( GND ) + ( \D6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(1),
	cin => \D6|Add0~58\,
	sumout => \D6|Add0~45_sumout\,
	cout => \D6|Add0~46\);

-- Location: FF_X12_Y2_N4
\D6|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~45_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(1));

-- Location: LABCELL_X12_Y2_N6
\D6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~25_sumout\ = SUM(( \D6|counter\(2) ) + ( GND ) + ( \D6|Add0~46\ ))
-- \D6|Add0~26\ = CARRY(( \D6|counter\(2) ) + ( GND ) + ( \D6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(2),
	cin => \D6|Add0~46\,
	sumout => \D6|Add0~25_sumout\,
	cout => \D6|Add0~26\);

-- Location: FF_X12_Y2_N7
\D6|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~25_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(2));

-- Location: LABCELL_X12_Y2_N9
\D6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~29_sumout\ = SUM(( \D6|counter\(3) ) + ( GND ) + ( \D6|Add0~26\ ))
-- \D6|Add0~30\ = CARRY(( \D6|counter\(3) ) + ( GND ) + ( \D6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(3),
	cin => \D6|Add0~26\,
	sumout => \D6|Add0~29_sumout\,
	cout => \D6|Add0~30\);

-- Location: FF_X12_Y2_N10
\D6|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~29_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(3));

-- Location: LABCELL_X12_Y2_N12
\D6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~33_sumout\ = SUM(( \D6|counter\(4) ) + ( GND ) + ( \D6|Add0~30\ ))
-- \D6|Add0~34\ = CARRY(( \D6|counter\(4) ) + ( GND ) + ( \D6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(4),
	cin => \D6|Add0~30\,
	sumout => \D6|Add0~33_sumout\,
	cout => \D6|Add0~34\);

-- Location: FF_X12_Y2_N13
\D6|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~33_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(4));

-- Location: LABCELL_X12_Y2_N15
\D6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~37_sumout\ = SUM(( \D6|counter\(5) ) + ( GND ) + ( \D6|Add0~34\ ))
-- \D6|Add0~38\ = CARRY(( \D6|counter\(5) ) + ( GND ) + ( \D6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(5),
	cin => \D6|Add0~34\,
	sumout => \D6|Add0~37_sumout\,
	cout => \D6|Add0~38\);

-- Location: FF_X12_Y2_N16
\D6|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~37_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(5));

-- Location: LABCELL_X12_Y2_N18
\D6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~49_sumout\ = SUM(( \D6|counter\(6) ) + ( GND ) + ( \D6|Add0~38\ ))
-- \D6|Add0~50\ = CARRY(( \D6|counter\(6) ) + ( GND ) + ( \D6|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(6),
	cin => \D6|Add0~38\,
	sumout => \D6|Add0~49_sumout\,
	cout => \D6|Add0~50\);

-- Location: FF_X12_Y2_N19
\D6|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~49_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(6));

-- Location: LABCELL_X12_Y2_N21
\D6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~41_sumout\ = SUM(( \D6|counter\(7) ) + ( GND ) + ( \D6|Add0~50\ ))
-- \D6|Add0~42\ = CARRY(( \D6|counter\(7) ) + ( GND ) + ( \D6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(7),
	cin => \D6|Add0~50\,
	sumout => \D6|Add0~41_sumout\,
	cout => \D6|Add0~42\);

-- Location: FF_X12_Y2_N22
\D6|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~41_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(7));

-- Location: LABCELL_X12_Y2_N24
\D6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~21_sumout\ = SUM(( \D6|counter\(8) ) + ( GND ) + ( \D6|Add0~42\ ))
-- \D6|Add0~22\ = CARRY(( \D6|counter\(8) ) + ( GND ) + ( \D6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(8),
	cin => \D6|Add0~42\,
	sumout => \D6|Add0~21_sumout\,
	cout => \D6|Add0~22\);

-- Location: FF_X12_Y2_N25
\D6|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~21_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(8));

-- Location: LABCELL_X12_Y2_N27
\D6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~9_sumout\ = SUM(( \D6|counter\(9) ) + ( GND ) + ( \D6|Add0~22\ ))
-- \D6|Add0~10\ = CARRY(( \D6|counter\(9) ) + ( GND ) + ( \D6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(9),
	cin => \D6|Add0~22\,
	sumout => \D6|Add0~9_sumout\,
	cout => \D6|Add0~10\);

-- Location: FF_X12_Y2_N29
\D6|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~9_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(9));

-- Location: LABCELL_X12_Y2_N30
\D6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~13_sumout\ = SUM(( \D6|counter\(10) ) + ( GND ) + ( \D6|Add0~10\ ))
-- \D6|Add0~14\ = CARRY(( \D6|counter\(10) ) + ( GND ) + ( \D6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(10),
	cin => \D6|Add0~10\,
	sumout => \D6|Add0~13_sumout\,
	cout => \D6|Add0~14\);

-- Location: FF_X12_Y2_N32
\D6|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~13_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(10));

-- Location: LABCELL_X12_Y2_N33
\D6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~53_sumout\ = SUM(( \D6|counter\(11) ) + ( GND ) + ( \D6|Add0~14\ ))
-- \D6|Add0~54\ = CARRY(( \D6|counter\(11) ) + ( GND ) + ( \D6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(11),
	cin => \D6|Add0~14\,
	sumout => \D6|Add0~53_sumout\,
	cout => \D6|Add0~54\);

-- Location: FF_X12_Y2_N34
\D6|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~53_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(11));

-- Location: LABCELL_X12_Y2_N36
\D6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~17_sumout\ = SUM(( \D6|counter\(12) ) + ( GND ) + ( \D6|Add0~54\ ))
-- \D6|Add0~18\ = CARRY(( \D6|counter\(12) ) + ( GND ) + ( \D6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(12),
	cin => \D6|Add0~54\,
	sumout => \D6|Add0~17_sumout\,
	cout => \D6|Add0~18\);

-- Location: FF_X12_Y2_N38
\D6|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~17_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(12));

-- Location: LABCELL_X12_Y2_N39
\D6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~5_sumout\ = SUM(( \D6|counter\(13) ) + ( GND ) + ( \D6|Add0~18\ ))
-- \D6|Add0~6\ = CARRY(( \D6|counter\(13) ) + ( GND ) + ( \D6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(13),
	cin => \D6|Add0~18\,
	sumout => \D6|Add0~5_sumout\,
	cout => \D6|Add0~6\);

-- Location: FF_X12_Y2_N41
\D6|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~5_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(13));

-- Location: LABCELL_X12_Y2_N42
\D6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~1_sumout\ = SUM(( \D6|counter\(14) ) + ( GND ) + ( \D6|Add0~6\ ))
-- \D6|Add0~2\ = CARRY(( \D6|counter\(14) ) + ( GND ) + ( \D6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(14),
	cin => \D6|Add0~6\,
	sumout => \D6|Add0~1_sumout\,
	cout => \D6|Add0~2\);

-- Location: FF_X12_Y2_N44
\D6|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~1_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(14));

-- Location: LABCELL_X12_Y2_N54
\D6|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~5_combout\ = ( \D6|counter\(13) & ( (\D6|counter\(10) & (\D6|counter\(12) & \D6|counter\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D6|ALT_INV_counter\(10),
	datac => \D6|ALT_INV_counter\(12),
	datad => \D6|ALT_INV_counter\(9),
	dataf => \D6|ALT_INV_counter\(13),
	combout => \D6|outb~5_combout\);

-- Location: LABCELL_X12_Y2_N45
\D6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|Add0~61_sumout\ = SUM(( \D6|counter\(15) ) + ( GND ) + ( \D6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D6|ALT_INV_counter\(15),
	cin => \D6|Add0~2\,
	sumout => \D6|Add0~61_sumout\);

-- Location: FF_X12_Y2_N46
\D6|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|Add0~61_sumout\,
	clrn => \rst_db~input_o\,
	sclr => \D6|always0~0_combout\,
	ena => \D6|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|counter\(15));

-- Location: MLABCELL_X13_Y2_N36
\D6|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~7_combout\ = ( \D6|counter\(11) & ( \D6|counter\(1) & ( (\D6|counter\(0) & (\D6|counter\(15) & \D6|counter\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D6|ALT_INV_counter\(0),
	datac => \D6|ALT_INV_counter\(15),
	datad => \D6|ALT_INV_counter\(6),
	datae => \D6|ALT_INV_counter\(11),
	dataf => \D6|ALT_INV_counter\(1),
	combout => \D6|outb~7_combout\);

-- Location: MLABCELL_X13_Y2_N24
\D6|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~6_combout\ = ( \D6|counter\(2) & ( \D6|counter\(3) & ( (\D6|counter\(7) & (\D6|counter\(5) & (\D6|counter\(4) & \D6|counter\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_counter\(7),
	datab => \D6|ALT_INV_counter\(5),
	datac => \D6|ALT_INV_counter\(4),
	datad => \D6|ALT_INV_counter\(8),
	datae => \D6|ALT_INV_counter\(2),
	dataf => \D6|ALT_INV_counter\(3),
	combout => \D6|outb~6_combout\);

-- Location: LABCELL_X12_Y2_N48
\D6|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~8_combout\ = ( \D6|outb~7_combout\ & ( \D6|outb~6_combout\ & ( (!\D6|counter\(14)) # ((!\D6|outb~5_combout\) # (!\escolha[3]~input_o\ $ (!\D6|intermediate~0_combout\))) ) ) ) # ( !\D6|outb~7_combout\ & ( \D6|outb~6_combout\ ) ) # ( 
-- \D6|outb~7_combout\ & ( !\D6|outb~6_combout\ ) ) # ( !\D6|outb~7_combout\ & ( !\D6|outb~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[3]~input_o\,
	datab => \D6|ALT_INV_counter\(14),
	datac => \D6|ALT_INV_outb~5_combout\,
	datad => \D6|ALT_INV_intermediate~0_combout\,
	datae => \D6|ALT_INV_outb~7_combout\,
	dataf => \D6|ALT_INV_outb~6_combout\,
	combout => \D6|outb~8_combout\);

-- Location: LABCELL_X12_Y1_N24
\D6|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~3_combout\ = ( \D6|outb~8_combout\ & ( !\D6|outb~1_combout\ $ (!\D6|outb~2_combout\) ) ) # ( !\D6|outb~8_combout\ & ( !\D6|outb~1_combout\ $ (!\D6|intermediate~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~1_combout\,
	datab => \D6|ALT_INV_intermediate~0_combout\,
	datad => \D6|ALT_INV_outb~2_combout\,
	dataf => \D6|ALT_INV_outb~8_combout\,
	combout => \D6|outb~3_combout\);

-- Location: FF_X12_Y1_N26
\D6|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \D6|outb~3_combout\,
	clrn => \rst_db~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6|outb~_emulated_q\);

-- Location: LABCELL_X12_Y1_N21
\D6|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D6|outb~2_combout\ = ( \D6|outb~_emulated_q\ & ( (!\rst_db~input_o\ & ((\escolha[3]~input_o\))) # (\rst_db~input_o\ & (!\D6|outb~1_combout\)) ) ) # ( !\D6|outb~_emulated_q\ & ( (!\rst_db~input_o\ & ((\escolha[3]~input_o\))) # (\rst_db~input_o\ & 
-- (\D6|outb~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D6|ALT_INV_outb~1_combout\,
	datac => \ALT_INV_rst_db~input_o\,
	datad => \ALT_INV_escolha[3]~input_o\,
	dataf => \D6|ALT_INV_outb~_emulated_q\,
	combout => \D6|outb~2_combout\);

-- Location: IOIBUF_X33_Y0_N58
\escolha[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escolha(1),
	o => \escolha[1]~input_o\);

-- Location: LABCELL_X12_Y1_N9
\D4|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~1_combout\ = ( \rst_db~input_o\ & ( \D4|outb~1_combout\ ) ) # ( !\rst_db~input_o\ & ( \D4|outb~1_combout\ & ( \escolha[1]~input_o\ ) ) ) # ( !\rst_db~input_o\ & ( !\D4|outb~1_combout\ & ( \escolha[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[1]~input_o\,
	datae => \ALT_INV_rst_db~input_o\,
	dataf => \D4|ALT_INV_outb~1_combout\,
	combout => \D4|outb~1_combout\);

-- Location: LABCELL_X12_Y1_N27
\D4|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|intermediate~1_combout\ = ( \D4|outb~1_combout\ & ( !\escolha[1]~input_o\ ) ) # ( !\D4|outb~1_combout\ & ( \escolha[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_escolha[1]~input_o\,
	dataf => \D4|ALT_INV_outb~1_combout\,
	combout => \D4|intermediate~1_combout\);

-- Location: FF_X12_Y1_N28
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

-- Location: LABCELL_X12_Y1_N0
\D4|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|intermediate~0_combout\ = ( \D4|intermediate~_emulated_q\ & ( (!\rst_db~input_o\ & (\escolha[1]~input_o\)) # (\rst_db~input_o\ & ((!\D4|outb~1_combout\))) ) ) # ( !\D4|intermediate~_emulated_q\ & ( (!\rst_db~input_o\ & (\escolha[1]~input_o\)) # 
-- (\rst_db~input_o\ & ((\D4|outb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_escolha[1]~input_o\,
	datad => \D4|ALT_INV_outb~1_combout\,
	dataf => \D4|ALT_INV_intermediate~_emulated_q\,
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

-- Location: MLABCELL_X13_Y1_N51
\D4|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|always0~0_combout\ = ( \D4|intermediate~0_combout\ & ( !\escolha[1]~input_o\ ) ) # ( !\D4|intermediate~0_combout\ & ( \escolha[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_escolha[1]~input_o\,
	dataf => \D4|ALT_INV_intermediate~0_combout\,
	combout => \D4|always0~0_combout\);

-- Location: FF_X13_Y1_N1
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
\D4|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~45_sumout\ = SUM(( \D4|counter\(1) ) + ( GND ) + ( \D4|Add0~34\ ))
-- \D4|Add0~46\ = CARRY(( \D4|counter\(1) ) + ( GND ) + ( \D4|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(1),
	cin => \D4|Add0~34\,
	sumout => \D4|Add0~45_sumout\,
	cout => \D4|Add0~46\);

-- Location: FF_X13_Y1_N5
\D4|counter[1]\ : dffeas
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
	q => \D4|counter\(1));

-- Location: MLABCELL_X13_Y1_N6
\D4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~17_sumout\ = SUM(( \D4|counter\(2) ) + ( GND ) + ( \D4|Add0~46\ ))
-- \D4|Add0~18\ = CARRY(( \D4|counter\(2) ) + ( GND ) + ( \D4|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(2),
	cin => \D4|Add0~46\,
	sumout => \D4|Add0~17_sumout\,
	cout => \D4|Add0~18\);

-- Location: FF_X13_Y1_N7
\D4|counter[2]\ : dffeas
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
	q => \D4|counter\(2));

-- Location: MLABCELL_X13_Y1_N9
\D4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~13_sumout\ = SUM(( \D4|counter\(3) ) + ( GND ) + ( \D4|Add0~18\ ))
-- \D4|Add0~14\ = CARRY(( \D4|counter\(3) ) + ( GND ) + ( \D4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(3),
	cin => \D4|Add0~18\,
	sumout => \D4|Add0~13_sumout\,
	cout => \D4|Add0~14\);

-- Location: FF_X13_Y1_N10
\D4|counter[3]\ : dffeas
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
	q => \D4|counter\(3));

-- Location: MLABCELL_X13_Y1_N12
\D4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~9_sumout\ = SUM(( \D4|counter\(4) ) + ( GND ) + ( \D4|Add0~14\ ))
-- \D4|Add0~10\ = CARRY(( \D4|counter\(4) ) + ( GND ) + ( \D4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(4),
	cin => \D4|Add0~14\,
	sumout => \D4|Add0~9_sumout\,
	cout => \D4|Add0~10\);

-- Location: FF_X13_Y1_N13
\D4|counter[4]\ : dffeas
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
	q => \D4|counter\(4));

-- Location: MLABCELL_X13_Y1_N15
\D4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~5_sumout\ = SUM(( \D4|counter\(5) ) + ( GND ) + ( \D4|Add0~10\ ))
-- \D4|Add0~6\ = CARRY(( \D4|counter\(5) ) + ( GND ) + ( \D4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(5),
	cin => \D4|Add0~10\,
	sumout => \D4|Add0~5_sumout\,
	cout => \D4|Add0~6\);

-- Location: FF_X13_Y1_N16
\D4|counter[5]\ : dffeas
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
	q => \D4|counter\(5));

-- Location: MLABCELL_X13_Y1_N18
\D4|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~41_sumout\ = SUM(( \D4|counter\(6) ) + ( GND ) + ( \D4|Add0~6\ ))
-- \D4|Add0~42\ = CARRY(( \D4|counter\(6) ) + ( GND ) + ( \D4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(6),
	cin => \D4|Add0~6\,
	sumout => \D4|Add0~41_sumout\,
	cout => \D4|Add0~42\);

-- Location: FF_X13_Y1_N19
\D4|counter[6]\ : dffeas
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
	q => \D4|counter\(6));

-- Location: MLABCELL_X13_Y1_N21
\D4|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~37_sumout\ = SUM(( \D4|counter\(7) ) + ( GND ) + ( \D4|Add0~42\ ))
-- \D4|Add0~38\ = CARRY(( \D4|counter\(7) ) + ( GND ) + ( \D4|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(7),
	cin => \D4|Add0~42\,
	sumout => \D4|Add0~37_sumout\,
	cout => \D4|Add0~38\);

-- Location: FF_X13_Y1_N22
\D4|counter[7]\ : dffeas
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
	q => \D4|counter\(7));

-- Location: MLABCELL_X13_Y1_N24
\D4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~29_sumout\ = SUM(( \D4|counter\(8) ) + ( GND ) + ( \D4|Add0~38\ ))
-- \D4|Add0~30\ = CARRY(( \D4|counter\(8) ) + ( GND ) + ( \D4|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(8),
	cin => \D4|Add0~38\,
	sumout => \D4|Add0~29_sumout\,
	cout => \D4|Add0~30\);

-- Location: FF_X13_Y1_N25
\D4|counter[8]\ : dffeas
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
	q => \D4|counter\(8));

-- Location: MLABCELL_X13_Y1_N27
\D4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~25_sumout\ = SUM(( \D4|counter\(9) ) + ( GND ) + ( \D4|Add0~30\ ))
-- \D4|Add0~26\ = CARRY(( \D4|counter\(9) ) + ( GND ) + ( \D4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(9),
	cin => \D4|Add0~30\,
	sumout => \D4|Add0~25_sumout\,
	cout => \D4|Add0~26\);

-- Location: FF_X13_Y1_N28
\D4|counter[9]\ : dffeas
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
	q => \D4|counter\(9));

-- Location: MLABCELL_X13_Y1_N30
\D4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~21_sumout\ = SUM(( \D4|counter\(10) ) + ( GND ) + ( \D4|Add0~26\ ))
-- \D4|Add0~22\ = CARRY(( \D4|counter\(10) ) + ( GND ) + ( \D4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(10),
	cin => \D4|Add0~26\,
	sumout => \D4|Add0~21_sumout\,
	cout => \D4|Add0~22\);

-- Location: FF_X13_Y1_N31
\D4|counter[10]\ : dffeas
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
	q => \D4|counter\(10));

-- Location: MLABCELL_X13_Y1_N33
\D4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~1_sumout\ = SUM(( \D4|counter\(11) ) + ( GND ) + ( \D4|Add0~22\ ))
-- \D4|Add0~2\ = CARRY(( \D4|counter\(11) ) + ( GND ) + ( \D4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(11),
	cin => \D4|Add0~22\,
	sumout => \D4|Add0~1_sumout\,
	cout => \D4|Add0~2\);

-- Location: FF_X13_Y1_N35
\D4|counter[11]\ : dffeas
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
	q => \D4|counter\(11));

-- Location: MLABCELL_X13_Y1_N36
\D4|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~61_sumout\ = SUM(( \D4|counter\(12) ) + ( GND ) + ( \D4|Add0~2\ ))
-- \D4|Add0~62\ = CARRY(( \D4|counter\(12) ) + ( GND ) + ( \D4|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(12),
	cin => \D4|Add0~2\,
	sumout => \D4|Add0~61_sumout\,
	cout => \D4|Add0~62\);

-- Location: FF_X13_Y1_N38
\D4|counter[12]\ : dffeas
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
	q => \D4|counter\(12));

-- Location: MLABCELL_X13_Y1_N39
\D4|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~57_sumout\ = SUM(( \D4|counter\(13) ) + ( GND ) + ( \D4|Add0~62\ ))
-- \D4|Add0~58\ = CARRY(( \D4|counter\(13) ) + ( GND ) + ( \D4|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(13),
	cin => \D4|Add0~62\,
	sumout => \D4|Add0~57_sumout\,
	cout => \D4|Add0~58\);

-- Location: FF_X13_Y1_N41
\D4|counter[13]\ : dffeas
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
	q => \D4|counter\(13));

-- Location: MLABCELL_X13_Y1_N42
\D4|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~53_sumout\ = SUM(( \D4|counter\(14) ) + ( GND ) + ( \D4|Add0~58\ ))
-- \D4|Add0~54\ = CARRY(( \D4|counter\(14) ) + ( GND ) + ( \D4|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(14),
	cin => \D4|Add0~58\,
	sumout => \D4|Add0~53_sumout\,
	cout => \D4|Add0~54\);

-- Location: FF_X13_Y1_N44
\D4|counter[14]\ : dffeas
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
	q => \D4|counter\(14));

-- Location: MLABCELL_X13_Y1_N45
\D4|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Add0~49_sumout\ = SUM(( \D4|counter\(15) ) + ( GND ) + ( \D4|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D4|ALT_INV_counter\(15),
	cin => \D4|Add0~54\,
	sumout => \D4|Add0~49_sumout\);

-- Location: FF_X13_Y1_N47
\D4|counter[15]\ : dffeas
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
	q => \D4|counter\(15));

-- Location: MLABCELL_X13_Y1_N48
\D4|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~7_combout\ = ( \D4|counter\(14) & ( (\D4|counter\(12) & (\D4|counter\(13) & (\D4|counter\(1) & \D4|counter\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_counter\(12),
	datab => \D4|ALT_INV_counter\(13),
	datac => \D4|ALT_INV_counter\(1),
	datad => \D4|ALT_INV_counter\(15),
	dataf => \D4|ALT_INV_counter\(14),
	combout => \D4|outb~7_combout\);

-- Location: LABCELL_X14_Y1_N6
\D4|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~6_combout\ = ( \D4|counter\(9) & ( \D4|counter\(10) & ( (\D4|counter\(0) & (\D4|counter\(8) & (\D4|counter\(7) & \D4|counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_counter\(0),
	datab => \D4|ALT_INV_counter\(8),
	datac => \D4|ALT_INV_counter\(7),
	datad => \D4|ALT_INV_counter\(6),
	datae => \D4|ALT_INV_counter\(9),
	dataf => \D4|ALT_INV_counter\(10),
	combout => \D4|outb~6_combout\);

-- Location: LABCELL_X14_Y1_N30
\D4|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~5_combout\ = ( \D4|counter\(4) & ( \D4|counter\(5) & ( (\D4|counter\(2) & \D4|counter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D4|ALT_INV_counter\(2),
	datad => \D4|ALT_INV_counter\(3),
	datae => \D4|ALT_INV_counter\(4),
	dataf => \D4|ALT_INV_counter\(5),
	combout => \D4|outb~5_combout\);

-- Location: MLABCELL_X13_Y1_N57
\D4|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~8_combout\ = ( \D4|outb~6_combout\ & ( \D4|outb~5_combout\ & ( (!\D4|counter\(11)) # ((!\D4|outb~7_combout\) # (!\D4|intermediate~0_combout\ $ (!\escolha[1]~input_o\))) ) ) ) # ( !\D4|outb~6_combout\ & ( \D4|outb~5_combout\ ) ) # ( 
-- \D4|outb~6_combout\ & ( !\D4|outb~5_combout\ ) ) # ( !\D4|outb~6_combout\ & ( !\D4|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_counter\(11),
	datab => \D4|ALT_INV_intermediate~0_combout\,
	datac => \ALT_INV_escolha[1]~input_o\,
	datad => \D4|ALT_INV_outb~7_combout\,
	datae => \D4|ALT_INV_outb~6_combout\,
	dataf => \D4|ALT_INV_outb~5_combout\,
	combout => \D4|outb~8_combout\);

-- Location: LABCELL_X12_Y1_N18
\D4|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~3_combout\ = ( \D4|outb~2_combout\ & ( !\D4|outb~1_combout\ $ (((!\D4|intermediate~0_combout\ & !\D4|outb~8_combout\))) ) ) # ( !\D4|outb~2_combout\ & ( !\D4|outb~1_combout\ $ (((!\D4|intermediate~0_combout\) # (\D4|outb~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~1_combout\,
	datac => \D4|ALT_INV_intermediate~0_combout\,
	datad => \D4|ALT_INV_outb~8_combout\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \D4|outb~3_combout\);

-- Location: FF_X12_Y1_N20
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

-- Location: LABCELL_X12_Y1_N3
\D4|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|outb~2_combout\ = ( \D4|outb~_emulated_q\ & ( (!\rst_db~input_o\ & ((\escolha[1]~input_o\))) # (\rst_db~input_o\ & (!\D4|outb~1_combout\)) ) ) # ( !\D4|outb~_emulated_q\ & ( (!\rst_db~input_o\ & ((\escolha[1]~input_o\))) # (\rst_db~input_o\ & 
-- (\D4|outb~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100001010111110100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~1_combout\,
	datac => \ALT_INV_rst_db~input_o\,
	datad => \ALT_INV_escolha[1]~input_o\,
	dataf => \D4|ALT_INV_outb~_emulated_q\,
	combout => \D4|outb~2_combout\);

-- Location: IOIBUF_X33_Y0_N41
\escolha[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escolha(0),
	o => \escolha[0]~input_o\);

-- Location: LABCELL_X10_Y1_N48
\D3|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~1_combout\ = ( \rst_db~input_o\ & ( \D3|outb~1_combout\ ) ) # ( !\rst_db~input_o\ & ( \D3|outb~1_combout\ & ( \escolha[0]~input_o\ ) ) ) # ( !\rst_db~input_o\ & ( !\D3|outb~1_combout\ & ( \escolha[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_escolha[0]~input_o\,
	datae => \ALT_INV_rst_db~input_o\,
	dataf => \D3|ALT_INV_outb~1_combout\,
	combout => \D3|outb~1_combout\);

-- Location: LABCELL_X10_Y1_N27
\D3|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|intermediate~1_combout\ = ( !\escolha[0]~input_o\ & ( \D3|outb~1_combout\ ) ) # ( \escolha[0]~input_o\ & ( !\D3|outb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_escolha[0]~input_o\,
	dataf => \D3|ALT_INV_outb~1_combout\,
	combout => \D3|intermediate~1_combout\);

-- Location: FF_X10_Y1_N29
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

-- Location: LABCELL_X10_Y1_N12
\D3|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|intermediate~0_combout\ = ( \D3|intermediate~_emulated_q\ & ( \D3|outb~1_combout\ & ( (!\rst_db~input_o\ & \escolha[0]~input_o\) ) ) ) # ( !\D3|intermediate~_emulated_q\ & ( \D3|outb~1_combout\ & ( (\escolha[0]~input_o\) # (\rst_db~input_o\) ) ) ) # ( 
-- \D3|intermediate~_emulated_q\ & ( !\D3|outb~1_combout\ & ( (\escolha[0]~input_o\) # (\rst_db~input_o\) ) ) ) # ( !\D3|intermediate~_emulated_q\ & ( !\D3|outb~1_combout\ & ( (!\rst_db~input_o\ & \escolha[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100111111001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_db~input_o\,
	datac => \ALT_INV_escolha[0]~input_o\,
	datae => \D3|ALT_INV_intermediate~_emulated_q\,
	dataf => \D3|ALT_INV_outb~1_combout\,
	combout => \D3|intermediate~0_combout\);

-- Location: MLABCELL_X9_Y1_N0
\D3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~57_sumout\ = SUM(( \D3|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \D3|Add0~58\ = CARRY(( \D3|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(0),
	cin => GND,
	sumout => \D3|Add0~57_sumout\,
	cout => \D3|Add0~58\);

-- Location: LABCELL_X10_Y1_N0
\D3|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|always0~0_combout\ = ( !\escolha[0]~input_o\ & ( \D3|intermediate~0_combout\ ) ) # ( \escolha[0]~input_o\ & ( !\D3|intermediate~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_escolha[0]~input_o\,
	dataf => \D3|ALT_INV_intermediate~0_combout\,
	combout => \D3|always0~0_combout\);

-- Location: FF_X9_Y1_N1
\D3|counter[0]\ : dffeas
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
	q => \D3|counter\(0));

-- Location: MLABCELL_X9_Y1_N3
\D3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~53_sumout\ = SUM(( \D3|counter\(1) ) + ( GND ) + ( \D3|Add0~58\ ))
-- \D3|Add0~54\ = CARRY(( \D3|counter\(1) ) + ( GND ) + ( \D3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(1),
	cin => \D3|Add0~58\,
	sumout => \D3|Add0~53_sumout\,
	cout => \D3|Add0~54\);

-- Location: FF_X9_Y1_N4
\D3|counter[1]\ : dffeas
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
	q => \D3|counter\(1));

-- Location: MLABCELL_X9_Y1_N6
\D3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~49_sumout\ = SUM(( \D3|counter\(2) ) + ( GND ) + ( \D3|Add0~54\ ))
-- \D3|Add0~50\ = CARRY(( \D3|counter\(2) ) + ( GND ) + ( \D3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(2),
	cin => \D3|Add0~54\,
	sumout => \D3|Add0~49_sumout\,
	cout => \D3|Add0~50\);

-- Location: FF_X9_Y1_N7
\D3|counter[2]\ : dffeas
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
	q => \D3|counter\(2));

-- Location: MLABCELL_X9_Y1_N9
\D3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~17_sumout\ = SUM(( \D3|counter\(3) ) + ( GND ) + ( \D3|Add0~50\ ))
-- \D3|Add0~18\ = CARRY(( \D3|counter\(3) ) + ( GND ) + ( \D3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(3),
	cin => \D3|Add0~50\,
	sumout => \D3|Add0~17_sumout\,
	cout => \D3|Add0~18\);

-- Location: FF_X9_Y1_N10
\D3|counter[3]\ : dffeas
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
	q => \D3|counter\(3));

-- Location: MLABCELL_X9_Y1_N12
\D3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~13_sumout\ = SUM(( \D3|counter\(4) ) + ( GND ) + ( \D3|Add0~18\ ))
-- \D3|Add0~14\ = CARRY(( \D3|counter\(4) ) + ( GND ) + ( \D3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(4),
	cin => \D3|Add0~18\,
	sumout => \D3|Add0~13_sumout\,
	cout => \D3|Add0~14\);

-- Location: FF_X9_Y1_N13
\D3|counter[4]\ : dffeas
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
	q => \D3|counter\(4));

-- Location: MLABCELL_X9_Y1_N15
\D3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~9_sumout\ = SUM(( \D3|counter\(5) ) + ( GND ) + ( \D3|Add0~14\ ))
-- \D3|Add0~10\ = CARRY(( \D3|counter\(5) ) + ( GND ) + ( \D3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(5),
	cin => \D3|Add0~14\,
	sumout => \D3|Add0~9_sumout\,
	cout => \D3|Add0~10\);

-- Location: FF_X9_Y1_N16
\D3|counter[5]\ : dffeas
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
	q => \D3|counter\(5));

-- Location: MLABCELL_X9_Y1_N18
\D3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~5_sumout\ = SUM(( \D3|counter\(6) ) + ( GND ) + ( \D3|Add0~10\ ))
-- \D3|Add0~6\ = CARRY(( \D3|counter\(6) ) + ( GND ) + ( \D3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(6),
	cin => \D3|Add0~10\,
	sumout => \D3|Add0~5_sumout\,
	cout => \D3|Add0~6\);

-- Location: FF_X9_Y1_N19
\D3|counter[6]\ : dffeas
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
	q => \D3|counter\(6));

-- Location: MLABCELL_X9_Y1_N21
\D3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~41_sumout\ = SUM(( \D3|counter\(7) ) + ( GND ) + ( \D3|Add0~6\ ))
-- \D3|Add0~42\ = CARRY(( \D3|counter\(7) ) + ( GND ) + ( \D3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(7),
	cin => \D3|Add0~6\,
	sumout => \D3|Add0~41_sumout\,
	cout => \D3|Add0~42\);

-- Location: FF_X9_Y1_N23
\D3|counter[7]\ : dffeas
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
	q => \D3|counter\(7));

-- Location: MLABCELL_X9_Y1_N24
\D3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~37_sumout\ = SUM(( \D3|counter\(8) ) + ( GND ) + ( \D3|Add0~42\ ))
-- \D3|Add0~38\ = CARRY(( \D3|counter\(8) ) + ( GND ) + ( \D3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(8),
	cin => \D3|Add0~42\,
	sumout => \D3|Add0~37_sumout\,
	cout => \D3|Add0~38\);

-- Location: FF_X9_Y1_N26
\D3|counter[8]\ : dffeas
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
	q => \D3|counter\(8));

-- Location: MLABCELL_X9_Y1_N27
\D3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~33_sumout\ = SUM(( \D3|counter\(9) ) + ( GND ) + ( \D3|Add0~38\ ))
-- \D3|Add0~34\ = CARRY(( \D3|counter\(9) ) + ( GND ) + ( \D3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(9),
	cin => \D3|Add0~38\,
	sumout => \D3|Add0~33_sumout\,
	cout => \D3|Add0~34\);

-- Location: FF_X9_Y1_N28
\D3|counter[9]\ : dffeas
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
	q => \D3|counter\(9));

-- Location: MLABCELL_X9_Y1_N30
\D3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~45_sumout\ = SUM(( \D3|counter\(10) ) + ( GND ) + ( \D3|Add0~34\ ))
-- \D3|Add0~46\ = CARRY(( \D3|counter\(10) ) + ( GND ) + ( \D3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(10),
	cin => \D3|Add0~34\,
	sumout => \D3|Add0~45_sumout\,
	cout => \D3|Add0~46\);

-- Location: FF_X9_Y1_N31
\D3|counter[10]\ : dffeas
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
	q => \D3|counter\(10));

-- Location: MLABCELL_X9_Y1_N33
\D3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~29_sumout\ = SUM(( \D3|counter\(11) ) + ( GND ) + ( \D3|Add0~46\ ))
-- \D3|Add0~30\ = CARRY(( \D3|counter\(11) ) + ( GND ) + ( \D3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(11),
	cin => \D3|Add0~46\,
	sumout => \D3|Add0~29_sumout\,
	cout => \D3|Add0~30\);

-- Location: FF_X9_Y1_N35
\D3|counter[11]\ : dffeas
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
	q => \D3|counter\(11));

-- Location: MLABCELL_X9_Y1_N36
\D3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~25_sumout\ = SUM(( \D3|counter\(12) ) + ( GND ) + ( \D3|Add0~30\ ))
-- \D3|Add0~26\ = CARRY(( \D3|counter\(12) ) + ( GND ) + ( \D3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(12),
	cin => \D3|Add0~30\,
	sumout => \D3|Add0~25_sumout\,
	cout => \D3|Add0~26\);

-- Location: FF_X9_Y1_N38
\D3|counter[12]\ : dffeas
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
	q => \D3|counter\(12));

-- Location: MLABCELL_X9_Y1_N39
\D3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~21_sumout\ = SUM(( \D3|counter\(13) ) + ( GND ) + ( \D3|Add0~26\ ))
-- \D3|Add0~22\ = CARRY(( \D3|counter\(13) ) + ( GND ) + ( \D3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(13),
	cin => \D3|Add0~26\,
	sumout => \D3|Add0~21_sumout\,
	cout => \D3|Add0~22\);

-- Location: FF_X9_Y1_N41
\D3|counter[13]\ : dffeas
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
	q => \D3|counter\(13));

-- Location: MLABCELL_X9_Y1_N42
\D3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~1_sumout\ = SUM(( \D3|counter\(14) ) + ( GND ) + ( \D3|Add0~22\ ))
-- \D3|Add0~2\ = CARRY(( \D3|counter\(14) ) + ( GND ) + ( \D3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(14),
	cin => \D3|Add0~22\,
	sumout => \D3|Add0~1_sumout\,
	cout => \D3|Add0~2\);

-- Location: FF_X9_Y1_N43
\D3|counter[14]\ : dffeas
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
	q => \D3|counter\(14));

-- Location: LABCELL_X10_Y1_N18
\D3|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~5_combout\ = ( \D3|counter\(5) & ( \D3|counter\(3) & ( (\D3|counter\(4) & \D3|counter\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D3|ALT_INV_counter\(4),
	datad => \D3|ALT_INV_counter\(6),
	datae => \D3|ALT_INV_counter\(5),
	dataf => \D3|ALT_INV_counter\(3),
	combout => \D3|outb~5_combout\);

-- Location: MLABCELL_X9_Y1_N54
\D3|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~6_combout\ = ( \D3|counter\(12) & ( \D3|counter\(8) & ( (\D3|counter\(11) & (\D3|counter\(9) & (\D3|counter\(7) & \D3|counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_counter\(11),
	datab => \D3|ALT_INV_counter\(9),
	datac => \D3|ALT_INV_counter\(7),
	datad => \D3|ALT_INV_counter\(13),
	datae => \D3|ALT_INV_counter\(12),
	dataf => \D3|ALT_INV_counter\(8),
	combout => \D3|outb~6_combout\);

-- Location: MLABCELL_X9_Y1_N45
\D3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Add0~61_sumout\ = SUM(( \D3|counter\(15) ) + ( GND ) + ( \D3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D3|ALT_INV_counter\(15),
	cin => \D3|Add0~2\,
	sumout => \D3|Add0~61_sumout\);

-- Location: FF_X9_Y1_N46
\D3|counter[15]\ : dffeas
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
	q => \D3|counter\(15));

-- Location: LABCELL_X10_Y1_N30
\D3|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~7_combout\ = ( \D3|counter\(2) & ( \D3|counter\(0) & ( (\D3|counter\(10) & (\D3|counter\(15) & \D3|counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_counter\(10),
	datac => \D3|ALT_INV_counter\(15),
	datad => \D3|ALT_INV_counter\(1),
	datae => \D3|ALT_INV_counter\(2),
	dataf => \D3|ALT_INV_counter\(0),
	combout => \D3|outb~7_combout\);

-- Location: MLABCELL_X9_Y1_N48
\D3|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~8_combout\ = ( \D3|outb~6_combout\ & ( \D3|outb~7_combout\ & ( (!\D3|counter\(14)) # ((!\D3|outb~5_combout\) # (!\escolha[0]~input_o\ $ (!\D3|intermediate~0_combout\))) ) ) ) # ( !\D3|outb~6_combout\ & ( \D3|outb~7_combout\ ) ) # ( 
-- \D3|outb~6_combout\ & ( !\D3|outb~7_combout\ ) ) # ( !\D3|outb~6_combout\ & ( !\D3|outb~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[0]~input_o\,
	datab => \D3|ALT_INV_intermediate~0_combout\,
	datac => \D3|ALT_INV_counter\(14),
	datad => \D3|ALT_INV_outb~5_combout\,
	datae => \D3|ALT_INV_outb~6_combout\,
	dataf => \D3|ALT_INV_outb~7_combout\,
	combout => \D3|outb~8_combout\);

-- Location: LABCELL_X10_Y1_N42
\D3|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~3_combout\ = ( \D3|intermediate~0_combout\ & ( !\D3|outb~1_combout\ $ (((!\D3|outb~2_combout\ & \D3|outb~8_combout\))) ) ) # ( !\D3|intermediate~0_combout\ & ( !\D3|outb~1_combout\ $ (((!\D3|outb~2_combout\) # (!\D3|outb~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111011011101001000101101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~8_combout\,
	datad => \D3|ALT_INV_outb~1_combout\,
	dataf => \D3|ALT_INV_intermediate~0_combout\,
	combout => \D3|outb~3_combout\);

-- Location: FF_X10_Y1_N44
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

-- Location: LABCELL_X10_Y1_N39
\D3|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|outb~2_combout\ = ( \rst_db~input_o\ & ( \D3|outb~_emulated_q\ & ( !\D3|outb~1_combout\ ) ) ) # ( !\rst_db~input_o\ & ( \D3|outb~_emulated_q\ & ( \escolha[0]~input_o\ ) ) ) # ( \rst_db~input_o\ & ( !\D3|outb~_emulated_q\ & ( \D3|outb~1_combout\ ) ) ) 
-- # ( !\rst_db~input_o\ & ( !\D3|outb~_emulated_q\ & ( \escolha[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001101010101010101011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_escolha[0]~input_o\,
	datab => \D3|ALT_INV_outb~1_combout\,
	datae => \ALT_INV_rst_db~input_o\,
	dataf => \D3|ALT_INV_outb~_emulated_q\,
	combout => \D3|outb~2_combout\);

-- Location: LABCELL_X12_Y4_N54
\display~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~2_combout\ = ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & !\D4|outb~2_combout\) ) ) # ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & !\D6|outb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \display~2_combout\);

-- Location: LABCELL_X12_Y4_N9
\display~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~1_combout\ = ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (!\D5|outb~2_combout\ & \D4|outb~2_combout\)) ) ) # ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (\D5|outb~2_combout\ & !\D4|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \display~1_combout\);

-- Location: MLABCELL_X13_Y3_N24
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( !\D5|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & \estado.andar5~q\) ) ) ) # ( \D5|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & ((\estado.andar5~q\) # 
-- (\estado.andar4~q\)))) ) ) ) # ( !\D5|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & \estado.andar5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010000001100000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar4~q\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar5~q\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X12_Y4_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (!\D6|outb~2_combout\ & \D4|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X12_Y4_N0
\display~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~4_combout\ = ( !\D4|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & !\D5|outb~2_combout\) ) ) ) # ( \D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & !\D5|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \display~4_combout\);

-- Location: LABCELL_X12_Y3_N57
\display~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~0_combout\ = ( !\D5|outb~2_combout\ & ( (!\D6|outb~2_combout\ & !\D4|outb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \display~0_combout\);

-- Location: LABCELL_X12_Y3_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\D5|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (!\D3|outb~2_combout\ & \D4|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X9_Y4_N27
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \D5|outb~2_combout\ & ( \D3|outb~2_combout\ ) ) # ( !\D5|outb~2_combout\ & ( \D3|outb~2_combout\ ) ) # ( \D5|outb~2_combout\ & ( !\D3|outb~2_combout\ ) ) # ( !\D5|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (((\estado.andar0~q\ 
-- & !\estado.andar1~q\)) # (\D6|outb~2_combout\)) # (\D4|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar0~q\,
	datad => \ALT_INV_estado.andar1~q\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X9_Y4_N39
\estado.andar0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.andar0~feeder_combout\ = ( \Selector0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \estado.andar0~feeder_combout\);

-- Location: IOIBUF_X33_Y0_N92
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X10_Y3_N42
\D2|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~1_combout\ = ( \D2|outb~1_combout\ & ( (\rst~input_o\) # (\rst_db~input_o\) ) ) # ( !\D2|outb~1_combout\ & ( (!\rst_db~input_o\ & \rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_db~input_o\,
	datad => \ALT_INV_rst~input_o\,
	dataf => \D2|ALT_INV_outb~1_combout\,
	combout => \D2|outb~1_combout\);

-- Location: LABCELL_X10_Y2_N0
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

-- Location: LABCELL_X10_Y3_N6
\D2|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|intermediate~1_combout\ = ( \D2|outb~1_combout\ & ( !\rst~input_o\ ) ) # ( !\D2|outb~1_combout\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \D2|ALT_INV_outb~1_combout\,
	combout => \D2|intermediate~1_combout\);

-- Location: FF_X10_Y3_N8
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

-- Location: LABCELL_X10_Y3_N15
\D2|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|intermediate~0_combout\ = ( \D2|outb~1_combout\ & ( (!\rst_db~input_o\ & ((\rst~input_o\))) # (\rst_db~input_o\ & (!\D2|intermediate~_emulated_q\)) ) ) # ( !\D2|outb~1_combout\ & ( (!\rst_db~input_o\ & ((\rst~input_o\))) # (\rst_db~input_o\ & 
-- (\D2|intermediate~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111101010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_db~input_o\,
	datac => \D2|ALT_INV_intermediate~_emulated_q\,
	datad => \ALT_INV_rst~input_o\,
	dataf => \D2|ALT_INV_outb~1_combout\,
	combout => \D2|intermediate~0_combout\);

-- Location: LABCELL_X10_Y3_N48
\D2|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|always0~0_combout\ = ( \D2|intermediate~0_combout\ & ( !\rst~input_o\ ) ) # ( !\D2|intermediate~0_combout\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \D2|ALT_INV_intermediate~0_combout\,
	combout => \D2|always0~0_combout\);

-- Location: FF_X10_Y2_N2
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

-- Location: LABCELL_X10_Y2_N3
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

-- Location: FF_X10_Y2_N5
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

-- Location: LABCELL_X10_Y2_N6
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

-- Location: FF_X10_Y2_N8
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

-- Location: LABCELL_X10_Y2_N9
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

-- Location: FF_X10_Y2_N11
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

-- Location: LABCELL_X10_Y2_N12
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

-- Location: FF_X10_Y2_N14
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

-- Location: LABCELL_X10_Y2_N54
\D2|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~5_combout\ = ( \D2|counter\(1) & ( \D2|counter\(4) & ( (\D2|counter\(2) & \D2|counter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D2|ALT_INV_counter\(2),
	datad => \D2|ALT_INV_counter\(3),
	datae => \D2|ALT_INV_counter\(1),
	dataf => \D2|ALT_INV_counter\(4),
	combout => \D2|outb~5_combout\);

-- Location: LABCELL_X10_Y2_N15
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

-- Location: FF_X10_Y2_N17
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

-- Location: LABCELL_X10_Y2_N18
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

-- Location: FF_X10_Y2_N20
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

-- Location: LABCELL_X10_Y2_N21
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

-- Location: FF_X10_Y2_N23
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

-- Location: LABCELL_X10_Y2_N24
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

-- Location: FF_X10_Y2_N26
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

-- Location: LABCELL_X10_Y2_N27
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

-- Location: FF_X10_Y2_N29
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

-- Location: LABCELL_X10_Y2_N30
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

-- Location: FF_X10_Y2_N32
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

-- Location: LABCELL_X10_Y2_N33
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

-- Location: FF_X10_Y2_N34
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

-- Location: LABCELL_X10_Y2_N36
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

-- Location: FF_X10_Y2_N38
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

-- Location: LABCELL_X10_Y2_N39
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

-- Location: FF_X10_Y2_N41
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

-- Location: LABCELL_X10_Y2_N42
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

-- Location: FF_X10_Y2_N43
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

-- Location: LABCELL_X10_Y2_N45
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

-- Location: FF_X10_Y2_N47
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

-- Location: MLABCELL_X9_Y2_N45
\D2|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~7_combout\ = ( \D2|counter\(0) & ( \D2|counter\(14) & ( (\D2|counter\(13) & (\D2|counter\(12) & \D2|counter\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_counter\(13),
	datac => \D2|ALT_INV_counter\(12),
	datad => \D2|ALT_INV_counter\(15),
	datae => \D2|ALT_INV_counter\(0),
	dataf => \D2|ALT_INV_counter\(14),
	combout => \D2|outb~7_combout\);

-- Location: MLABCELL_X9_Y2_N24
\D2|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~6_combout\ = ( \D2|counter\(5) & ( \D2|counter\(10) & ( (\D2|counter\(9) & (\D2|counter\(8) & (\D2|counter\(7) & \D2|counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_counter\(9),
	datab => \D2|ALT_INV_counter\(8),
	datac => \D2|ALT_INV_counter\(7),
	datad => \D2|ALT_INV_counter\(6),
	datae => \D2|ALT_INV_counter\(5),
	dataf => \D2|ALT_INV_counter\(10),
	combout => \D2|outb~6_combout\);

-- Location: LABCELL_X10_Y2_N48
\D2|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~8_combout\ = ( \D2|intermediate~0_combout\ & ( \D2|outb~6_combout\ & ( (!\D2|outb~5_combout\) # ((!\rst~input_o\) # ((!\D2|outb~7_combout\) # (!\D2|counter\(11)))) ) ) ) # ( !\D2|intermediate~0_combout\ & ( \D2|outb~6_combout\ & ( 
-- (!\D2|outb~5_combout\) # (((!\D2|outb~7_combout\) # (!\D2|counter\(11))) # (\rst~input_o\)) ) ) ) # ( \D2|intermediate~0_combout\ & ( !\D2|outb~6_combout\ ) ) # ( !\D2|intermediate~0_combout\ & ( !\D2|outb~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_outb~5_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \D2|ALT_INV_outb~7_combout\,
	datad => \D2|ALT_INV_counter\(11),
	datae => \D2|ALT_INV_intermediate~0_combout\,
	dataf => \D2|ALT_INV_outb~6_combout\,
	combout => \D2|outb~8_combout\);

-- Location: LABCELL_X10_Y3_N39
\D2|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~3_combout\ = ( \D2|outb~8_combout\ & ( \D2|intermediate~0_combout\ & ( !\D2|outb~2_combout\ $ (!\D2|outb~1_combout\) ) ) ) # ( !\D2|outb~8_combout\ & ( \D2|intermediate~0_combout\ & ( !\D2|outb~1_combout\ ) ) ) # ( \D2|outb~8_combout\ & ( 
-- !\D2|intermediate~0_combout\ & ( !\D2|outb~2_combout\ $ (!\D2|outb~1_combout\) ) ) ) # ( !\D2|outb~8_combout\ & ( !\D2|intermediate~0_combout\ & ( \D2|outb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011001100110011011001100110011000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_outb~2_combout\,
	datab => \D2|ALT_INV_outb~1_combout\,
	datae => \D2|ALT_INV_outb~8_combout\,
	dataf => \D2|ALT_INV_intermediate~0_combout\,
	combout => \D2|outb~3_combout\);

-- Location: FF_X10_Y3_N41
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

-- Location: LABCELL_X10_Y3_N57
\D2|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|outb~2_combout\ = ( \rst_db~input_o\ & ( !\D2|outb~1_combout\ $ (!\D2|outb~_emulated_q\) ) ) # ( !\rst_db~input_o\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D2|ALT_INV_outb~1_combout\,
	datac => \D2|ALT_INV_outb~_emulated_q\,
	datad => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_rst_db~input_o\,
	combout => \D2|outb~2_combout\);

-- Location: FF_X9_Y4_N41
\estado.andar0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \estado.andar0~feeder_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar0~q\);

-- Location: LABCELL_X12_Y4_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & !\D5|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X13_Y4_N51
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \estado.andar2~q\ & ( \Equal0~1_combout\ & ( \display~0_combout\ ) ) ) # ( !\estado.andar2~q\ & ( \Equal0~1_combout\ & ( (\estado.andar1~q\ & (\D3|outb~2_combout\ & \display~0_combout\)) ) ) ) # ( \estado.andar2~q\ & ( 
-- !\Equal0~1_combout\ & ( (!\estado.andar0~q\) # (\display~0_combout\) ) ) ) # ( !\estado.andar2~q\ & ( !\Equal0~1_combout\ & ( (!\estado.andar0~q\) # ((\estado.andar1~q\ & (\D3|outb~2_combout\ & \display~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110001111100001111111100000000000100010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar1~q\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar0~q\,
	datad => \ALT_INV_display~0_combout\,
	datae => \ALT_INV_estado.andar2~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X12_Y4_N41
\estado.andar1\ : dffeas
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
	q => \estado.andar1~q\);

-- Location: LABCELL_X12_Y3_N9
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \estado.andar3~q\ & ( \estado.andar1~q\ & ( ((!\display~0_combout\) # (!\Equal0~0_combout\)) # (\estado.andar2~q\) ) ) ) # ( !\estado.andar3~q\ & ( \estado.andar1~q\ & ( (!\display~0_combout\) # ((\estado.andar2~q\ & 
-- \Equal0~0_combout\)) ) ) ) # ( \estado.andar3~q\ & ( !\estado.andar1~q\ & ( (!\display~0_combout\ & ((\Equal0~0_combout\))) # (\display~0_combout\ & ((!\Equal0~0_combout\) # (\estado.andar2~q\))) ) ) ) # ( !\estado.andar3~q\ & ( !\estado.andar1~q\ & ( 
-- (\estado.andar2~q\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100111101110111001100110111011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar2~q\,
	datab => \ALT_INV_display~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_estado.andar3~q\,
	dataf => \ALT_INV_estado.andar1~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X12_Y3_N3
\estado.andar2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.andar2~feeder_combout\ = \Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~0_combout\,
	combout => \estado.andar2~feeder_combout\);

-- Location: FF_X12_Y3_N5
\estado.andar2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \estado.andar2~feeder_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar2~q\);

-- Location: MLABCELL_X13_Y2_N45
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \D4|outb~2_combout\ & ( \estado.andar4~q\ & ( (\estado.andar2~q\ & (((\D3|outb~2_combout\) # (\D6|outb~2_combout\)) # (\D5|outb~2_combout\))) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.andar4~q\ & ( (!\D5|outb~2_combout\ & 
-- ((!\D6|outb~2_combout\ & ((!\D3|outb~2_combout\))) # (\D6|outb~2_combout\ & (\estado.andar2~q\)))) # (\D5|outb~2_combout\ & (((\estado.andar2~q\)))) ) ) ) # ( \D4|outb~2_combout\ & ( !\estado.andar4~q\ & ( (\estado.andar2~q\ & (((\D3|outb~2_combout\) # 
-- (\D6|outb~2_combout\)) # (\D5|outb~2_combout\))) ) ) ) # ( !\D4|outb~2_combout\ & ( !\estado.andar4~q\ & ( (\estado.andar2~q\ & ((\D6|outb~2_combout\) # (\D5|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000111110001111000001110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar2~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar4~q\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X12_Y4_N21
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \estado.andar4~q\ & ( \Selector3~0_combout\ ) ) # ( !\estado.andar4~q\ & ( \Selector3~0_combout\ ) ) # ( \estado.andar4~q\ & ( !\Selector3~0_combout\ & ( (\display~4_combout\) # (\Equal0~2_combout\) ) ) ) # ( !\estado.andar4~q\ & 
-- ( !\Selector3~0_combout\ & ( (\Equal0~2_combout\ & \estado.andar3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_display~4_combout\,
	datad => \ALT_INV_estado.andar3~q\,
	datae => \ALT_INV_estado.andar4~q\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X12_Y4_N53
\estado.andar3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector3~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar3~q\);

-- Location: LABCELL_X10_Y3_N54
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \D6|outb~2_combout\ & ( (\estado.andar3~q\) # (\Selector4~0_combout\) ) ) # ( !\D6|outb~2_combout\ & ( ((\D5|outb~2_combout\ & \estado.andar3~q\)) # (\Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector4~0_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar3~q\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X10_Y3_N56
\estado.andar4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector4~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar4~q\);

-- Location: LABCELL_X12_Y3_N48
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \D4|outb~2_combout\ & ( \estado.andar5~q\ & ( (\estado.andar4~q\ & ((\D5|outb~2_combout\) # (\D6|outb~2_combout\))) ) ) ) # ( !\D4|outb~2_combout\ & ( \estado.andar5~q\ & ( (!\D6|outb~2_combout\ & (((\D3|outb~2_combout\ & 
-- \D5|outb~2_combout\)))) # (\D6|outb~2_combout\ & (\estado.andar4~q\)) ) ) ) # ( \D4|outb~2_combout\ & ( !\estado.andar5~q\ & ( (\estado.andar4~q\ & ((\D5|outb~2_combout\) # (\D6|outb~2_combout\))) ) ) ) # ( !\D4|outb~2_combout\ & ( !\estado.andar5~q\ & ( 
-- (\estado.andar4~q\ & (((\D3|outb~2_combout\ & \D5|outb~2_combout\)) # (\D6|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011000100010011001100010001000110110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.andar4~q\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar5~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X12_Y3_N42
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ((\estado.andar6~q\ & ((\display~1_combout\) # (\display~2_combout\)))) # (\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111111001100110111111100110011011111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display~2_combout\,
	datab => \ALT_INV_Selector5~0_combout\,
	datac => \ALT_INV_display~1_combout\,
	datad => \ALT_INV_estado.andar6~q\,
	combout => \Selector5~1_combout\);

-- Location: FF_X12_Y3_N44
\estado.andar5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector5~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar5~q\);

-- Location: LABCELL_X10_Y3_N27
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \estado.andar8~q\ & ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & \estado.andar7~q\) ) ) ) # ( !\estado.andar8~q\ & ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & \estado.andar7~q\) ) ) ) # ( \estado.andar8~q\ & ( 
-- !\D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (((!\D5|outb~2_combout\ & !\D4|outb~2_combout\)) # (\estado.andar7~q\))) ) ) ) # ( !\estado.andar8~q\ & ( !\D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & \estado.andar7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar7~q\,
	datae => \ALT_INV_estado.andar8~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector8~1_combout\);

-- Location: LABCELL_X14_Y3_N51
\display~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~5_combout\ = ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (!\D5|outb~2_combout\ $ (\D4|outb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010010100000000000000000000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \D6|ALT_INV_outb~2_combout\,
	datae => \D3|ALT_INV_outb~2_combout\,
	combout => \display~5_combout\);

-- Location: LABCELL_X12_Y1_N45
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \D4|outb~2_combout\ & ( (\D6|outb~2_combout\ & (!\D3|outb~2_combout\ $ (!\D5|outb~2_combout\))) ) ) # ( !\D4|outb~2_combout\ & ( (\D5|outb~2_combout\ & \D6|outb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \D6|ALT_INV_outb~2_combout\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X14_Y3_N3
\display~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~6_combout\ = ( \D4|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & \D5|outb~2_combout\) ) ) ) # ( \D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & !\D5|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \display~6_combout\);

-- Location: LABCELL_X10_Y3_N51
\Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = ( \D6|outb~2_combout\ & ( (\D5|outb~2_combout\ & (!\D3|outb~2_combout\ $ (!\D4|outb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector10~2_combout\);

-- Location: LABCELL_X10_Y3_N9
\Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (\estado.andar10~q\ & ((\D4|outb~2_combout\) # (\D5|outb~2_combout\)))) ) ) # ( !\D3|outb~2_combout\ & ( (\D5|outb~2_combout\ & (\D6|outb~2_combout\ & \estado.andar10~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar10~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector11~1_combout\);

-- Location: MLABCELL_X13_Y2_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \D6|outb~2_combout\ & ( \D5|outb~2_combout\ & ( (\D3|outb~2_combout\ & !\D4|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datae => \D6|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X13_Y3_N9
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \D5|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (\D4|outb~2_combout\ & ((\estado.andar14~q\) # (\estado.andar15~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar15~q\,
	datad => \ALT_INV_estado.andar14~q\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X13_Y3_N8
\estado.andar15\ : dffeas
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
	q => \estado.andar15~q\);

-- Location: MLABCELL_X9_Y3_N15
\display~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~3_combout\ = ( \D6|outb~2_combout\ & ( (\D5|outb~2_combout\ & \D4|outb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \display~3_combout\);

-- Location: LABCELL_X12_Y3_N12
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \display~3_combout\ & ( \estado.andar13~q\ ) ) # ( !\display~3_combout\ & ( \estado.andar13~q\ & ( \estado.andar15~q\ ) ) ) # ( \display~3_combout\ & ( !\estado.andar13~q\ & ( (!\D3|outb~2_combout\ & ((\estado.andar15~q\) # 
-- (\estado.andar14~q\))) ) ) ) # ( !\display~3_combout\ & ( !\estado.andar13~q\ & ( \estado.andar15~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010001001100110000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar14~q\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar15~q\,
	datae => \ALT_INV_display~3_combout\,
	dataf => \ALT_INV_estado.andar13~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X12_Y3_N26
\estado.andar14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector14~0_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar14~q\);

-- Location: MLABCELL_X13_Y2_N51
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \display~3_combout\ & ( ((\estado.andar13~q\ & \Equal0~3_combout\)) # (\estado.andar12~q\) ) ) # ( !\display~3_combout\ & ( ((\Equal0~3_combout\ & ((\estado.andar12~q\) # (\estado.andar13~q\)))) # (\estado.andar14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100111111000111110011111100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar13~q\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_estado.andar14~q\,
	datad => \ALT_INV_estado.andar12~q\,
	dataf => \ALT_INV_display~3_combout\,
	combout => \Selector13~0_combout\);

-- Location: MLABCELL_X13_Y2_N18
\estado.andar13~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.andar13~feeder_combout\ = \Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~0_combout\,
	combout => \estado.andar13~feeder_combout\);

-- Location: FF_X13_Y2_N20
\estado.andar13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \estado.andar13~feeder_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar13~q\);

-- Location: MLABCELL_X9_Y2_N51
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \D3|outb~2_combout\ & ( \estado.andar12~q\ & ( (\estado.andar13~q\ & ((!\D5|outb~2_combout\) # (!\D6|outb~2_combout\))) ) ) ) # ( !\D3|outb~2_combout\ & ( \estado.andar12~q\ & ( (!\D5|outb~2_combout\ & (\estado.andar13~q\)) # 
-- (\D5|outb~2_combout\ & ((!\D6|outb~2_combout\ & (\estado.andar13~q\)) # (\D6|outb~2_combout\ & ((!\D4|outb~2_combout\))))) ) ) ) # ( \D3|outb~2_combout\ & ( !\estado.andar12~q\ & ( (\estado.andar13~q\ & ((!\D5|outb~2_combout\) # (!\D6|outb~2_combout\))) ) 
-- ) ) # ( !\D3|outb~2_combout\ & ( !\estado.andar12~q\ & ( (\estado.andar13~q\ & ((!\D5|outb~2_combout\) # ((!\D6|outb~2_combout\) # (!\D4|outb~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101000101010001010111010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar13~q\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar12~q\,
	combout => \Selector12~0_combout\);

-- Location: MLABCELL_X9_Y3_N48
\Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = ( \Selector12~0_combout\ ) # ( !\Selector12~0_combout\ & ( (\D6|outb~2_combout\ & (\estado.andar11~q\ & \D5|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar11~q\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X9_Y3_N50
\estado.andar12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector12~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar12~q\);

-- Location: MLABCELL_X13_Y3_N33
\display~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~7_combout\ = ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (\D4|outb~2_combout\ & \D5|outb~2_combout\)) ) ) # ( !\D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & \D5|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \display~7_combout\);

-- Location: LABCELL_X10_Y3_N33
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( !\D5|outb~2_combout\ & ( \D4|outb~2_combout\ & ( (\estado.andar11~q\ & (\D6|outb~2_combout\ & \D3|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.andar11~q\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X10_Y3_N45
\Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = ( \Selector11~0_combout\ ) # ( !\Selector11~0_combout\ & ( ((!\Selector10~2_combout\ & (\estado.andar12~q\ & !\display~7_combout\))) # (\Selector11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011001110110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector10~2_combout\,
	datab => \ALT_INV_Selector11~1_combout\,
	datac => \ALT_INV_estado.andar12~q\,
	datad => \ALT_INV_display~7_combout\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector11~2_combout\);

-- Location: FF_X10_Y3_N47
\estado.andar11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector11~2_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar11~q\);

-- Location: LABCELL_X10_Y4_N27
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \estado.andar11~q\ & ( \D4|outb~2_combout\ & ( (!\D6|outb~2_combout\) # ((!\D3|outb~2_combout\ & !\D5|outb~2_combout\)) ) ) ) # ( !\estado.andar11~q\ & ( \D4|outb~2_combout\ & ( (!\D3|outb~2_combout\ & (\D6|outb~2_combout\ & 
-- (!\D5|outb~2_combout\ & \estado.andar10~q\))) ) ) ) # ( \estado.andar11~q\ & ( !\D4|outb~2_combout\ & ( (!\D6|outb~2_combout\) # (!\D5|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000001000001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar10~q\,
	datae => \ALT_INV_estado.andar11~q\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector10~0_combout\);

-- Location: MLABCELL_X9_Y3_N12
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \Selector10~0_combout\ ) # ( !\Selector10~0_combout\ & ( (\D6|outb~2_combout\ & (\estado.andar9~q\ & ((\D4|outb~2_combout\) # (\D5|outb~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar9~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X9_Y3_N14
\estado.andar10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector10~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar10~q\);

-- Location: LABCELL_X14_Y3_N12
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \estado.andar8~q\ & ( \D6|outb~2_combout\ & ( ((\D5|outb~2_combout\) # (\D4|outb~2_combout\)) # (\D3|outb~2_combout\) ) ) ) # ( !\estado.andar8~q\ & ( \D6|outb~2_combout\ & ( (\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & 
-- (!\D5|outb~2_combout\ & \estado.andar9~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar9~q\,
	datae => \ALT_INV_estado.andar8~q\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X14_Y3_N42
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \Selector7~0_combout\ & ( \Selector9~0_combout\ ) ) # ( !\Selector7~0_combout\ & ( \Selector9~0_combout\ ) ) # ( !\Selector7~0_combout\ & ( !\Selector9~0_combout\ & ( (!\display~6_combout\ & \estado.andar10~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_display~6_combout\,
	datac => \ALT_INV_estado.andar10~q\,
	datae => \ALT_INV_Selector7~0_combout\,
	dataf => \ALT_INV_Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X14_Y3_N44
\estado.andar9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector9~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar9~q\);

-- Location: LABCELL_X14_Y3_N30
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \D3|outb~2_combout\ & ( \estado.andar9~q\ ) ) # ( !\D3|outb~2_combout\ & ( (\estado.andar9~q\ & ((!\D6|outb~2_combout\) # ((!\D4|outb~2_combout\) # (\D5|outb~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001111111100000000111011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar9~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X10_Y3_N12
\Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = ( \Selector8~0_combout\ & ( ((!\display~5_combout\ & !\Selector7~0_combout\)) # (\Selector8~1_combout\) ) ) # ( !\Selector8~0_combout\ & ( \Selector8~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector8~1_combout\,
	datac => \ALT_INV_display~5_combout\,
	datad => \ALT_INV_Selector7~0_combout\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: FF_X10_Y3_N14
\estado.andar8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector8~2_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar8~q\);

-- Location: MLABCELL_X9_Y2_N3
\Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = ( !\estado.andar6~q\ & ( \estado.andar8~q\ & ( \D6|outb~2_combout\ ) ) ) # ( \estado.andar6~q\ & ( !\estado.andar8~q\ & ( (!\D6|outb~2_combout\ & ((!\D3|outb~2_combout\) # (!\D5|outb~2_combout\))) ) ) ) # ( !\estado.andar6~q\ & ( 
-- !\estado.andar8~q\ & ( (!\D3|outb~2_combout\) # ((!\D5|outb~2_combout\) # ((!\estado.andar7~q\) # (\D6|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111000001110000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar7~q\,
	datae => \ALT_INV_estado.andar6~q\,
	dataf => \ALT_INV_estado.andar8~q\,
	combout => \Selector7~3_combout\);

-- Location: LABCELL_X12_Y3_N45
\Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = ( \estado.andar8~q\ & ( (!\D6|outb~2_combout\) # (\estado.andar6~q\) ) ) # ( !\estado.andar8~q\ & ( (\D6|outb~2_combout\ & \estado.andar6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar6~q\,
	dataf => \ALT_INV_estado.andar8~q\,
	combout => \Selector7~2_combout\);

-- Location: LABCELL_X10_Y3_N21
\Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = ( \Selector7~2_combout\ & ( (!\Selector7~3_combout\) # (!\D4|outb~2_combout\) ) ) # ( !\Selector7~2_combout\ & ( (!\Selector7~3_combout\ & \D4|outb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector7~3_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_Selector7~2_combout\,
	combout => \Selector7~4_combout\);

-- Location: FF_X10_Y3_N23
\estado.andar7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector7~4_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar7~q\);

-- Location: LABCELL_X10_Y3_N3
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \D4|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (!\D5|outb~2_combout\ & \estado.andar7~q\)) ) ) ) # ( !\D4|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & \estado.andar7~q\) ) ) ) # ( 
-- \D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (((\estado.andar6~q\ & \D5|outb~2_combout\)) # (\estado.andar7~q\))) ) ) ) # ( !\D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & \estado.andar7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000001001100110000000000110011000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar6~q\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar7~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X10_Y3_N18
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \Selector6~0_combout\ ) # ( !\Selector6~0_combout\ & ( (!\display~2_combout\ & (!\display~1_combout\ & \estado.andar5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_display~2_combout\,
	datac => \ALT_INV_display~1_combout\,
	datad => \ALT_INV_estado.andar5~q\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X10_Y3_N20
\estado.andar6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector6~1_combout\,
	clrn => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.andar6~q\);

-- Location: MLABCELL_X9_Y2_N39
\WideOr18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = ( !\estado.andar4~q\ & ( (!\estado.andar12~q\ & (!\estado.andar8~q\ & \estado.andar0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar12~q\,
	datab => \ALT_INV_estado.andar8~q\,
	datac => \ALT_INV_estado.andar0~q\,
	datae => \ALT_INV_estado.andar4~q\,
	combout => \WideOr18~0_combout\);

-- Location: MLABCELL_X9_Y2_N30
WideOr19 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr19~combout\ = ( \WideOr18~0_combout\ & ( (((\estado.andar10~q\) # (\estado.andar14~q\)) # (\estado.andar2~q\)) # (\estado.andar6~q\) ) ) # ( !\WideOr18~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar6~q\,
	datab => \ALT_INV_estado.andar2~q\,
	datac => \ALT_INV_estado.andar14~q\,
	datad => \ALT_INV_estado.andar10~q\,
	dataf => \ALT_INV_WideOr18~0_combout\,
	combout => \WideOr19~combout\);

-- Location: MLABCELL_X9_Y4_N9
WideOr18 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr18~combout\ = ( \estado.andar5~q\ & ( \WideOr18~0_combout\ ) ) # ( !\estado.andar5~q\ & ( \WideOr18~0_combout\ & ( ((\estado.andar9~q\) # (\estado.andar13~q\)) # (\estado.andar1~q\) ) ) ) # ( \estado.andar5~q\ & ( !\WideOr18~0_combout\ ) ) # ( 
-- !\estado.andar5~q\ & ( !\WideOr18~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar1~q\,
	datab => \ALT_INV_estado.andar13~q\,
	datac => \ALT_INV_estado.andar9~q\,
	datae => \ALT_INV_estado.andar5~q\,
	dataf => \ALT_INV_WideOr18~0_combout\,
	combout => \WideOr18~combout\);

-- Location: MLABCELL_X9_Y4_N3
\WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = ( !\estado.andar1~q\ & ( (!\estado.andar3~q\ & (!\estado.andar2~q\ & \estado.andar0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar3~q\,
	datab => \ALT_INV_estado.andar2~q\,
	datac => \ALT_INV_estado.andar0~q\,
	dataf => \ALT_INV_estado.andar1~q\,
	combout => \WideOr16~0_combout\);

-- Location: MLABCELL_X9_Y2_N9
WideOr17 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr17~combout\ = ( \estado.andar10~q\ ) # ( !\estado.andar10~q\ & ( ((!\WideOr16~0_combout\) # ((\estado.andar8~q\) # (\estado.andar9~q\))) # (\estado.andar11~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar11~q\,
	datab => \ALT_INV_WideOr16~0_combout\,
	datac => \ALT_INV_estado.andar9~q\,
	datad => \ALT_INV_estado.andar8~q\,
	dataf => \ALT_INV_estado.andar10~q\,
	combout => \WideOr17~combout\);

-- Location: MLABCELL_X9_Y4_N30
WideOr16 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = ( \WideOr16~0_combout\ & ( \estado.andar6~q\ ) ) # ( !\WideOr16~0_combout\ & ( \estado.andar6~q\ ) ) # ( \WideOr16~0_combout\ & ( !\estado.andar6~q\ & ( ((\estado.andar5~q\) # (\estado.andar7~q\)) # (\estado.andar4~q\) ) ) ) # ( 
-- !\WideOr16~0_combout\ & ( !\estado.andar6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar4~q\,
	datab => \ALT_INV_estado.andar7~q\,
	datad => \ALT_INV_estado.andar5~q\,
	datae => \ALT_INV_WideOr16~0_combout\,
	dataf => \ALT_INV_estado.andar6~q\,
	combout => \WideOr16~combout\);

-- Location: MLABCELL_X13_Y3_N30
\display~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \display~8_combout\ = ( \D3|outb~2_combout\ & ( (\D4|outb~2_combout\ & (\D6|outb~2_combout\ & \D5|outb~2_combout\)) ) ) # ( !\D3|outb~2_combout\ & ( (!\D4|outb~2_combout\ & (\D6|outb~2_combout\ & !\D5|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \display~8_combout\);

-- Location: MLABCELL_X13_Y3_N39
\Selector16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = ( \estado.andar1~q\ & ( \D3|outb~2_combout\ & ( (\estado.andar15~q\ & ((!\D6|outb~2_combout\) # ((!\D4|outb~2_combout\) # (!\D5|outb~2_combout\)))) ) ) ) # ( !\estado.andar1~q\ & ( \D3|outb~2_combout\ & ( (\estado.andar15~q\ & 
-- ((!\D6|outb~2_combout\) # ((!\D4|outb~2_combout\) # (!\D5|outb~2_combout\)))) ) ) ) # ( \estado.andar1~q\ & ( !\D3|outb~2_combout\ & ( ((!\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & !\D5|outb~2_combout\))) # (\estado.andar15~q\) ) ) ) # ( 
-- !\estado.andar1~q\ & ( !\D3|outb~2_combout\ & ( \estado.andar15~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111100011110000111100001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar15~q\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar1~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector16~4_combout\);

-- Location: MLABCELL_X13_Y3_N45
\Selector16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = ( \estado.andar14~q\ & ( \D4|outb~2_combout\ & ( (!\D5|outb~2_combout\) # (!\D6|outb~2_combout\) ) ) ) # ( \estado.andar14~q\ & ( !\D4|outb~2_combout\ ) ) # ( !\estado.andar14~q\ & ( !\D4|outb~2_combout\ & ( (\estado.andar2~q\ & 
-- (!\D5|outb~2_combout\ & !\D6|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000111111111111111100000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.andar2~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \D6|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar14~q\,
	dataf => \D4|ALT_INV_outb~2_combout\,
	combout => \Selector16~5_combout\);

-- Location: MLABCELL_X13_Y3_N12
\Selector16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = ( \D3|outb~2_combout\ & ( !\D6|outb~2_combout\ & ( (!\estado.andar7~q\ & (((!\D5|outb~2_combout\ & \estado.andar5~q\)))) # (\estado.andar7~q\ & ((!\D4|outb~2_combout\) # ((!\D5|outb~2_combout\)))) ) ) ) # ( !\D3|outb~2_combout\ & 
-- ( !\D6|outb~2_combout\ & ( ((\estado.andar5~q\ & ((!\D4|outb~2_combout\) # (!\D5|outb~2_combout\)))) # (\estado.andar7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111011001100101111001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D4|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.andar7~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar5~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector16~3_combout\);

-- Location: MLABCELL_X13_Y3_N54
\Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = ( \estado.andar13~q\ & ( \estado.andar3~q\ & ( (!\D5|outb~2_combout\) # ((!\D6|outb~2_combout\) # ((!\D3|outb~2_combout\ & !\D4|outb~2_combout\))) ) ) ) # ( !\estado.andar13~q\ & ( \estado.andar3~q\ & ( (!\D5|outb~2_combout\ & 
-- (!\D6|outb~2_combout\ & ((!\D3|outb~2_combout\) # (!\D4|outb~2_combout\)))) ) ) ) # ( \estado.andar13~q\ & ( !\estado.andar3~q\ & ( (!\D5|outb~2_combout\) # ((!\D6|outb~2_combout\) # ((!\D3|outb~2_combout\ & !\D4|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111101010100000100000001111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar13~q\,
	dataf => \ALT_INV_estado.andar3~q\,
	combout => \Selector16~2_combout\);

-- Location: MLABCELL_X13_Y3_N51
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( \D3|outb~2_combout\ & ( (\estado.andar8~q\ & ((!\D6|outb~2_combout\) # ((\D4|outb~2_combout\ & \D5|outb~2_combout\)))) ) ) # ( !\D3|outb~2_combout\ & ( (\estado.andar8~q\ & ((!\D6|outb~2_combout\) # ((!\D4|outb~2_combout\ & 
-- !\D5|outb~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000001110101000000000101010110000000010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar8~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector7~1_combout\);

-- Location: MLABCELL_X13_Y3_N18
\Selector16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~6_combout\ = ( !\Selector16~2_combout\ & ( \Selector7~1_combout\ & ( (\display~8_combout\ & (!\Selector16~4_combout\ & (!\Selector16~5_combout\ & !\Selector16~3_combout\))) ) ) ) # ( !\Selector16~2_combout\ & ( !\Selector7~1_combout\ & ( 
-- (!\Selector16~4_combout\ & (!\Selector16~5_combout\ & !\Selector16~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display~8_combout\,
	datab => \ALT_INV_Selector16~4_combout\,
	datac => \ALT_INV_Selector16~5_combout\,
	datad => \ALT_INV_Selector16~3_combout\,
	datae => \ALT_INV_Selector16~2_combout\,
	dataf => \ALT_INV_Selector7~1_combout\,
	combout => \Selector16~6_combout\);

-- Location: LABCELL_X14_Y3_N24
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \D3|outb~2_combout\ & ( \D6|outb~2_combout\ & ( (!\D5|outb~2_combout\ & \D4|outb~2_combout\) ) ) ) # ( !\D3|outb~2_combout\ & ( \D6|outb~2_combout\ & ( (\D5|outb~2_combout\ & !\D4|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X14_Y3_N39
\Selector10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = ( \estado.andar11~q\ & ( \D6|outb~2_combout\ & ( (!\D4|outb~2_combout\ & ((!\D5|outb~2_combout\) # (\D3|outb~2_combout\))) # (\D4|outb~2_combout\ & ((!\D3|outb~2_combout\))) ) ) ) # ( \estado.andar11~q\ & ( !\D6|outb~2_combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001011101111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar11~q\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: LABCELL_X14_Y3_N6
\Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = ( \estado.andar10~q\ & ( !\Selector10~3_combout\ & ( ((\display~6_combout\ & ((!\Selector8~0_combout\) # (\display~5_combout\)))) # (\Selector16~0_combout\) ) ) ) # ( !\estado.andar10~q\ & ( !\Selector10~3_combout\ & ( 
-- (!\Selector8~0_combout\) # ((\Selector16~0_combout\) # (\display~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111000010111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~0_combout\,
	datab => \ALT_INV_display~5_combout\,
	datac => \ALT_INV_display~6_combout\,
	datad => \ALT_INV_Selector16~0_combout\,
	datae => \ALT_INV_estado.andar10~q\,
	dataf => \ALT_INV_Selector10~3_combout\,
	combout => \Selector16~1_combout\);

-- Location: MLABCELL_X13_Y3_N48
\Selector16~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~8_combout\ = ( \estado.andar6~q\ & ( (!\D6|outb~2_combout\ & ((!\D4|outb~2_combout\) # (!\D5|outb~2_combout\))) ) ) # ( !\estado.andar6~q\ & ( (!\D6|outb~2_combout\ & (\estado.andar4~q\ & !\D5|outb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar4~q\,
	datad => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar6~q\,
	combout => \Selector16~8_combout\);

-- Location: MLABCELL_X13_Y3_N0
\Selector16~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~7_combout\ = ( \Selector16~8_combout\ & ( \Selector10~2_combout\ ) ) # ( !\Selector16~8_combout\ & ( \Selector10~2_combout\ & ( !\Selector16~6_combout\ ) ) ) # ( \Selector16~8_combout\ & ( !\Selector10~2_combout\ ) ) # ( 
-- !\Selector16~8_combout\ & ( !\Selector10~2_combout\ & ( (!\Selector16~6_combout\) # ((!\Selector16~1_combout\) # ((!\display~7_combout\ & \estado.andar12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001110111111111111111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display~7_combout\,
	datab => \ALT_INV_Selector16~6_combout\,
	datac => \ALT_INV_estado.andar12~q\,
	datad => \ALT_INV_Selector16~1_combout\,
	datae => \ALT_INV_Selector16~8_combout\,
	dataf => \ALT_INV_Selector10~2_combout\,
	combout => \Selector16~7_combout\);

-- Location: FF_X13_Y3_N4
\display[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector16~7_combout\,
	sload => VCC,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[0]~reg0_q\);

-- Location: MLABCELL_X13_Y4_N30
\Selector17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = ( \D5|outb~2_combout\ & ( \estado.andar9~q\ & ( (!\D6|outb~2_combout\ & !\estado.andar1~q\) ) ) ) # ( !\D5|outb~2_combout\ & ( \estado.andar9~q\ & ( (!\D6|outb~2_combout\ & ((!\D4|outb~2_combout\) # (!\estado.andar1~q\))) # 
-- (\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & !\estado.andar1~q\)) ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.andar9~q\ & ( (!\estado.andar1~q\ & ((!\D6|outb~2_combout\) # ((!\D4|outb~2_combout\) # (!\estado.andar13~q\)))) ) ) ) # ( !\D5|outb~2_combout\ 
-- & ( !\estado.andar9~q\ & ( (!\estado.andar1~q\) # ((!\D6|outb~2_combout\ & !\D4|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111100001110000011101000111010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar1~q\,
	datad => \ALT_INV_estado.andar13~q\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar9~q\,
	combout => \Selector17~4_combout\);

-- Location: LABCELL_X12_Y4_N24
\Selector17~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~6_combout\ = ( \D4|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & \estado.andar10~q\) ) ) ) # ( !\D4|outb~2_combout\ & ( \D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (\D5|outb~2_combout\ & \estado.andar10~q\)) ) ) ) # ( 
-- \D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (\D5|outb~2_combout\ & \estado.andar10~q\)) ) ) ) # ( !\D4|outb~2_combout\ & ( !\D3|outb~2_combout\ & ( (\D6|outb~2_combout\ & (\D5|outb~2_combout\ & ((\estado.andar11~q\) # 
-- (\estado.andar10~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010000000100000001000000010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar10~q\,
	datad => \ALT_INV_estado.andar11~q\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector17~6_combout\);

-- Location: LABCELL_X12_Y4_N57
\Selector17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~9_combout\ = ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & ((!\D5|outb~2_combout\) # (!\D4|outb~2_combout\))) ) ) # ( !\D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & ((\D4|outb~2_combout\) # (\D5|outb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D6|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector17~9_combout\);

-- Location: LABCELL_X12_Y4_N36
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \display~4_combout\ & ( \Equal0~2_combout\ & ( (\estado.andar0~q\ & ((!\estado.andar6~q\) # (\Selector17~9_combout\))) ) ) ) # ( !\display~4_combout\ & ( \Equal0~2_combout\ & ( (\estado.andar0~q\ & ((!\estado.andar6~q\) # 
-- (\Selector17~9_combout\))) ) ) ) # ( \display~4_combout\ & ( !\Equal0~2_combout\ & ( (\estado.andar0~q\ & ((!\estado.andar6~q\) # (\Selector17~9_combout\))) ) ) ) # ( !\display~4_combout\ & ( !\Equal0~2_combout\ & ( (!\estado.andar3~q\ & 
-- (\estado.andar0~q\ & ((!\estado.andar6~q\) # (\Selector17~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100010000000001111001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar3~q\,
	datab => \ALT_INV_Selector17~9_combout\,
	datac => \ALT_INV_estado.andar6~q\,
	datad => \ALT_INV_estado.andar0~q\,
	datae => \ALT_INV_display~4_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X12_Y4_N12
\Selector17~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~8_combout\ = ( !\Selector17~6_combout\ & ( \Selector17~0_combout\ & ( ((!\estado.andar5~q\) # (\display~2_combout\)) # (\display~1_combout\) ) ) ) # ( !\Selector17~6_combout\ & ( !\Selector17~0_combout\ & ( (\Equal0~1_combout\ & 
-- (((!\estado.andar5~q\) # (\display~2_combout\)) # (\display~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011000000000000000011111111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_display~2_combout\,
	datad => \ALT_INV_estado.andar5~q\,
	datae => \ALT_INV_Selector17~6_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector17~8_combout\);

-- Location: LABCELL_X12_Y3_N30
\Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = ( \D4|outb~2_combout\ & ( \D6|outb~2_combout\ & ( (\estado.andar14~q\ & (\D5|outb~2_combout\ & \D3|outb~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar14~q\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D4|ALT_INV_outb~2_combout\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector17~2_combout\);

-- Location: LABCELL_X12_Y3_N36
\Selector17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = ( \D5|outb~2_combout\ & ( \estado.andar11~q\ & ( (\D6|outb~2_combout\ & ((\D4|outb~2_combout\) # (\D3|outb~2_combout\))) ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.andar11~q\ & ( (\D6|outb~2_combout\ & (\estado.andar12~q\ & 
-- ((\D4|outb~2_combout\) # (\D3|outb~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001100000000000000000001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D3|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar12~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar11~q\,
	combout => \Selector17~3_combout\);

-- Location: MLABCELL_X13_Y4_N12
\Selector17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = ( \D5|outb~2_combout\ & ( \estado.andar8~q\ & ( \D6|outb~2_combout\ ) ) ) # ( !\D5|outb~2_combout\ & ( \estado.andar8~q\ & ( (\D6|outb~2_combout\ & (((\D3|outb~2_combout\) # (\estado.andar7~q\)) # (\D4|outb~2_combout\))) ) ) ) # ( 
-- \D5|outb~2_combout\ & ( !\estado.andar8~q\ & ( (\D6|outb~2_combout\ & \estado.andar7~q\) ) ) ) # ( !\D5|outb~2_combout\ & ( !\estado.andar8~q\ & ( (\D6|outb~2_combout\ & \estado.andar7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar7~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar8~q\,
	combout => \Selector17~5_combout\);

-- Location: LABCELL_X12_Y4_N33
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \D5|outb~2_combout\ & ( \estado.andar4~q\ & ( (!\D6|outb~2_combout\ & (!\D3|outb~2_combout\ & (!\estado.andar2~q\ & !\D4|outb~2_combout\))) ) ) ) # ( !\D5|outb~2_combout\ & ( \estado.andar4~q\ & ( (!\D6|outb~2_combout\ & 
-- ((!\D3|outb~2_combout\) # ((!\estado.andar2~q\) # (!\D4|outb~2_combout\)))) ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.andar4~q\ & ( !\estado.andar2~q\ ) ) ) # ( !\D5|outb~2_combout\ & ( !\estado.andar4~q\ & ( (!\estado.andar2~q\) # ((!\D6|outb~2_combout\ 
-- & ((!\D3|outb~2_combout\) # (!\D4|outb~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111000111100001111000010101010101010001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D3|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar2~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar4~q\,
	combout => \Selector17~1_combout\);

-- Location: LABCELL_X12_Y4_N45
\Selector17~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~7_combout\ = ( \Selector17~5_combout\ & ( \Selector17~1_combout\ ) ) # ( !\Selector17~5_combout\ & ( \Selector17~1_combout\ & ( (!\Selector17~4_combout\) # ((!\Selector17~8_combout\) # ((\Selector17~3_combout\) # (\Selector17~2_combout\))) ) ) 
-- ) # ( \Selector17~5_combout\ & ( !\Selector17~1_combout\ ) ) # ( !\Selector17~5_combout\ & ( !\Selector17~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~4_combout\,
	datab => \ALT_INV_Selector17~8_combout\,
	datac => \ALT_INV_Selector17~2_combout\,
	datad => \ALT_INV_Selector17~3_combout\,
	datae => \ALT_INV_Selector17~5_combout\,
	dataf => \ALT_INV_Selector17~1_combout\,
	combout => \Selector17~7_combout\);

-- Location: FF_X12_Y4_N19
\display[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector17~7_combout\,
	sload => VCC,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[1]~reg0_q\);

-- Location: LABCELL_X14_Y2_N36
\Selector18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = ( \estado.andar14~q\ & ( \estado.andar8~q\ & ( (!\D5|outb~2_combout\ & (\D4|outb~2_combout\ & !\estado.andar10~q\)) ) ) ) # ( !\estado.andar14~q\ & ( \estado.andar8~q\ & ( (\D4|outb~2_combout\ & ((!\estado.andar10~q\) # 
-- (\D5|outb~2_combout\))) ) ) ) # ( \estado.andar14~q\ & ( !\estado.andar8~q\ & ( (!\D4|outb~2_combout\ & (((!\D3|outb~2_combout\)))) # (\D4|outb~2_combout\ & (!\D5|outb~2_combout\ & ((!\estado.andar10~q\)))) ) ) ) # ( !\estado.andar14~q\ & ( 
-- !\estado.andar8~q\ & ( (!\D4|outb~2_combout\ & (((!\D3|outb~2_combout\)))) # (\D4|outb~2_combout\ & (((!\estado.andar10~q\)) # (\D5|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111010001111000101100000000110011000100010010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar10~q\,
	datae => \ALT_INV_estado.andar14~q\,
	dataf => \ALT_INV_estado.andar8~q\,
	combout => \Selector18~4_combout\);

-- Location: MLABCELL_X13_Y2_N12
\Selector18~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~7_combout\ = ( \D3|outb~2_combout\ & ( \estado.andar3~q\ & ( (\D5|outb~2_combout\ & (\D6|outb~2_combout\ & !\estado.andar13~q\)) ) ) ) # ( !\D3|outb~2_combout\ & ( \estado.andar3~q\ & ( (\D5|outb~2_combout\ & \D6|outb~2_combout\) ) ) ) # ( 
-- \D3|outb~2_combout\ & ( !\estado.andar3~q\ & ( (!\D5|outb~2_combout\) # ((\D6|outb~2_combout\ & !\estado.andar13~q\)) ) ) ) # ( !\D3|outb~2_combout\ & ( !\estado.andar3~q\ & ( (\D5|outb~2_combout\ & \D6|outb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110101011101000010001000100010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D6|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar13~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar3~q\,
	combout => \Selector18~7_combout\);

-- Location: LABCELL_X14_Y2_N42
\Selector18~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~6_combout\ = ( \estado.andar5~q\ & ( \D6|outb~2_combout\ & ( (\D5|outb~2_combout\ & !\D4|outb~2_combout\) ) ) ) # ( !\estado.andar5~q\ & ( \D6|outb~2_combout\ & ( (\D5|outb~2_combout\ & !\D4|outb~2_combout\) ) ) ) # ( \estado.andar5~q\ & ( 
-- !\D6|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (((\D4|outb~2_combout\)))) # (\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & ((\D3|outb~2_combout\) # (\estado.andar4~q\)))) ) ) ) # ( !\estado.andar5~q\ & ( !\D6|outb~2_combout\ & ( (!\D5|outb~2_combout\ & 
-- (((\D4|outb~2_combout\)))) # (\D5|outb~2_combout\ & (\estado.andar4~q\ & (!\D3|outb~2_combout\ & !\D4|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011001100000100111100110000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.andar4~q\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar5~q\,
	dataf => \D6|ALT_INV_outb~2_combout\,
	combout => \Selector18~6_combout\);

-- Location: LABCELL_X14_Y2_N3
\Selector18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~5_combout\ = ( \estado.andar12~q\ & ( \D3|outb~2_combout\ & ( (!\Selector18~7_combout\ & \Selector18~6_combout\) ) ) ) # ( !\estado.andar12~q\ & ( \D3|outb~2_combout\ & ( (!\Selector18~7_combout\ & \Selector18~6_combout\) ) ) ) # ( 
-- \estado.andar12~q\ & ( !\D3|outb~2_combout\ & ( (\Selector18~6_combout\ & ((\D5|outb~2_combout\) # (\estado.andar2~q\))) ) ) ) # ( !\estado.andar12~q\ & ( !\D3|outb~2_combout\ & ( (!\Selector18~7_combout\ & (\Selector18~6_combout\ & ((\D5|outb~2_combout\) 
-- # (\estado.andar2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000110011001100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector18~7_combout\,
	datab => \ALT_INV_Selector18~6_combout\,
	datac => \ALT_INV_estado.andar2~q\,
	datad => \D5|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar12~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector18~5_combout\);

-- Location: LABCELL_X14_Y2_N6
\Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ( \D5|outb~2_combout\ & ( \estado.andar1~q\ & ( (\D6|outb~2_combout\ & (\D4|outb~2_combout\ & !\D3|outb~2_combout\)) ) ) ) # ( !\D5|outb~2_combout\ & ( \estado.andar1~q\ & ( (!\D3|outb~2_combout\ & (\D6|outb~2_combout\)) # 
-- (\D3|outb~2_combout\ & (!\D4|outb~2_combout\ & ((!\D6|outb~2_combout\) # (\estado.andar9~q\)))) ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.andar1~q\ & ( (\D6|outb~2_combout\ & (\D4|outb~2_combout\ & !\D3|outb~2_combout\)) ) ) ) # ( !\D5|outb~2_combout\ & 
-- ( !\estado.andar1~q\ & ( (\D6|outb~2_combout\ & ((!\D3|outb~2_combout\) # ((!\D4|outb~2_combout\ & \estado.andar9~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010100000100000001000001011000010111000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D3|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar9~q\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar1~q\,
	combout => \Selector18~3_combout\);

-- Location: LABCELL_X14_Y2_N12
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( \estado.andar15~q\ & ( \D3|outb~2_combout\ & ( (\D5|outb~2_combout\ & (\D4|outb~2_combout\ & \D6|outb~2_combout\)) ) ) ) # ( \estado.andar15~q\ & ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & 
-- (!\estado.andar0~q\ & !\D6|outb~2_combout\))) ) ) ) # ( !\estado.andar15~q\ & ( !\D3|outb~2_combout\ & ( (!\D5|outb~2_combout\ & (!\D4|outb~2_combout\ & (!\estado.andar0~q\ & !\D6|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar0~q\,
	datad => \D6|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar15~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector18~1_combout\);

-- Location: LABCELL_X14_Y2_N48
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \estado.andar7~q\ & ( \D3|outb~2_combout\ & ( (\D5|outb~2_combout\ & (\D4|outb~2_combout\ & !\D6|outb~2_combout\)) ) ) ) # ( \estado.andar7~q\ & ( !\D3|outb~2_combout\ & ( (\D5|outb~2_combout\ & (\D4|outb~2_combout\ & 
-- (\estado.andar6~q\ & !\D6|outb~2_combout\))) ) ) ) # ( !\estado.andar7~q\ & ( !\D3|outb~2_combout\ & ( (\D5|outb~2_combout\ & (\D4|outb~2_combout\ & (\estado.andar6~q\ & !\D6|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D5|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar6~q\,
	datad => \D6|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar7~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X14_Y2_N57
\Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = ( \Selector18~1_combout\ & ( \Selector18~0_combout\ ) ) # ( !\Selector18~1_combout\ & ( \Selector18~0_combout\ ) ) # ( \Selector18~1_combout\ & ( !\Selector18~0_combout\ ) ) # ( !\Selector18~1_combout\ & ( !\Selector18~0_combout\ 
-- & ( (((!\Selector18~4_combout\ & \Selector18~3_combout\)) # (\Selector11~0_combout\)) # (\Selector18~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector18~4_combout\,
	datab => \ALT_INV_Selector18~5_combout\,
	datac => \ALT_INV_Selector11~0_combout\,
	datad => \ALT_INV_Selector18~3_combout\,
	datae => \ALT_INV_Selector18~1_combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X14_Y2_N1
\display[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector18~2_combout\,
	sload => VCC,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[2]~reg0_q\);

-- Location: FF_X14_Y2_N58
\display[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector18~2_combout\,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[3]~reg0_q\);

-- Location: FF_X12_Y4_N46
\display[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector17~7_combout\,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[4]~reg0_q\);

-- Location: FF_X13_Y3_N2
\display[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector16~7_combout\,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[5]~reg0_q\);

-- Location: MLABCELL_X9_Y3_N6
\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( \D3|outb~2_combout\ & ( \estado.andar9~q\ & ( (\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & (!\D5|outb~2_combout\ & \estado.andar0~q\))) ) ) ) # ( \D3|outb~2_combout\ & ( !\estado.andar9~q\ & ( \estado.andar0~q\ ) ) ) # ( 
-- !\D3|outb~2_combout\ & ( !\estado.andar9~q\ & ( ((!\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & !\D5|outb~2_combout\))) # (\estado.andar0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111111000000001111111100000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar0~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar9~q\,
	combout => \Selector19~1_combout\);

-- Location: MLABCELL_X9_Y3_N21
\Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = ( \D3|outb~2_combout\ & ( \D5|outb~2_combout\ & ( (!\estado.andar4~q\ & !\estado.andar8~q\) ) ) ) # ( !\D3|outb~2_combout\ & ( \D5|outb~2_combout\ & ( (!\estado.andar8~q\ & ((!\estado.andar4~q\) # ((!\D6|outb~2_combout\ & 
-- !\D4|outb~2_combout\)))) ) ) ) # ( \D3|outb~2_combout\ & ( !\D5|outb~2_combout\ & ( (!\estado.andar4~q\ & !\estado.andar8~q\) ) ) ) # ( !\D3|outb~2_combout\ & ( !\D5|outb~2_combout\ & ( (!\estado.andar4~q\ & ((!\estado.andar8~q\) # ((\D6|outb~2_combout\ & 
-- !\D4|outb~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001000000111100000000000011111000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar4~q\,
	datad => \ALT_INV_estado.andar8~q\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector19~2_combout\);

-- Location: MLABCELL_X9_Y3_N30
\Selector19~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~7_combout\ = ( \D3|outb~2_combout\ & ( \estado.andar1~q\ & ( (!\D6|outb~2_combout\ & (!\estado.andar2~q\ & (!\D5|outb~2_combout\ & !\D4|outb~2_combout\))) ) ) ) # ( \D3|outb~2_combout\ & ( !\estado.andar1~q\ & ( !\estado.andar2~q\ ) ) ) # ( 
-- !\D3|outb~2_combout\ & ( !\estado.andar1~q\ & ( (!\estado.andar2~q\) # ((!\D6|outb~2_combout\ & (!\D5|outb~2_combout\ & \D4|outb~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101100110011001100110000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.andar2~q\,
	datac => \D5|ALT_INV_outb~2_combout\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar1~q\,
	combout => \Selector19~7_combout\);

-- Location: MLABCELL_X9_Y3_N36
\Selector19~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~8_combout\ = ( !\estado.andar7~q\ & ( \estado.andar6~q\ & ( (\Selector19~7_combout\ & (!\estado.andar15~q\ & !\D3|outb~2_combout\)) ) ) ) # ( \estado.andar7~q\ & ( !\estado.andar6~q\ & ( (\Selector19~7_combout\ & (\D3|outb~2_combout\ & 
-- ((!\estado.andar15~q\) # (\display~3_combout\)))) ) ) ) # ( !\estado.andar7~q\ & ( !\estado.andar6~q\ & ( (\Selector19~7_combout\ & ((!\estado.andar15~q\) # ((\display~3_combout\ & \D3|outb~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010001000000000101000101010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector19~7_combout\,
	datab => \ALT_INV_display~3_combout\,
	datac => \ALT_INV_estado.andar15~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar7~q\,
	dataf => \ALT_INV_estado.andar6~q\,
	combout => \Selector19~8_combout\);

-- Location: LABCELL_X12_Y3_N21
\Selector19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = ( \estado.andar3~q\ & ( \D3|outb~2_combout\ & ( (!\D6|outb~2_combout\ & (!\D5|outb~2_combout\ & (!\estado.andar5~q\ & \D4|outb~2_combout\))) ) ) ) # ( !\estado.andar3~q\ & ( \D3|outb~2_combout\ & ( (!\estado.andar5~q\) # 
-- ((!\D6|outb~2_combout\ & (\D5|outb~2_combout\ & !\D4|outb~2_combout\))) ) ) ) # ( !\estado.andar3~q\ & ( !\D3|outb~2_combout\ & ( !\estado.andar5~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110010111100000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar5~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar3~q\,
	dataf => \D3|ALT_INV_outb~2_combout\,
	combout => \Selector19~3_combout\);

-- Location: MLABCELL_X9_Y3_N24
\Selector19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = ( \D5|outb~2_combout\ & ( \estado.andar13~q\ & ( (\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & (!\estado.andar12~q\ & \D3|outb~2_combout\))) ) ) ) # ( \D5|outb~2_combout\ & ( !\estado.andar13~q\ & ( (!\estado.andar12~q\) # 
-- ((\D6|outb~2_combout\ & (!\D4|outb~2_combout\ & !\D3|outb~2_combout\))) ) ) ) # ( !\D5|outb~2_combout\ & ( !\estado.andar13~q\ & ( !\estado.andar12~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111101001111000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D4|ALT_INV_outb~2_combout\,
	datac => \ALT_INV_estado.andar12~q\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \D5|ALT_INV_outb~2_combout\,
	dataf => \ALT_INV_estado.andar13~q\,
	combout => \Selector19~5_combout\);

-- Location: MLABCELL_X9_Y3_N51
\Selector19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = ( \estado.andar6~q\ & ( (!\D6|outb~2_combout\ & (\D5|outb~2_combout\ & \D4|outb~2_combout\)) ) ) # ( !\estado.andar6~q\ & ( (!\estado.andar7~q\) # ((!\D6|outb~2_combout\ & (\D5|outb~2_combout\ & \D4|outb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000010111111110000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \D5|ALT_INV_outb~2_combout\,
	datac => \D4|ALT_INV_outb~2_combout\,
	datad => \ALT_INV_estado.andar7~q\,
	dataf => \ALT_INV_estado.andar6~q\,
	combout => \Selector19~4_combout\);

-- Location: MLABCELL_X9_Y3_N57
\Selector19~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~6_combout\ = ( \estado.andar14~q\ & ( \Selector19~4_combout\ & ( (\Selector19~5_combout\ & (\display~3_combout\ & !\D3|outb~2_combout\)) ) ) ) # ( !\estado.andar14~q\ & ( \Selector19~4_combout\ & ( \Selector19~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector19~5_combout\,
	datab => \ALT_INV_display~3_combout\,
	datad => \D3|ALT_INV_outb~2_combout\,
	datae => \ALT_INV_estado.andar14~q\,
	dataf => \ALT_INV_Selector19~4_combout\,
	combout => \Selector19~6_combout\);

-- Location: MLABCELL_X9_Y3_N42
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \D3|outb~2_combout\ & ( \D5|outb~2_combout\ & ( (!\estado.andar10~q\ & !\estado.andar11~q\) ) ) ) # ( !\D3|outb~2_combout\ & ( \D5|outb~2_combout\ & ( (!\estado.andar10~q\ & !\estado.andar11~q\) ) ) ) # ( \D3|outb~2_combout\ & ( 
-- !\D5|outb~2_combout\ & ( (!\estado.andar10~q\ & ((!\estado.andar11~q\) # ((\D6|outb~2_combout\ & \D4|outb~2_combout\)))) ) ) ) # ( !\D3|outb~2_combout\ & ( !\D5|outb~2_combout\ & ( (!\estado.andar11~q\ & ((!\estado.andar10~q\) # ((\D6|outb~2_combout\ & 
-- \D4|outb~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010000110000001100010011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D6|ALT_INV_outb~2_combout\,
	datab => \ALT_INV_estado.andar10~q\,
	datac => \ALT_INV_estado.andar11~q\,
	datad => \D4|ALT_INV_outb~2_combout\,
	datae => \D3|ALT_INV_outb~2_combout\,
	dataf => \D5|ALT_INV_outb~2_combout\,
	combout => \Selector19~0_combout\);

-- Location: MLABCELL_X9_Y3_N0
\Selector19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~9_combout\ = ( \Selector19~6_combout\ & ( \Selector19~0_combout\ & ( (!\Selector19~1_combout\) # ((!\Selector19~2_combout\) # ((!\Selector19~8_combout\) # (!\Selector19~3_combout\))) ) ) ) # ( !\Selector19~6_combout\ & ( \Selector19~0_combout\ 
-- ) ) # ( \Selector19~6_combout\ & ( !\Selector19~0_combout\ ) ) # ( !\Selector19~6_combout\ & ( !\Selector19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector19~1_combout\,
	datab => \ALT_INV_Selector19~2_combout\,
	datac => \ALT_INV_Selector19~8_combout\,
	datad => \ALT_INV_Selector19~3_combout\,
	datae => \ALT_INV_Selector19~6_combout\,
	dataf => \ALT_INV_Selector19~0_combout\,
	combout => \Selector19~9_combout\);

-- Location: FF_X9_Y3_N28
\porta[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	asdata => \Selector19~9_combout\,
	sload => VCC,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \porta[1]~reg0_q\);

-- Location: FF_X9_Y3_N1
\porta[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D1|outb~2_combout\,
	d => \Selector19~9_combout\,
	ena => \D2|ALT_INV_outb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \porta[2]~reg0_q\);

-- Location: LABCELL_X48_Y12_N3
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


