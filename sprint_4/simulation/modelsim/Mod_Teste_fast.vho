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

-- DATE "03/15/2024 11:58:07"

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

ENTITY 	Mod_Teste IS
    PORT (
	CLOCK_27 : IN std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	UART_TXD : OUT std_logic;
	UART_RXD : IN std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	GPIO_0 : INOUT std_logic_vector(35 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(35 DOWNTO 0)
	);
END Mod_Teste;

-- Design Ports Information
-- LCD_DATA[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[32]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[33]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[34]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[35]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[0]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[7]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[8]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[9]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[10]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[11]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[12]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[13]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[14]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[15]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[16]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[17]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[18]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[19]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[20]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[21]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[22]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[23]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[24]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[25]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[26]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[27]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[28]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[29]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[30]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[31]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[32]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[33]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[34]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[35]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TXD	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_RXD	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_BLON	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_EN	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Mod_Teste IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MyLCD|u0|Add0~6_combout\ : std_logic;
SIGNAL \MyLCD|Add13~0_combout\ : std_logic;
SIGNAL \MyLCD|Add13~1\ : std_logic;
SIGNAL \MyLCD|Add14~0_combout\ : std_logic;
SIGNAL \MyLCD|Add11~2_combout\ : std_logic;
SIGNAL \MyLCD|Add13~2_combout\ : std_logic;
SIGNAL \MyLCD|Add13~3\ : std_logic;
SIGNAL \MyLCD|Add13~4_combout\ : std_logic;
SIGNAL \MyLCD|Add13~5\ : std_logic;
SIGNAL \MyLCD|Add14~4_combout\ : std_logic;
SIGNAL \MyLCD|Add3~4_combout\ : std_logic;
SIGNAL \MyLCD|Add2~4_combout\ : std_logic;
SIGNAL \MyLCD|Add13~6_combout\ : std_logic;
SIGNAL \MyLCD|Add13~7\ : std_logic;
SIGNAL \MyLCD|Add15~7\ : std_logic;
SIGNAL \MyLCD|Add13~8_combout\ : std_logic;
SIGNAL \MyLCD|Add15~8_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[1]~20_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[12]~42_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[15]~48_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[16]~51\ : std_logic;
SIGNAL \MyLCD|mDLY[17]~52_combout\ : std_logic;
SIGNAL \myReg|register[7][5]~regout\ : std_logic;
SIGNAL \myULA|Add0~0_combout\ : std_logic;
SIGNAL \myULA|Add0~1_combout\ : std_logic;
SIGNAL \myReg|register[7][4]~regout\ : std_logic;
SIGNAL \myULA|Add0~2_combout\ : std_logic;
SIGNAL \myULA|Add0~3_combout\ : std_logic;
SIGNAL \myULA|Add0~4_combout\ : std_logic;
SIGNAL \myULA|Add0~5_combout\ : std_logic;
SIGNAL \myULA|Add0~20_combout\ : std_logic;
SIGNAL \myULA|Mux7~1_combout\ : std_logic;
SIGNAL \myReg|register[7][7]~regout\ : std_logic;
SIGNAL \MyLCD|LessThan13~0_combout\ : std_logic;
SIGNAL \MyLCD|LessThan2~0_combout\ : std_logic;
SIGNAL \MyLCD|LessThan15~0_combout\ : std_logic;
SIGNAL \MyLCD|Mux4~3_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector2~1_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector5~1_combout\ : std_logic;
SIGNAL \MyLCD|u0|oDone~0_combout\ : std_logic;
SIGNAL \KEY[1]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \myReg|register[7][7]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[0]~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[0]~7\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[1]~9\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[2]~10_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[0]~18_combout\ : std_logic;
SIGNAL \MyLCD|Selector0~0_combout\ : std_logic;
SIGNAL \MyLCD|Selector0~1_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_Start~regout\ : std_logic;
SIGNAL \MyLCD|u0|preStart~regout\ : std_logic;
SIGNAL \MyLCD|u0|mStart~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|mStart~regout\ : std_logic;
SIGNAL \MyLCD|u0|ST.00~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|ST.00~regout\ : std_logic;
SIGNAL \MyLCD|u0|ST.01~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|ST.01~regout\ : std_logic;
SIGNAL \MyLCD|u0|Selector2~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|ST.10~regout\ : std_logic;
SIGNAL \MyLCD|u0|Selector4~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector5~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Add0~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector8~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Add0~1\ : std_logic;
SIGNAL \MyLCD|u0|Add0~2_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector7~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Add0~3\ : std_logic;
SIGNAL \MyLCD|u0|Add0~4_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector6~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|Add0~5\ : std_logic;
SIGNAL \MyLCD|u0|Add0~7\ : std_logic;
SIGNAL \MyLCD|u0|Add0~8_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector4~1_combout\ : std_logic;
SIGNAL \MyLCD|u0|ST~14_combout\ : std_logic;
SIGNAL \MyLCD|u0|ST.11~regout\ : std_logic;
SIGNAL \MyLCD|u0|oDone~1_combout\ : std_logic;
SIGNAL \MyLCD|u0|oDone~regout\ : std_logic;
SIGNAL \MyLCD|mLCD_ST.000000~0_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_ST.000000~regout\ : std_logic;
SIGNAL \MyLCD|Selector2~0_combout\ : std_logic;
SIGNAL \MyLCD|Selector2~1_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_ST.000001~regout\ : std_logic;
SIGNAL \MyLCD|Selector3~0_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_ST.000010~regout\ : std_logic;
SIGNAL \MyLCD|mDLY[0]~19\ : std_logic;
SIGNAL \MyLCD|mDLY[1]~21\ : std_logic;
SIGNAL \MyLCD|mDLY[2]~22_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[2]~23\ : std_logic;
SIGNAL \MyLCD|mDLY[3]~25\ : std_logic;
SIGNAL \MyLCD|mDLY[4]~26_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[4]~27\ : std_logic;
SIGNAL \MyLCD|mDLY[5]~29\ : std_logic;
SIGNAL \MyLCD|mDLY[6]~30_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[6]~31\ : std_logic;
SIGNAL \MyLCD|mDLY[7]~32_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[7]~33\ : std_logic;
SIGNAL \MyLCD|mDLY[8]~34_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[8]~35\ : std_logic;
SIGNAL \MyLCD|mDLY[9]~36_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[9]~37\ : std_logic;
SIGNAL \MyLCD|mDLY[10]~38_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[10]~39\ : std_logic;
SIGNAL \MyLCD|mDLY[11]~40_combout\ : std_logic;
SIGNAL \MyLCD|LessThan0~3_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[11]~41\ : std_logic;
SIGNAL \MyLCD|mDLY[12]~43\ : std_logic;
SIGNAL \MyLCD|mDLY[13]~44_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[13]~45\ : std_logic;
SIGNAL \MyLCD|mDLY[14]~47\ : std_logic;
SIGNAL \MyLCD|mDLY[15]~49\ : std_logic;
SIGNAL \MyLCD|mDLY[16]~50_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[14]~46_combout\ : std_logic;
SIGNAL \MyLCD|LessThan0~4_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[3]~24_combout\ : std_logic;
SIGNAL \MyLCD|LessThan0~0_combout\ : std_logic;
SIGNAL \MyLCD|mDLY[5]~28_combout\ : std_logic;
SIGNAL \MyLCD|LessThan0~1_combout\ : std_logic;
SIGNAL \MyLCD|LessThan0~2_combout\ : std_logic;
SIGNAL \MyLCD|LessThan0~5_combout\ : std_logic;
SIGNAL \MyLCD|Selector4~0_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_ST.000011~regout\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[2]~11\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[3]~12_combout\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[1]~8_combout\ : std_logic;
SIGNAL \MyLCD|LessThan1~2_combout\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[3]~13\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[4]~15\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[5]~16_combout\ : std_logic;
SIGNAL \MyLCD|LessThan1~3_combout\ : std_logic;
SIGNAL \MyLCD|Mux6~0_combout\ : std_logic;
SIGNAL \KEY[2]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \myReg|Decoder0~0_combout\ : std_logic;
SIGNAL \myReg|register[2][1]~regout\ : std_logic;
SIGNAL \myReg|Decoder0~1_combout\ : std_logic;
SIGNAL \myReg|register[3][1]~regout\ : std_logic;
SIGNAL \myReg|Mux2~3_combout\ : std_logic;
SIGNAL \myReg|Decoder0~2_combout\ : std_logic;
SIGNAL \myReg|register[1][1]~regout\ : std_logic;
SIGNAL \myReg|register[6][1]~feeder_combout\ : std_logic;
SIGNAL \myReg|Decoder0~3_combout\ : std_logic;
SIGNAL \myReg|register[6][1]~regout\ : std_logic;
SIGNAL \myReg|Decoder0~6_combout\ : std_logic;
SIGNAL \myReg|register[7][1]~regout\ : std_logic;
SIGNAL \myReg|Decoder0~5_combout\ : std_logic;
SIGNAL \myReg|register[4][1]~regout\ : std_logic;
SIGNAL \myReg|register[5][1]~feeder_combout\ : std_logic;
SIGNAL \myReg|Decoder0~4_combout\ : std_logic;
SIGNAL \myReg|register[5][1]~regout\ : std_logic;
SIGNAL \myReg|Mux6~0_combout\ : std_logic;
SIGNAL \myReg|Mux6~1_combout\ : std_logic;
SIGNAL \myReg|Mux6~2_combout\ : std_logic;
SIGNAL \myReg|Mux6~combout\ : std_logic;
SIGNAL \myReg|register[2][3]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[2][3]~regout\ : std_logic;
SIGNAL \myReg|register[3][3]~regout\ : std_logic;
SIGNAL \myReg|register[1][3]~regout\ : std_logic;
SIGNAL \myReg|register[6][3]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[6][3]~regout\ : std_logic;
SIGNAL \myReg|register[7][3]~regout\ : std_logic;
SIGNAL \myReg|register[4][3]~regout\ : std_logic;
SIGNAL \myReg|register[5][3]~regout\ : std_logic;
SIGNAL \myReg|Mux4~0_combout\ : std_logic;
SIGNAL \myReg|Mux4~1_combout\ : std_logic;
SIGNAL \myReg|Mux4~2_combout\ : std_logic;
SIGNAL \myReg|Mux4~combout\ : std_logic;
SIGNAL \myReg|Mux2~0_combout\ : std_logic;
SIGNAL \myReg|register[3][2]~regout\ : std_logic;
SIGNAL \myReg|register[1][2]~regout\ : std_logic;
SIGNAL \myReg|register[5][2]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[5][2]~regout\ : std_logic;
SIGNAL \myReg|register[7][2]~regout\ : std_logic;
SIGNAL \myReg|register[4][2]~regout\ : std_logic;
SIGNAL \myReg|register[6][2]~regout\ : std_logic;
SIGNAL \myReg|Mux5~0_combout\ : std_logic;
SIGNAL \myReg|Mux5~1_combout\ : std_logic;
SIGNAL \myReg|Mux5~2_combout\ : std_logic;
SIGNAL \myReg|Mux5~combout\ : std_logic;
SIGNAL \MyLCD|LessThan3~0_combout\ : std_logic;
SIGNAL \MyLCD|Add3~0_combout\ : std_logic;
SIGNAL \MyLCD|LUT_INDEX[4]~14_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~0_combout\ : std_logic;
SIGNAL \myReg|register[3][4]~regout\ : std_logic;
SIGNAL \myReg|Mux2~4_combout\ : std_logic;
SIGNAL \myReg|register[1][4]~regout\ : std_logic;
SIGNAL \myReg|register[5][4]~regout\ : std_logic;
SIGNAL \myReg|register[4][4]~regout\ : std_logic;
SIGNAL \myReg|register[6][4]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[6][4]~regout\ : std_logic;
SIGNAL \myReg|Mux3~0_combout\ : std_logic;
SIGNAL \myReg|Mux3~1_combout\ : std_logic;
SIGNAL \myReg|Mux3~2_combout\ : std_logic;
SIGNAL \myReg|Mux3~combout\ : std_logic;
SIGNAL \MyLCD|Add2~0_combout\ : std_logic;
SIGNAL \myMUX|out_mux[3]~5_combout\ : std_logic;
SIGNAL \myULA|Mux0~0_combout\ : std_logic;
SIGNAL \myReg|register[2][0]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[2][0]~regout\ : std_logic;
SIGNAL \myReg|register[3][0]~regout\ : std_logic;
SIGNAL \myReg|register[1][0]~regout\ : std_logic;
SIGNAL \myReg|register[6][0]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[6][0]~regout\ : std_logic;
SIGNAL \myReg|register[7][0]~regout\ : std_logic;
SIGNAL \myReg|register[4][0]~regout\ : std_logic;
SIGNAL \myReg|register[5][0]~regout\ : std_logic;
SIGNAL \myReg|Mux7~0_combout\ : std_logic;
SIGNAL \myReg|Mux7~1_combout\ : std_logic;
SIGNAL \myReg|Mux7~2_combout\ : std_logic;
SIGNAL \myReg|Mux7~combout\ : std_logic;
SIGNAL \myULA|Add0~7_cout\ : std_logic;
SIGNAL \myULA|Add0~9\ : std_logic;
SIGNAL \myULA|Add0~11\ : std_logic;
SIGNAL \myULA|Add0~13\ : std_logic;
SIGNAL \myULA|Add0~14_combout\ : std_logic;
SIGNAL \myULA|ULAResult~5_combout\ : std_logic;
SIGNAL \myULA|Mux4~0_combout\ : std_logic;
SIGNAL \myULA|Mux4~combout\ : std_logic;
SIGNAL \myMUX|out_mux[1]~3_combout\ : std_logic;
SIGNAL \myULA|Add0~10_combout\ : std_logic;
SIGNAL \myULA|ULAResult~3_combout\ : std_logic;
SIGNAL \myULA|Mux6~0_combout\ : std_logic;
SIGNAL \myULA|Mux6~combout\ : std_logic;
SIGNAL \MyLCD|LessThan11~0_combout\ : std_logic;
SIGNAL \MyLCD|Add11~0_combout\ : std_logic;
SIGNAL \myReg|register[3][6]~regout\ : std_logic;
SIGNAL \myReg|register[1][6]~regout\ : std_logic;
SIGNAL \myReg|register[7][6]~regout\ : std_logic;
SIGNAL \myReg|register[5][6]~regout\ : std_logic;
SIGNAL \myReg|register[4][6]~regout\ : std_logic;
SIGNAL \myReg|register[6][6]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[6][6]~regout\ : std_logic;
SIGNAL \myReg|Mux1~0_combout\ : std_logic;
SIGNAL \myReg|Mux1~1_combout\ : std_logic;
SIGNAL \myReg|Mux1~2_combout\ : std_logic;
SIGNAL \myReg|Mux1~combout\ : std_logic;
SIGNAL \myULA|Mux0~1_combout\ : std_logic;
SIGNAL \myReg|register[2][5]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[2][5]~regout\ : std_logic;
SIGNAL \myReg|register[3][5]~regout\ : std_logic;
SIGNAL \myReg|register[1][5]~regout\ : std_logic;
SIGNAL \myReg|register[6][5]~regout\ : std_logic;
SIGNAL \myReg|register[4][5]~regout\ : std_logic;
SIGNAL \myReg|register[5][5]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[5][5]~regout\ : std_logic;
SIGNAL \myReg|Mux2~1_combout\ : std_logic;
SIGNAL \myReg|Mux2~2_combout\ : std_logic;
SIGNAL \myReg|Mux2~5_combout\ : std_logic;
SIGNAL \myReg|Mux2~combout\ : std_logic;
SIGNAL \myULA|Add0~15\ : std_logic;
SIGNAL \myULA|Add0~17\ : std_logic;
SIGNAL \myULA|Add0~19\ : std_logic;
SIGNAL \myULA|Add0~21_combout\ : std_logic;
SIGNAL \myReg|register[2][6]~regout\ : std_logic;
SIGNAL \myULA|ULAResult~1_combout\ : std_logic;
SIGNAL \myULA|Mux1~0_combout\ : std_logic;
SIGNAL \myMUX|out_mux[6]~1_combout\ : std_logic;
SIGNAL \myULA|Mux1~combout\ : std_logic;
SIGNAL \myReg|register[2][7]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[2][7]~regout\ : std_logic;
SIGNAL \myMUX|out_mux[7]~7_combout\ : std_logic;
SIGNAL \myULA|Mux0~2_combout\ : std_logic;
SIGNAL \myULA|Add0~23_combout\ : std_logic;
SIGNAL \myReg|register[3][7]~regout\ : std_logic;
SIGNAL \myReg|register[1][7]~regout\ : std_logic;
SIGNAL \myReg|register[6][7]~regout\ : std_logic;
SIGNAL \myReg|register[4][7]~regout\ : std_logic;
SIGNAL \myReg|register[5][7]~feeder_combout\ : std_logic;
SIGNAL \myReg|register[5][7]~regout\ : std_logic;
SIGNAL \myReg|Mux0~0_combout\ : std_logic;
SIGNAL \myReg|Mux0~1_combout\ : std_logic;
SIGNAL \myReg|Mux0~2_combout\ : std_logic;
SIGNAL \myReg|Mux0~combout\ : std_logic;
SIGNAL \myULA|Add0~22\ : std_logic;
SIGNAL \myULA|Add0~24_combout\ : std_logic;
SIGNAL \myULA|ULAResult~6_combout\ : std_logic;
SIGNAL \myULA|Mux0~3_combout\ : std_logic;
SIGNAL \myULA|Mux0~combout\ : std_logic;
SIGNAL \MyLCD|LessThan10~0_combout\ : std_logic;
SIGNAL \MyLCD|Add10~0_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~5_combout\ : std_logic;
SIGNAL \MyLCD|Mux6~1_combout\ : std_logic;
SIGNAL \MyLCD|Mux6~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux6~3_combout\ : std_logic;
SIGNAL \MyLCD|Mux6~4_combout\ : std_logic;
SIGNAL \myReg|register[2][4]~regout\ : std_logic;
SIGNAL \myMUX|out_mux[4]~4_combout\ : std_logic;
SIGNAL \MyLCD|Add15~0_combout\ : std_logic;
SIGNAL \MyLCD|Mux6~5_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~0_combout\ : std_logic;
SIGNAL \myReg|register[2][2]~regout\ : std_logic;
SIGNAL \MyLCD|LessThan16~0_combout\ : std_logic;
SIGNAL \MyLCD|Add16~0_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~8_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~7_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~9_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~10_combout\ : std_logic;
SIGNAL \MyLCD|Mux5~0_combout\ : std_logic;
SIGNAL \MyLCD|Add3~1\ : std_logic;
SIGNAL \MyLCD|Add3~2_combout\ : std_logic;
SIGNAL \myMUX|out_mux[5]~0_combout\ : std_logic;
SIGNAL \MyLCD|Add15~1\ : std_logic;
SIGNAL \MyLCD|Add15~2_combout\ : std_logic;
SIGNAL \MyLCD|LessThan14~0_combout\ : std_logic;
SIGNAL \MyLCD|Add14~1\ : std_logic;
SIGNAL \MyLCD|Add14~2_combout\ : std_logic;
SIGNAL \MyLCD|Add10~1\ : std_logic;
SIGNAL \MyLCD|Add10~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux5~1_combout\ : std_logic;
SIGNAL \MyLCD|Mux5~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux5~3_combout\ : std_logic;
SIGNAL \MyLCD|Add2~1\ : std_logic;
SIGNAL \MyLCD|Add2~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux5~4_combout\ : std_logic;
SIGNAL \MyLCD|Mux5~5_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[1]~1_combout\ : std_logic;
SIGNAL \MyLCD|Add16~1\ : std_logic;
SIGNAL \MyLCD|Add16~2_combout\ : std_logic;
SIGNAL \MyLCD|Add15~3\ : std_logic;
SIGNAL \MyLCD|Add15~4_combout\ : std_logic;
SIGNAL \MyLCD|Add11~1\ : std_logic;
SIGNAL \MyLCD|Add11~3\ : std_logic;
SIGNAL \MyLCD|Add11~4_combout\ : std_logic;
SIGNAL \MyLCD|Add10~3\ : std_logic;
SIGNAL \MyLCD|Add10~4_combout\ : std_logic;
SIGNAL \MyLCD|Mux4~0_combout\ : std_logic;
SIGNAL \MyLCD|Mux4~1_combout\ : std_logic;
SIGNAL \MyLCD|Mux4~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux4~4_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[2]~2_combout\ : std_logic;
SIGNAL \MyLCD|Add16~3\ : std_logic;
SIGNAL \MyLCD|Add16~4_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~6_combout\ : std_logic;
SIGNAL \MyLCD|Add15~5\ : std_logic;
SIGNAL \MyLCD|Add15~6_combout\ : std_logic;
SIGNAL \MyLCD|Add3~3\ : std_logic;
SIGNAL \MyLCD|Add3~5\ : std_logic;
SIGNAL \MyLCD|Add3~6_combout\ : std_logic;
SIGNAL \MyLCD|Add2~3\ : std_logic;
SIGNAL \MyLCD|Add2~5\ : std_logic;
SIGNAL \MyLCD|Add2~6_combout\ : std_logic;
SIGNAL \MyLCD|Add11~5\ : std_logic;
SIGNAL \MyLCD|Add11~6_combout\ : std_logic;
SIGNAL \MyLCD|Add14~3\ : std_logic;
SIGNAL \MyLCD|Add14~5\ : std_logic;
SIGNAL \MyLCD|Add14~6_combout\ : std_logic;
SIGNAL \MyLCD|Mux3~0_combout\ : std_logic;
SIGNAL \MyLCD|Add10~5\ : std_logic;
SIGNAL \MyLCD|Add10~6_combout\ : std_logic;
SIGNAL \MyLCD|Mux3~1_combout\ : std_logic;
SIGNAL \MyLCD|Mux3~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux3~3_combout\ : std_logic;
SIGNAL \MyLCD|Mux3~4_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[3]~3_combout\ : std_logic;
SIGNAL \MyLCD|Add16~5\ : std_logic;
SIGNAL \MyLCD|Add16~6_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~1_combout\ : std_logic;
SIGNAL \MyLCD|Add14~7\ : std_logic;
SIGNAL \MyLCD|Add14~8_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~8_combout\ : std_logic;
SIGNAL \MyLCD|Add16~7\ : std_logic;
SIGNAL \MyLCD|Add16~8_combout\ : std_logic;
SIGNAL \MyLCD|Add11~7\ : std_logic;
SIGNAL \MyLCD|Add11~8_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~3_combout\ : std_logic;
SIGNAL \MyLCD|Add3~7\ : std_logic;
SIGNAL \MyLCD|Add3~8_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~4_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~6_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~14_combout\ : std_logic;
SIGNAL \MyLCD|Add10~7\ : std_logic;
SIGNAL \MyLCD|Add10~8_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~5_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~15_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~7_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~9_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~10_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~13_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~11_combout\ : std_logic;
SIGNAL \MyLCD|Mux2~12_combout\ : std_logic;
SIGNAL \MyLCD|Mux1~4_combout\ : std_logic;
SIGNAL \MyLCD|Mux1~8_combout\ : std_logic;
SIGNAL \MyLCD|Mux1~5_combout\ : std_logic;
SIGNAL \MyLCD|Mux1~6_combout\ : std_logic;
SIGNAL \MyLCD|Mux1~7_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~6_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_DATA[0]~4_combout\ : std_logic;
SIGNAL \MyLCD|Add2~7\ : std_logic;
SIGNAL \MyLCD|Add2~8_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~4_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~1_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~2_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~3_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~5_combout\ : std_logic;
SIGNAL \MyLCD|Mux0~7_combout\ : std_logic;
SIGNAL \MyLCD|LUT_DATA~0_combout\ : std_logic;
SIGNAL \MyLCD|LUT_DATA~1_combout\ : std_logic;
SIGNAL \myDecod01|WideOr7~0_combout\ : std_logic;
SIGNAL \myDecod01|WideOr6~0_combout\ : std_logic;
SIGNAL \myDecod01|WideOr5~0_combout\ : std_logic;
SIGNAL \myDecod01|WideOr4~0_combout\ : std_logic;
SIGNAL \myDecod01|WideOr3~0_combout\ : std_logic;
SIGNAL \myDecod01|WideOr2~0_combout\ : std_logic;
SIGNAL \myDecod01|WideOr1~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr7~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr6~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr5~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr4~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr3~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr2~0_combout\ : std_logic;
SIGNAL \myDecod02|WideOr1~0_combout\ : std_logic;
SIGNAL \myULA|ULAResult~4_combout\ : std_logic;
SIGNAL \myULA|Add0~16_combout\ : std_logic;
SIGNAL \myULA|Mux3~0_combout\ : std_logic;
SIGNAL \myULA|Mux3~combout\ : std_logic;
SIGNAL \myULA|Equal0~1_combout\ : std_logic;
SIGNAL \myMUX|out_mux[0]~6_combout\ : std_logic;
SIGNAL \myULA|Mux7~0_combout\ : std_logic;
SIGNAL \myULA|Add0~8_combout\ : std_logic;
SIGNAL \myMUX|out_mux[2]~2_combout\ : std_logic;
SIGNAL \myULA|LessThan0~1_cout\ : std_logic;
SIGNAL \myULA|LessThan0~3_cout\ : std_logic;
SIGNAL \myULA|LessThan0~5_cout\ : std_logic;
SIGNAL \myULA|LessThan0~7_cout\ : std_logic;
SIGNAL \myULA|LessThan0~9_cout\ : std_logic;
SIGNAL \myULA|LessThan0~11_cout\ : std_logic;
SIGNAL \myULA|LessThan0~13_cout\ : std_logic;
SIGNAL \myULA|LessThan0~14_combout\ : std_logic;
SIGNAL \myULA|Mux7~2_combout\ : std_logic;
SIGNAL \myULA|Mux7~3_combout\ : std_logic;
SIGNAL \myULA|ULAResult~0_combout\ : std_logic;
SIGNAL \myULA|Add0~18_combout\ : std_logic;
SIGNAL \myULA|Mux2~0_combout\ : std_logic;
SIGNAL \myULA|Mux2~combout\ : std_logic;
SIGNAL \myULA|ULAResult~2_combout\ : std_logic;
SIGNAL \myULA|Add0~12_combout\ : std_logic;
SIGNAL \myULA|Mux5~0_combout\ : std_logic;
SIGNAL \myULA|Mux5~combout\ : std_logic;
SIGNAL \myULA|Equal0~0_combout\ : std_logic;
SIGNAL \myULA|Equal0~2_combout\ : std_logic;
SIGNAL \MyLCD|u0|Selector3~0_combout\ : std_logic;
SIGNAL \MyLCD|u0|LCD_EN~regout\ : std_logic;
SIGNAL \MyLCD|WideOr0~0_combout\ : std_logic;
SIGNAL \MyLCD|WideOr0~1_combout\ : std_logic;
SIGNAL \MyLCD|mLCD_RS~regout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MyLCD|mDLY\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MyLCD|LUT_INDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \MyLCD|mLCD_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MyLCD|u0|Cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MyLCD|ALT_INV_mLCD_ST.000000~regout\ : std_logic;
SIGNAL \myDecod02|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \myDecod01|ALT_INV_WideOr7~0_combout\ : std_logic;

BEGIN

ww_CLOCK_27 <= CLOCK_27;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
UART_TXD <= ww_UART_TXD;
ww_UART_RXD <= UART_RXD;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\KEY[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[2]~clk_delay_ctrl_clkout\);

\KEY[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[1]~clk_delay_ctrl_clkout\);
\ALT_INV_KEY[2]~clkctrl_outclk\ <= NOT \KEY[2]~clkctrl_outclk\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\ALT_INV_KEY~combout\(1) <= NOT \KEY~combout\(1);
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\MyLCD|ALT_INV_mLCD_ST.000000~regout\ <= NOT \MyLCD|mLCD_ST.000000~regout\;
\myDecod02|ALT_INV_WideOr7~0_combout\ <= NOT \myDecod02|WideOr7~0_combout\;
\myDecod01|ALT_INV_WideOr7~0_combout\ <= NOT \myDecod01|WideOr7~0_combout\;

-- Location: LCCOMB_X29_Y18_N10
\MyLCD|u0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Add0~6_combout\ = (\MyLCD|u0|Cont\(3) & (!\MyLCD|u0|Add0~5\)) # (!\MyLCD|u0|Cont\(3) & ((\MyLCD|u0|Add0~5\) # (GND)))
-- \MyLCD|u0|Add0~7\ = CARRY((!\MyLCD|u0|Add0~5\) # (!\MyLCD|u0|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Cont\(3),
	datad => VCC,
	cin => \MyLCD|u0|Add0~5\,
	combout => \MyLCD|u0|Add0~6_combout\,
	cout => \MyLCD|u0|Add0~7\);

-- Location: LCFF_X31_Y17_N17
\MyLCD|mDLY[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[17]~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(17));

-- Location: LCFF_X31_Y18_N17
\MyLCD|mDLY[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[1]~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(1));

-- Location: LCFF_X31_Y17_N7
\MyLCD|mDLY[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[12]~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(12));

-- Location: LCFF_X31_Y17_N13
\MyLCD|mDLY[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[15]~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(15));

-- Location: LCCOMB_X28_Y12_N14
\MyLCD|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add13~0_combout\ = (\myReg|register[2][4]~regout\ & (\MyLCD|LessThan13~0_combout\ $ (VCC))) # (!\myReg|register[2][4]~regout\ & (\MyLCD|LessThan13~0_combout\ & VCC))
-- \MyLCD|Add13~1\ = CARRY((\myReg|register[2][4]~regout\ & \MyLCD|LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][4]~regout\,
	datab => \MyLCD|LessThan13~0_combout\,
	datad => VCC,
	combout => \MyLCD|Add13~0_combout\,
	cout => \MyLCD|Add13~1\);

-- Location: LCCOMB_X27_Y15_N12
\MyLCD|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add14~0_combout\ = (\myReg|register[2][0]~regout\ & (\MyLCD|LessThan14~0_combout\ $ (VCC))) # (!\myReg|register[2][0]~regout\ & (\MyLCD|LessThan14~0_combout\ & VCC))
-- \MyLCD|Add14~1\ = CARRY((\myReg|register[2][0]~regout\ & \MyLCD|LessThan14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][0]~regout\,
	datab => \MyLCD|LessThan14~0_combout\,
	datad => VCC,
	combout => \MyLCD|Add14~0_combout\,
	cout => \MyLCD|Add14~1\);

-- Location: LCCOMB_X28_Y14_N24
\MyLCD|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add11~2_combout\ = (\myULA|Mux6~combout\ & ((\MyLCD|LessThan11~0_combout\ & (\MyLCD|Add11~1\ & VCC)) # (!\MyLCD|LessThan11~0_combout\ & (!\MyLCD|Add11~1\)))) # (!\myULA|Mux6~combout\ & ((\MyLCD|LessThan11~0_combout\ & (!\MyLCD|Add11~1\)) # 
-- (!\MyLCD|LessThan11~0_combout\ & ((\MyLCD|Add11~1\) # (GND)))))
-- \MyLCD|Add11~3\ = CARRY((\myULA|Mux6~combout\ & (!\MyLCD|LessThan11~0_combout\ & !\MyLCD|Add11~1\)) # (!\myULA|Mux6~combout\ & ((!\MyLCD|Add11~1\) # (!\MyLCD|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux6~combout\,
	datab => \MyLCD|LessThan11~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add11~1\,
	combout => \MyLCD|Add11~2_combout\,
	cout => \MyLCD|Add11~3\);

-- Location: LCCOMB_X28_Y12_N16
\MyLCD|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add13~2_combout\ = (\myReg|register[2][5]~regout\ & ((\MyLCD|LessThan13~0_combout\ & (\MyLCD|Add13~1\ & VCC)) # (!\MyLCD|LessThan13~0_combout\ & (!\MyLCD|Add13~1\)))) # (!\myReg|register[2][5]~regout\ & ((\MyLCD|LessThan13~0_combout\ & 
-- (!\MyLCD|Add13~1\)) # (!\MyLCD|LessThan13~0_combout\ & ((\MyLCD|Add13~1\) # (GND)))))
-- \MyLCD|Add13~3\ = CARRY((\myReg|register[2][5]~regout\ & (!\MyLCD|LessThan13~0_combout\ & !\MyLCD|Add13~1\)) # (!\myReg|register[2][5]~regout\ & ((!\MyLCD|Add13~1\) # (!\MyLCD|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][5]~regout\,
	datab => \MyLCD|LessThan13~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add13~1\,
	combout => \MyLCD|Add13~2_combout\,
	cout => \MyLCD|Add13~3\);

-- Location: LCCOMB_X28_Y12_N18
\MyLCD|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add13~4_combout\ = ((\myReg|register[2][6]~regout\ $ (\MyLCD|LessThan13~0_combout\ $ (!\MyLCD|Add13~3\)))) # (GND)
-- \MyLCD|Add13~5\ = CARRY((\myReg|register[2][6]~regout\ & ((\MyLCD|LessThan13~0_combout\) # (!\MyLCD|Add13~3\))) # (!\myReg|register[2][6]~regout\ & (\MyLCD|LessThan13~0_combout\ & !\MyLCD|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][6]~regout\,
	datab => \MyLCD|LessThan13~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add13~3\,
	combout => \MyLCD|Add13~4_combout\,
	cout => \MyLCD|Add13~5\);

-- Location: LCCOMB_X27_Y15_N16
\MyLCD|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add14~4_combout\ = ((\myReg|register[2][2]~regout\ $ (\MyLCD|LessThan14~0_combout\ $ (!\MyLCD|Add14~3\)))) # (GND)
-- \MyLCD|Add14~5\ = CARRY((\myReg|register[2][2]~regout\ & ((\MyLCD|LessThan14~0_combout\) # (!\MyLCD|Add14~3\))) # (!\myReg|register[2][2]~regout\ & (\MyLCD|LessThan14~0_combout\ & !\MyLCD|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][2]~regout\,
	datab => \MyLCD|LessThan14~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add14~3\,
	combout => \MyLCD|Add14~4_combout\,
	cout => \MyLCD|Add14~5\);

-- Location: LCCOMB_X27_Y14_N26
\MyLCD|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add3~4_combout\ = ((\myReg|Mux5~combout\ $ (\MyLCD|LessThan3~0_combout\ $ (!\MyLCD|Add3~3\)))) # (GND)
-- \MyLCD|Add3~5\ = CARRY((\myReg|Mux5~combout\ & ((\MyLCD|LessThan3~0_combout\) # (!\MyLCD|Add3~3\))) # (!\myReg|Mux5~combout\ & (\MyLCD|LessThan3~0_combout\ & !\MyLCD|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux5~combout\,
	datab => \MyLCD|LessThan3~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add3~3\,
	combout => \MyLCD|Add3~4_combout\,
	cout => \MyLCD|Add3~5\);

-- Location: LCCOMB_X29_Y13_N10
\MyLCD|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add2~4_combout\ = ((\MyLCD|LessThan2~0_combout\ $ (\myReg|Mux1~combout\ $ (!\MyLCD|Add2~3\)))) # (GND)
-- \MyLCD|Add2~5\ = CARRY((\MyLCD|LessThan2~0_combout\ & ((\myReg|Mux1~combout\) # (!\MyLCD|Add2~3\))) # (!\MyLCD|LessThan2~0_combout\ & (\myReg|Mux1~combout\ & !\MyLCD|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan2~0_combout\,
	datab => \myReg|Mux1~combout\,
	datad => VCC,
	cin => \MyLCD|Add2~3\,
	combout => \MyLCD|Add2~4_combout\,
	cout => \MyLCD|Add2~5\);

-- Location: LCCOMB_X28_Y12_N20
\MyLCD|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add13~6_combout\ = (\myReg|register[2][7]~regout\ & (!\MyLCD|Add13~5\)) # (!\myReg|register[2][7]~regout\ & ((\MyLCD|Add13~5\) # (GND)))
-- \MyLCD|Add13~7\ = CARRY((!\MyLCD|Add13~5\) # (!\myReg|register[2][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myReg|register[2][7]~regout\,
	datad => VCC,
	cin => \MyLCD|Add13~5\,
	combout => \MyLCD|Add13~6_combout\,
	cout => \MyLCD|Add13~7\);

-- Location: LCCOMB_X28_Y13_N16
\MyLCD|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add15~6_combout\ = (\MyLCD|Add15~5\ & ((\SW~combout\(17)) # ((!\myReg|register[2][7]~regout\)))) # (!\MyLCD|Add15~5\ & (((!\SW~combout\(17) & \myReg|register[2][7]~regout\)) # (GND)))
-- \MyLCD|Add15~7\ = CARRY((\SW~combout\(17)) # ((!\MyLCD|Add15~5\) # (!\myReg|register[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \myReg|register[2][7]~regout\,
	datad => VCC,
	cin => \MyLCD|Add15~5\,
	combout => \MyLCD|Add15~6_combout\,
	cout => \MyLCD|Add15~7\);

-- Location: LCCOMB_X28_Y12_N22
\MyLCD|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add13~8_combout\ = \MyLCD|Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add13~7\,
	combout => \MyLCD|Add13~8_combout\);

-- Location: LCCOMB_X28_Y13_N18
\MyLCD|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add15~8_combout\ = \MyLCD|Add15~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add15~7\,
	combout => \MyLCD|Add15~8_combout\);

-- Location: LCCOMB_X31_Y18_N16
\MyLCD|mDLY[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[1]~20_combout\ = (\MyLCD|mDLY\(1) & (!\MyLCD|mDLY[0]~19\)) # (!\MyLCD|mDLY\(1) & ((\MyLCD|mDLY[0]~19\) # (GND)))
-- \MyLCD|mDLY[1]~21\ = CARRY((!\MyLCD|mDLY[0]~19\) # (!\MyLCD|mDLY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(1),
	datad => VCC,
	cin => \MyLCD|mDLY[0]~19\,
	combout => \MyLCD|mDLY[1]~20_combout\,
	cout => \MyLCD|mDLY[1]~21\);

-- Location: LCCOMB_X31_Y17_N6
\MyLCD|mDLY[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[12]~42_combout\ = (\MyLCD|mDLY\(12) & (\MyLCD|mDLY[11]~41\ $ (GND))) # (!\MyLCD|mDLY\(12) & (!\MyLCD|mDLY[11]~41\ & VCC))
-- \MyLCD|mDLY[12]~43\ = CARRY((\MyLCD|mDLY\(12) & !\MyLCD|mDLY[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(12),
	datad => VCC,
	cin => \MyLCD|mDLY[11]~41\,
	combout => \MyLCD|mDLY[12]~42_combout\,
	cout => \MyLCD|mDLY[12]~43\);

-- Location: LCCOMB_X31_Y17_N12
\MyLCD|mDLY[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[15]~48_combout\ = (\MyLCD|mDLY\(15) & (!\MyLCD|mDLY[14]~47\)) # (!\MyLCD|mDLY\(15) & ((\MyLCD|mDLY[14]~47\) # (GND)))
-- \MyLCD|mDLY[15]~49\ = CARRY((!\MyLCD|mDLY[14]~47\) # (!\MyLCD|mDLY\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(15),
	datad => VCC,
	cin => \MyLCD|mDLY[14]~47\,
	combout => \MyLCD|mDLY[15]~48_combout\,
	cout => \MyLCD|mDLY[15]~49\);

-- Location: LCCOMB_X31_Y17_N14
\MyLCD|mDLY[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[16]~50_combout\ = (\MyLCD|mDLY\(16) & (\MyLCD|mDLY[15]~49\ $ (GND))) # (!\MyLCD|mDLY\(16) & (!\MyLCD|mDLY[15]~49\ & VCC))
-- \MyLCD|mDLY[16]~51\ = CARRY((\MyLCD|mDLY\(16) & !\MyLCD|mDLY[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(16),
	datad => VCC,
	cin => \MyLCD|mDLY[15]~49\,
	combout => \MyLCD|mDLY[16]~50_combout\,
	cout => \MyLCD|mDLY[16]~51\);

-- Location: LCCOMB_X31_Y17_N16
\MyLCD|mDLY[17]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[17]~52_combout\ = \MyLCD|mDLY\(17) $ (\MyLCD|mDLY[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(17),
	cin => \MyLCD|mDLY[16]~51\,
	combout => \MyLCD|mDLY[17]~52_combout\);

-- Location: LCFF_X31_Y12_N17
\myReg|register[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][5]~regout\);

-- Location: LCCOMB_X30_Y13_N30
\myULA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~0_combout\ = \SW~combout\(8) $ (((!\SW~combout\(17) & \myReg|register[2][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \SW~combout\(17),
	datad => \myReg|register[2][5]~regout\,
	combout => \myULA|Add0~0_combout\);

-- Location: LCCOMB_X28_Y12_N30
\myULA|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~1_combout\ = \SW~combout\(8) $ (((!\SW~combout\(17) & \myReg|register[2][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \SW~combout\(17),
	datad => \myReg|register[2][4]~regout\,
	combout => \myULA|Add0~1_combout\);

-- Location: LCFF_X30_Y12_N27
\myReg|register[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][4]~regout\);

-- Location: LCCOMB_X31_Y14_N26
\myULA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~2_combout\ = \SW~combout\(8) $ (((!\SW~combout\(17) & \myReg|register[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \SW~combout\(8),
	datad => \myReg|register[2][3]~regout\,
	combout => \myULA|Add0~2_combout\);

-- Location: LCCOMB_X28_Y14_N20
\myULA|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~3_combout\ = \SW~combout\(8) $ (((\SW~combout\(17)) # (\myReg|register[2][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \SW~combout\(8),
	datad => \myReg|register[2][2]~regout\,
	combout => \myULA|Add0~3_combout\);

-- Location: LCCOMB_X30_Y14_N4
\myULA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~4_combout\ = \SW~combout\(8) $ (((\SW~combout\(17)) # (\myReg|register[2][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datac => \SW~combout\(8),
	datad => \myReg|register[2][1]~regout\,
	combout => \myULA|Add0~4_combout\);

-- Location: LCCOMB_X30_Y14_N6
\myULA|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~5_combout\ = \SW~combout\(8) $ (((\SW~combout\(17)) # (\myReg|register[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datac => \SW~combout\(8),
	datad => \myReg|register[2][0]~regout\,
	combout => \myULA|Add0~5_combout\);

-- Location: LCCOMB_X28_Y12_N24
\myULA|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~20_combout\ = \SW~combout\(8) $ (((!\SW~combout\(17) & \myReg|register[2][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \SW~combout\(17),
	datad => \myReg|register[2][6]~regout\,
	combout => \myULA|Add0~20_combout\);

-- Location: LCCOMB_X28_Y14_N2
\myULA|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux7~1_combout\ = (!\SW~combout\(8) & (\SW~combout\(10) & (\myReg|Mux7~combout\ $ (\myMUX|out_mux[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(10),
	datac => \myReg|Mux7~combout\,
	datad => \myMUX|out_mux[0]~6_combout\,
	combout => \myULA|Mux7~1_combout\);

-- Location: LCFF_X31_Y12_N11
\myReg|register[7][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[7][7]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][7]~regout\);

-- Location: LCFF_X29_Y18_N25
\MyLCD|u0|Cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector5~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|Cont\(3));

-- Location: LCCOMB_X29_Y12_N30
\MyLCD|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan13~0_combout\ = (\myReg|register[2][7]~regout\ & ((\myReg|register[2][6]~regout\) # (\myReg|register[2][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][6]~regout\,
	datab => \myReg|register[2][7]~regout\,
	datad => \myReg|register[2][5]~regout\,
	combout => \MyLCD|LessThan13~0_combout\);

-- Location: LCCOMB_X29_Y13_N16
\MyLCD|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan2~0_combout\ = (\myReg|Mux0~combout\ & ((\myReg|Mux2~combout\) # (\myReg|Mux1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myReg|Mux2~combout\,
	datac => \myReg|Mux0~combout\,
	datad => \myReg|Mux1~combout\,
	combout => \MyLCD|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y12_N10
\MyLCD|LessThan15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan15~0_combout\ = (\SW~combout\(17)) # (((!\myReg|register[2][5]~regout\ & !\myReg|register[2][6]~regout\)) # (!\myReg|register[2][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][5]~regout\,
	datab => \SW~combout\(17),
	datac => \myReg|register[2][6]~regout\,
	datad => \myReg|register[2][7]~regout\,
	combout => \MyLCD|LessThan15~0_combout\);

-- Location: LCCOMB_X27_Y15_N6
\MyLCD|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux4~3_combout\ = (\MyLCD|Mux2~0_combout\ & ((\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Add3~4_combout\))) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & (\MyLCD|Add2~4_combout\)))) # (!\MyLCD|Mux2~0_combout\ & (((\MyLCD|mLCD_DATA[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add2~4_combout\,
	datab => \MyLCD|Add3~4_combout\,
	datac => \MyLCD|Mux2~0_combout\,
	datad => \MyLCD|mLCD_DATA[0]~4_combout\,
	combout => \MyLCD|Mux4~3_combout\);

-- Location: LCCOMB_X30_Y15_N12
\MyLCD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~0_combout\ = (\MyLCD|mLCD_DATA[0]~10_combout\ & (!\MyLCD|mLCD_DATA[0]~8_combout\ & (\MyLCD|Add16~8_combout\ & !\MyLCD|mLCD_DATA[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~10_combout\,
	datab => \MyLCD|mLCD_DATA[0]~8_combout\,
	datac => \MyLCD|Add16~8_combout\,
	datad => \MyLCD|mLCD_DATA[0]~7_combout\,
	combout => \MyLCD|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\MyLCD|u0|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector2~1_combout\ = (!\MyLCD|u0|Cont\(4) & \MyLCD|u0|ST.10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Cont\(4),
	datac => \MyLCD|u0|ST.10~regout\,
	combout => \MyLCD|u0|Selector2~1_combout\);

-- Location: LCCOMB_X29_Y18_N24
\MyLCD|u0|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector5~1_combout\ = (\MyLCD|u0|Selector2~1_combout\ & ((\MyLCD|u0|Add0~6_combout\) # ((\MyLCD|u0|Selector5~0_combout\ & \MyLCD|u0|Cont\(3))))) # (!\MyLCD|u0|Selector2~1_combout\ & (\MyLCD|u0|Selector5~0_combout\ & (\MyLCD|u0|Cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Selector2~1_combout\,
	datab => \MyLCD|u0|Selector5~0_combout\,
	datac => \MyLCD|u0|Cont\(3),
	datad => \MyLCD|u0|Add0~6_combout\,
	combout => \MyLCD|u0|Selector5~1_combout\);

-- Location: LCCOMB_X30_Y18_N6
\MyLCD|u0|oDone~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|oDone~0_combout\ = (\MyLCD|u0|oDone~regout\ & ((\MyLCD|u0|preStart~regout\) # (!\MyLCD|mLCD_Start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|u0|preStart~regout\,
	datac => \MyLCD|mLCD_Start~regout\,
	datad => \MyLCD|u0|oDone~regout\,
	combout => \MyLCD|u0|oDone~0_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15),
	combout => \SW~combout\(15));

-- Location: CLKDELAYCTRL_G4
\KEY[1]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[1]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\KEY[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y12_N10
\myReg|register[7][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[7][7]~feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \myReg|register[7][7]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y15_N16
\MyLCD|LUT_INDEX[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_INDEX[0]~6_combout\ = \MyLCD|LUT_INDEX\(0) $ (VCC)
-- \MyLCD|LUT_INDEX[0]~7\ = CARRY(\MyLCD|LUT_INDEX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(0),
	datad => VCC,
	combout => \MyLCD|LUT_INDEX[0]~6_combout\,
	cout => \MyLCD|LUT_INDEX[0]~7\);

-- Location: LCCOMB_X30_Y15_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X29_Y15_N18
\MyLCD|LUT_INDEX[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_INDEX[1]~8_combout\ = (\MyLCD|LUT_INDEX\(1) & (!\MyLCD|LUT_INDEX[0]~7\)) # (!\MyLCD|LUT_INDEX\(1) & ((\MyLCD|LUT_INDEX[0]~7\) # (GND)))
-- \MyLCD|LUT_INDEX[1]~9\ = CARRY((!\MyLCD|LUT_INDEX[0]~7\) # (!\MyLCD|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datad => VCC,
	cin => \MyLCD|LUT_INDEX[0]~7\,
	combout => \MyLCD|LUT_INDEX[1]~8_combout\,
	cout => \MyLCD|LUT_INDEX[1]~9\);

-- Location: LCCOMB_X29_Y15_N20
\MyLCD|LUT_INDEX[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_INDEX[2]~10_combout\ = (\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX[1]~9\ $ (GND))) # (!\MyLCD|LUT_INDEX\(2) & (!\MyLCD|LUT_INDEX[1]~9\ & VCC))
-- \MyLCD|LUT_INDEX[2]~11\ = CARRY((\MyLCD|LUT_INDEX\(2) & !\MyLCD|LUT_INDEX[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(2),
	datad => VCC,
	cin => \MyLCD|LUT_INDEX[1]~9\,
	combout => \MyLCD|LUT_INDEX[2]~10_combout\,
	cout => \MyLCD|LUT_INDEX[2]~11\);

-- Location: LCCOMB_X31_Y18_N14
\MyLCD|mDLY[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[0]~18_combout\ = \MyLCD|mDLY\(0) $ (VCC)
-- \MyLCD|mDLY[0]~19\ = CARRY(\MyLCD|mDLY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(0),
	datad => VCC,
	combout => \MyLCD|mDLY[0]~18_combout\,
	cout => \MyLCD|mDLY[0]~19\);

-- Location: LCCOMB_X30_Y18_N26
\MyLCD|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Selector0~0_combout\ = (\MyLCD|mLCD_Start~regout\ & ((!\MyLCD|u0|oDone~regout\) # (!\MyLCD|mLCD_ST.000001~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_ST.000001~regout\,
	datab => \MyLCD|u0|oDone~regout\,
	datac => \MyLCD|mLCD_Start~regout\,
	combout => \MyLCD|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y18_N8
\MyLCD|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Selector0~1_combout\ = (\MyLCD|Selector0~0_combout\) # ((!\MyLCD|mLCD_ST.000001~regout\ & (!\MyLCD|mLCD_ST.000011~regout\ & !\MyLCD|mLCD_ST.000010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_ST.000001~regout\,
	datab => \MyLCD|mLCD_ST.000011~regout\,
	datac => \MyLCD|mLCD_ST.000010~regout\,
	datad => \MyLCD|Selector0~0_combout\,
	combout => \MyLCD|Selector0~1_combout\);

-- Location: LCFF_X30_Y18_N9
\MyLCD|mLCD_Start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Selector0~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_Start~regout\);

-- Location: LCFF_X30_Y18_N3
\MyLCD|u0|preStart\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \MyLCD|mLCD_Start~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|preStart~regout\);

-- Location: LCCOMB_X30_Y18_N22
\MyLCD|u0|mStart~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|mStart~0_combout\ = (\MyLCD|u0|mStart~regout\ & (!\MyLCD|u0|ST.11~regout\)) # (!\MyLCD|u0|mStart~regout\ & (((\MyLCD|mLCD_Start~regout\ & !\MyLCD|u0|preStart~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|ST.11~regout\,
	datab => \MyLCD|mLCD_Start~regout\,
	datac => \MyLCD|u0|mStart~regout\,
	datad => \MyLCD|u0|preStart~regout\,
	combout => \MyLCD|u0|mStart~0_combout\);

-- Location: LCFF_X30_Y18_N23
\MyLCD|u0|mStart\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|mStart~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|mStart~regout\);

-- Location: LCCOMB_X30_Y18_N24
\MyLCD|u0|ST.00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|ST.00~0_combout\ = !\MyLCD|u0|ST.11~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyLCD|u0|ST.11~regout\,
	combout => \MyLCD|u0|ST.00~0_combout\);

-- Location: LCFF_X30_Y18_N25
\MyLCD|u0|ST.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|ST.00~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|ST.00~regout\);

-- Location: LCCOMB_X29_Y18_N26
\MyLCD|u0|ST.01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|ST.01~0_combout\ = !\MyLCD|u0|ST.00~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyLCD|u0|ST.00~regout\,
	combout => \MyLCD|u0|ST.01~0_combout\);

-- Location: LCFF_X29_Y18_N27
\MyLCD|u0|ST.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|ST.01~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|ST.01~regout\);

-- Location: LCCOMB_X29_Y18_N14
\MyLCD|u0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector2~0_combout\ = (\MyLCD|u0|ST.01~regout\) # ((!\MyLCD|u0|Cont\(4) & \MyLCD|u0|ST.10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Cont\(4),
	datab => \MyLCD|u0|ST.01~regout\,
	datac => \MyLCD|u0|ST.10~regout\,
	combout => \MyLCD|u0|Selector2~0_combout\);

-- Location: LCFF_X29_Y18_N15
\MyLCD|u0|ST.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|ST.10~regout\);

-- Location: LCCOMB_X29_Y18_N18
\MyLCD|u0|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector4~0_combout\ = (\MyLCD|u0|Cont\(4) & ((\MyLCD|u0|ST.01~regout\) # ((\MyLCD|u0|ST.10~regout\) # (!\MyLCD|u0|ST.00~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Cont\(4),
	datab => \MyLCD|u0|ST.01~regout\,
	datac => \MyLCD|u0|ST.10~regout\,
	datad => \MyLCD|u0|ST.00~regout\,
	combout => \MyLCD|u0|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\MyLCD|u0|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector5~0_combout\ = (\MyLCD|u0|ST.01~regout\) # (((\MyLCD|u0|Cont\(4) & \MyLCD|u0|ST.10~regout\)) # (!\MyLCD|u0|ST.00~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Cont\(4),
	datab => \MyLCD|u0|ST.01~regout\,
	datac => \MyLCD|u0|ST.10~regout\,
	datad => \MyLCD|u0|ST.00~regout\,
	combout => \MyLCD|u0|Selector5~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
\MyLCD|u0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Add0~0_combout\ = \MyLCD|u0|Cont\(0) $ (VCC)
-- \MyLCD|u0|Add0~1\ = CARRY(\MyLCD|u0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|u0|Cont\(0),
	datad => VCC,
	combout => \MyLCD|u0|Add0~0_combout\,
	cout => \MyLCD|u0|Add0~1\);

-- Location: LCCOMB_X29_Y18_N22
\MyLCD|u0|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector8~0_combout\ = (\MyLCD|u0|Selector2~1_combout\ & ((\MyLCD|u0|Add0~0_combout\) # ((\MyLCD|u0|Cont\(0) & \MyLCD|u0|Selector5~0_combout\)))) # (!\MyLCD|u0|Selector2~1_combout\ & (((\MyLCD|u0|Cont\(0) & \MyLCD|u0|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Selector2~1_combout\,
	datab => \MyLCD|u0|Add0~0_combout\,
	datac => \MyLCD|u0|Cont\(0),
	datad => \MyLCD|u0|Selector5~0_combout\,
	combout => \MyLCD|u0|Selector8~0_combout\);

-- Location: LCFF_X29_Y18_N23
\MyLCD|u0|Cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector8~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|Cont\(0));

-- Location: LCCOMB_X29_Y18_N6
\MyLCD|u0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Add0~2_combout\ = (\MyLCD|u0|Cont\(1) & (!\MyLCD|u0|Add0~1\)) # (!\MyLCD|u0|Cont\(1) & ((\MyLCD|u0|Add0~1\) # (GND)))
-- \MyLCD|u0|Add0~3\ = CARRY((!\MyLCD|u0|Add0~1\) # (!\MyLCD|u0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|u0|Cont\(1),
	datad => VCC,
	cin => \MyLCD|u0|Add0~1\,
	combout => \MyLCD|u0|Add0~2_combout\,
	cout => \MyLCD|u0|Add0~3\);

-- Location: LCCOMB_X29_Y18_N28
\MyLCD|u0|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector7~0_combout\ = (\MyLCD|u0|Selector2~1_combout\ & ((\MyLCD|u0|Add0~2_combout\) # ((\MyLCD|u0|Selector5~0_combout\ & \MyLCD|u0|Cont\(1))))) # (!\MyLCD|u0|Selector2~1_combout\ & (\MyLCD|u0|Selector5~0_combout\ & (\MyLCD|u0|Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Selector2~1_combout\,
	datab => \MyLCD|u0|Selector5~0_combout\,
	datac => \MyLCD|u0|Cont\(1),
	datad => \MyLCD|u0|Add0~2_combout\,
	combout => \MyLCD|u0|Selector7~0_combout\);

-- Location: LCFF_X29_Y18_N29
\MyLCD|u0|Cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector7~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|Cont\(1));

-- Location: LCCOMB_X29_Y18_N8
\MyLCD|u0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Add0~4_combout\ = (\MyLCD|u0|Cont\(2) & (\MyLCD|u0|Add0~3\ $ (GND))) # (!\MyLCD|u0|Cont\(2) & (!\MyLCD|u0|Add0~3\ & VCC))
-- \MyLCD|u0|Add0~5\ = CARRY((\MyLCD|u0|Cont\(2) & !\MyLCD|u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|u0|Cont\(2),
	datad => VCC,
	cin => \MyLCD|u0|Add0~3\,
	combout => \MyLCD|u0|Add0~4_combout\,
	cout => \MyLCD|u0|Add0~5\);

-- Location: LCCOMB_X29_Y18_N2
\MyLCD|u0|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector6~0_combout\ = (\MyLCD|u0|Selector2~1_combout\ & ((\MyLCD|u0|Add0~4_combout\) # ((\MyLCD|u0|Cont\(2) & \MyLCD|u0|Selector5~0_combout\)))) # (!\MyLCD|u0|Selector2~1_combout\ & (((\MyLCD|u0|Cont\(2) & \MyLCD|u0|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Selector2~1_combout\,
	datab => \MyLCD|u0|Add0~4_combout\,
	datac => \MyLCD|u0|Cont\(2),
	datad => \MyLCD|u0|Selector5~0_combout\,
	combout => \MyLCD|u0|Selector6~0_combout\);

-- Location: LCFF_X29_Y18_N3
\MyLCD|u0|Cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector6~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|Cont\(2));

-- Location: LCCOMB_X29_Y18_N12
\MyLCD|u0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Add0~8_combout\ = \MyLCD|u0|Cont\(4) $ (!\MyLCD|u0|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|Cont\(4),
	cin => \MyLCD|u0|Add0~7\,
	combout => \MyLCD|u0|Add0~8_combout\);

-- Location: LCCOMB_X29_Y18_N16
\MyLCD|u0|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector4~1_combout\ = (\MyLCD|u0|Selector4~0_combout\) # ((\MyLCD|u0|ST.10~regout\ & \MyLCD|u0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|u0|Selector4~0_combout\,
	datac => \MyLCD|u0|ST.10~regout\,
	datad => \MyLCD|u0|Add0~8_combout\,
	combout => \MyLCD|u0|Selector4~1_combout\);

-- Location: LCFF_X29_Y18_N17
\MyLCD|u0|Cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector4~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|Cont\(4));

-- Location: LCCOMB_X30_Y18_N10
\MyLCD|u0|ST~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|ST~14_combout\ = (\MyLCD|u0|ST.10~regout\ & \MyLCD|u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|ST.10~regout\,
	datad => \MyLCD|u0|Cont\(4),
	combout => \MyLCD|u0|ST~14_combout\);

-- Location: LCFF_X30_Y18_N11
\MyLCD|u0|ST.11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|ST~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|ST.11~regout\);

-- Location: LCCOMB_X30_Y18_N18
\MyLCD|u0|oDone~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|oDone~1_combout\ = (\MyLCD|u0|oDone~0_combout\) # ((\MyLCD|u0|mStart~regout\ & \MyLCD|u0|ST.11~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|oDone~0_combout\,
	datab => \MyLCD|u0|mStart~regout\,
	datad => \MyLCD|u0|ST.11~regout\,
	combout => \MyLCD|u0|oDone~1_combout\);

-- Location: LCFF_X30_Y18_N19
\MyLCD|u0|oDone\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|oDone~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|oDone~regout\);

-- Location: LCCOMB_X30_Y18_N20
\MyLCD|mLCD_ST.000000~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_ST.000000~0_combout\ = !\MyLCD|mLCD_ST.000011~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyLCD|mLCD_ST.000011~regout\,
	combout => \MyLCD|mLCD_ST.000000~0_combout\);

-- Location: LCFF_X30_Y18_N21
\MyLCD|mLCD_ST.000000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mLCD_ST.000000~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_ST.000000~regout\);

-- Location: LCCOMB_X30_Y18_N4
\MyLCD|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Selector2~0_combout\ = (!\MyLCD|mLCD_ST.000011~regout\ & ((\MyLCD|mLCD_ST.000001~regout\ & (!\MyLCD|u0|oDone~regout\)) # (!\MyLCD|mLCD_ST.000001~regout\ & ((!\MyLCD|mLCD_ST.000000~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_ST.000001~regout\,
	datab => \MyLCD|u0|oDone~regout\,
	datac => \MyLCD|mLCD_ST.000000~regout\,
	datad => \MyLCD|mLCD_ST.000011~regout\,
	combout => \MyLCD|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\MyLCD|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Selector2~1_combout\ = (\MyLCD|Selector2~0_combout\ & ((!\MyLCD|LessThan0~5_combout\) # (!\MyLCD|mLCD_ST.000010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_ST.000010~regout\,
	datab => \MyLCD|Selector2~0_combout\,
	datac => \MyLCD|LessThan0~5_combout\,
	combout => \MyLCD|Selector2~1_combout\);

-- Location: LCFF_X30_Y18_N13
\MyLCD|mLCD_ST.000001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Selector2~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_ST.000001~regout\);

-- Location: LCCOMB_X30_Y18_N16
\MyLCD|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Selector3~0_combout\ = (\MyLCD|LessThan0~5_combout\ & (\MyLCD|u0|oDone~regout\ & ((\MyLCD|mLCD_ST.000001~regout\)))) # (!\MyLCD|LessThan0~5_combout\ & ((\MyLCD|mLCD_ST.000010~regout\) # ((\MyLCD|u0|oDone~regout\ & \MyLCD|mLCD_ST.000001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan0~5_combout\,
	datab => \MyLCD|u0|oDone~regout\,
	datac => \MyLCD|mLCD_ST.000010~regout\,
	datad => \MyLCD|mLCD_ST.000001~regout\,
	combout => \MyLCD|Selector3~0_combout\);

-- Location: LCFF_X30_Y18_N17
\MyLCD|mLCD_ST.000010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Selector3~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_ST.000010~regout\);

-- Location: LCFF_X31_Y18_N15
\MyLCD|mDLY[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[0]~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(0));

-- Location: LCCOMB_X31_Y18_N18
\MyLCD|mDLY[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[2]~22_combout\ = (\MyLCD|mDLY\(2) & (\MyLCD|mDLY[1]~21\ $ (GND))) # (!\MyLCD|mDLY\(2) & (!\MyLCD|mDLY[1]~21\ & VCC))
-- \MyLCD|mDLY[2]~23\ = CARRY((\MyLCD|mDLY\(2) & !\MyLCD|mDLY[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(2),
	datad => VCC,
	cin => \MyLCD|mDLY[1]~21\,
	combout => \MyLCD|mDLY[2]~22_combout\,
	cout => \MyLCD|mDLY[2]~23\);

-- Location: LCFF_X31_Y18_N19
\MyLCD|mDLY[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[2]~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(2));

-- Location: LCCOMB_X31_Y18_N20
\MyLCD|mDLY[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[3]~24_combout\ = (\MyLCD|mDLY\(3) & (!\MyLCD|mDLY[2]~23\)) # (!\MyLCD|mDLY\(3) & ((\MyLCD|mDLY[2]~23\) # (GND)))
-- \MyLCD|mDLY[3]~25\ = CARRY((!\MyLCD|mDLY[2]~23\) # (!\MyLCD|mDLY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(3),
	datad => VCC,
	cin => \MyLCD|mDLY[2]~23\,
	combout => \MyLCD|mDLY[3]~24_combout\,
	cout => \MyLCD|mDLY[3]~25\);

-- Location: LCCOMB_X31_Y18_N22
\MyLCD|mDLY[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[4]~26_combout\ = (\MyLCD|mDLY\(4) & (\MyLCD|mDLY[3]~25\ $ (GND))) # (!\MyLCD|mDLY\(4) & (!\MyLCD|mDLY[3]~25\ & VCC))
-- \MyLCD|mDLY[4]~27\ = CARRY((\MyLCD|mDLY\(4) & !\MyLCD|mDLY[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(4),
	datad => VCC,
	cin => \MyLCD|mDLY[3]~25\,
	combout => \MyLCD|mDLY[4]~26_combout\,
	cout => \MyLCD|mDLY[4]~27\);

-- Location: LCFF_X31_Y18_N23
\MyLCD|mDLY[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[4]~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(4));

-- Location: LCCOMB_X31_Y18_N24
\MyLCD|mDLY[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[5]~28_combout\ = (\MyLCD|mDLY\(5) & (!\MyLCD|mDLY[4]~27\)) # (!\MyLCD|mDLY\(5) & ((\MyLCD|mDLY[4]~27\) # (GND)))
-- \MyLCD|mDLY[5]~29\ = CARRY((!\MyLCD|mDLY[4]~27\) # (!\MyLCD|mDLY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(5),
	datad => VCC,
	cin => \MyLCD|mDLY[4]~27\,
	combout => \MyLCD|mDLY[5]~28_combout\,
	cout => \MyLCD|mDLY[5]~29\);

-- Location: LCCOMB_X31_Y18_N26
\MyLCD|mDLY[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[6]~30_combout\ = (\MyLCD|mDLY\(6) & (\MyLCD|mDLY[5]~29\ $ (GND))) # (!\MyLCD|mDLY\(6) & (!\MyLCD|mDLY[5]~29\ & VCC))
-- \MyLCD|mDLY[6]~31\ = CARRY((\MyLCD|mDLY\(6) & !\MyLCD|mDLY[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(6),
	datad => VCC,
	cin => \MyLCD|mDLY[5]~29\,
	combout => \MyLCD|mDLY[6]~30_combout\,
	cout => \MyLCD|mDLY[6]~31\);

-- Location: LCFF_X31_Y18_N27
\MyLCD|mDLY[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[6]~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(6));

-- Location: LCCOMB_X31_Y18_N28
\MyLCD|mDLY[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[7]~32_combout\ = (\MyLCD|mDLY\(7) & (!\MyLCD|mDLY[6]~31\)) # (!\MyLCD|mDLY\(7) & ((\MyLCD|mDLY[6]~31\) # (GND)))
-- \MyLCD|mDLY[7]~33\ = CARRY((!\MyLCD|mDLY[6]~31\) # (!\MyLCD|mDLY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(7),
	datad => VCC,
	cin => \MyLCD|mDLY[6]~31\,
	combout => \MyLCD|mDLY[7]~32_combout\,
	cout => \MyLCD|mDLY[7]~33\);

-- Location: LCFF_X31_Y18_N29
\MyLCD|mDLY[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[7]~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(7));

-- Location: LCCOMB_X31_Y18_N30
\MyLCD|mDLY[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[8]~34_combout\ = (\MyLCD|mDLY\(8) & (\MyLCD|mDLY[7]~33\ $ (GND))) # (!\MyLCD|mDLY\(8) & (!\MyLCD|mDLY[7]~33\ & VCC))
-- \MyLCD|mDLY[8]~35\ = CARRY((\MyLCD|mDLY\(8) & !\MyLCD|mDLY[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(8),
	datad => VCC,
	cin => \MyLCD|mDLY[7]~33\,
	combout => \MyLCD|mDLY[8]~34_combout\,
	cout => \MyLCD|mDLY[8]~35\);

-- Location: LCFF_X31_Y18_N31
\MyLCD|mDLY[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[8]~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(8));

-- Location: LCCOMB_X31_Y17_N0
\MyLCD|mDLY[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[9]~36_combout\ = (\MyLCD|mDLY\(9) & (!\MyLCD|mDLY[8]~35\)) # (!\MyLCD|mDLY\(9) & ((\MyLCD|mDLY[8]~35\) # (GND)))
-- \MyLCD|mDLY[9]~37\ = CARRY((!\MyLCD|mDLY[8]~35\) # (!\MyLCD|mDLY\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(9),
	datad => VCC,
	cin => \MyLCD|mDLY[8]~35\,
	combout => \MyLCD|mDLY[9]~36_combout\,
	cout => \MyLCD|mDLY[9]~37\);

-- Location: LCFF_X31_Y17_N1
\MyLCD|mDLY[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[9]~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(9));

-- Location: LCCOMB_X31_Y17_N2
\MyLCD|mDLY[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[10]~38_combout\ = (\MyLCD|mDLY\(10) & (\MyLCD|mDLY[9]~37\ $ (GND))) # (!\MyLCD|mDLY\(10) & (!\MyLCD|mDLY[9]~37\ & VCC))
-- \MyLCD|mDLY[10]~39\ = CARRY((\MyLCD|mDLY\(10) & !\MyLCD|mDLY[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(10),
	datad => VCC,
	cin => \MyLCD|mDLY[9]~37\,
	combout => \MyLCD|mDLY[10]~38_combout\,
	cout => \MyLCD|mDLY[10]~39\);

-- Location: LCFF_X31_Y17_N3
\MyLCD|mDLY[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[10]~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(10));

-- Location: LCCOMB_X31_Y17_N4
\MyLCD|mDLY[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[11]~40_combout\ = (\MyLCD|mDLY\(11) & (!\MyLCD|mDLY[10]~39\)) # (!\MyLCD|mDLY\(11) & ((\MyLCD|mDLY[10]~39\) # (GND)))
-- \MyLCD|mDLY[11]~41\ = CARRY((!\MyLCD|mDLY[10]~39\) # (!\MyLCD|mDLY\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(11),
	datad => VCC,
	cin => \MyLCD|mDLY[10]~39\,
	combout => \MyLCD|mDLY[11]~40_combout\,
	cout => \MyLCD|mDLY[11]~41\);

-- Location: LCFF_X31_Y17_N5
\MyLCD|mDLY[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[11]~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(11));

-- Location: LCCOMB_X31_Y17_N26
\MyLCD|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan0~3_combout\ = (\MyLCD|mDLY\(12) & (\MyLCD|mDLY\(10) & (\MyLCD|mDLY\(11) & \MyLCD|mDLY\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(12),
	datab => \MyLCD|mDLY\(10),
	datac => \MyLCD|mDLY\(11),
	datad => \MyLCD|mDLY\(9),
	combout => \MyLCD|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y17_N8
\MyLCD|mDLY[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[13]~44_combout\ = (\MyLCD|mDLY\(13) & (!\MyLCD|mDLY[12]~43\)) # (!\MyLCD|mDLY\(13) & ((\MyLCD|mDLY[12]~43\) # (GND)))
-- \MyLCD|mDLY[13]~45\ = CARRY((!\MyLCD|mDLY[12]~43\) # (!\MyLCD|mDLY\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mDLY\(13),
	datad => VCC,
	cin => \MyLCD|mDLY[12]~43\,
	combout => \MyLCD|mDLY[13]~44_combout\,
	cout => \MyLCD|mDLY[13]~45\);

-- Location: LCFF_X31_Y17_N9
\MyLCD|mDLY[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[13]~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(13));

-- Location: LCCOMB_X31_Y17_N10
\MyLCD|mDLY[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mDLY[14]~46_combout\ = (\MyLCD|mDLY\(14) & (\MyLCD|mDLY[13]~45\ $ (GND))) # (!\MyLCD|mDLY\(14) & (!\MyLCD|mDLY[13]~45\ & VCC))
-- \MyLCD|mDLY[14]~47\ = CARRY((\MyLCD|mDLY\(14) & !\MyLCD|mDLY[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(14),
	datad => VCC,
	cin => \MyLCD|mDLY[13]~45\,
	combout => \MyLCD|mDLY[14]~46_combout\,
	cout => \MyLCD|mDLY[14]~47\);

-- Location: LCFF_X31_Y17_N15
\MyLCD|mDLY[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[16]~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(16));

-- Location: LCFF_X31_Y17_N11
\MyLCD|mDLY[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[14]~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(14));

-- Location: LCCOMB_X31_Y17_N20
\MyLCD|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan0~4_combout\ = (\MyLCD|mDLY\(15) & (\MyLCD|mDLY\(16) & (\MyLCD|mDLY\(13) & \MyLCD|mDLY\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(15),
	datab => \MyLCD|mDLY\(16),
	datac => \MyLCD|mDLY\(13),
	datad => \MyLCD|mDLY\(14),
	combout => \MyLCD|LessThan0~4_combout\);

-- Location: LCFF_X31_Y18_N21
\MyLCD|mDLY[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[3]~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(3));

-- Location: LCCOMB_X31_Y18_N4
\MyLCD|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan0~0_combout\ = (\MyLCD|mDLY\(1) & (\MyLCD|mDLY\(4) & (\MyLCD|mDLY\(3) & \MyLCD|mDLY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(1),
	datab => \MyLCD|mDLY\(4),
	datac => \MyLCD|mDLY\(3),
	datad => \MyLCD|mDLY\(2),
	combout => \MyLCD|LessThan0~0_combout\);

-- Location: LCFF_X31_Y18_N25
\MyLCD|mDLY[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mDLY[5]~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|LessThan0~5_combout\,
	ena => \MyLCD|mLCD_ST.000010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mDLY\(5));

-- Location: LCCOMB_X31_Y18_N2
\MyLCD|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan0~1_combout\ = (\MyLCD|mDLY\(5) & \MyLCD|mDLY\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MyLCD|mDLY\(5),
	datad => \MyLCD|mDLY\(6),
	combout => \MyLCD|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y18_N12
\MyLCD|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan0~2_combout\ = (\MyLCD|mDLY\(8) & (\MyLCD|mDLY\(7) & (\MyLCD|LessThan0~0_combout\ & \MyLCD|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(8),
	datab => \MyLCD|mDLY\(7),
	datac => \MyLCD|LessThan0~0_combout\,
	datad => \MyLCD|LessThan0~1_combout\,
	combout => \MyLCD|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y17_N22
\MyLCD|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan0~5_combout\ = (\MyLCD|mDLY\(17) & (\MyLCD|LessThan0~3_combout\ & (\MyLCD|LessThan0~4_combout\ & \MyLCD|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mDLY\(17),
	datab => \MyLCD|LessThan0~3_combout\,
	datac => \MyLCD|LessThan0~4_combout\,
	datad => \MyLCD|LessThan0~2_combout\,
	combout => \MyLCD|LessThan0~5_combout\);

-- Location: LCCOMB_X30_Y18_N28
\MyLCD|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Selector4~0_combout\ = (\MyLCD|mLCD_ST.000010~regout\ & \MyLCD|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_ST.000010~regout\,
	datac => \MyLCD|LessThan0~5_combout\,
	combout => \MyLCD|Selector4~0_combout\);

-- Location: LCFF_X30_Y18_N29
\MyLCD|mLCD_ST.000011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Selector4~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_ST.000011~regout\);

-- Location: LCFF_X29_Y15_N21
\MyLCD|LUT_INDEX[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_INDEX[2]~10_combout\,
	sdata => VCC,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \MyLCD|LessThan1~3_combout\,
	ena => \MyLCD|mLCD_ST.000011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|LUT_INDEX\(2));

-- Location: LCCOMB_X29_Y15_N22
\MyLCD|LUT_INDEX[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_INDEX[3]~12_combout\ = (\MyLCD|LUT_INDEX\(3) & (!\MyLCD|LUT_INDEX[2]~11\)) # (!\MyLCD|LUT_INDEX\(3) & ((\MyLCD|LUT_INDEX[2]~11\) # (GND)))
-- \MyLCD|LUT_INDEX[3]~13\ = CARRY((!\MyLCD|LUT_INDEX[2]~11\) # (!\MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(3),
	datad => VCC,
	cin => \MyLCD|LUT_INDEX[2]~11\,
	combout => \MyLCD|LUT_INDEX[3]~12_combout\,
	cout => \MyLCD|LUT_INDEX[3]~13\);

-- Location: LCFF_X29_Y15_N23
\MyLCD|LUT_INDEX[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_INDEX[3]~12_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \MyLCD|LessThan1~3_combout\,
	ena => \MyLCD|mLCD_ST.000011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|LUT_INDEX\(3));

-- Location: LCFF_X29_Y15_N19
\MyLCD|LUT_INDEX[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_INDEX[1]~8_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \MyLCD|LessThan1~3_combout\,
	ena => \MyLCD|mLCD_ST.000011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|LUT_INDEX\(1));

-- Location: LCCOMB_X30_Y15_N14
\MyLCD|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan1~2_combout\ = ((!\MyLCD|LUT_INDEX\(0) & !\MyLCD|LUT_INDEX\(1))) # (!\MyLCD|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(0),
	datac => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|LUT_INDEX\(1),
	combout => \MyLCD|LessThan1~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\MyLCD|LUT_INDEX[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_INDEX[4]~14_combout\ = (\MyLCD|LUT_INDEX\(4) & (\MyLCD|LUT_INDEX[3]~13\ $ (GND))) # (!\MyLCD|LUT_INDEX\(4) & (!\MyLCD|LUT_INDEX[3]~13\ & VCC))
-- \MyLCD|LUT_INDEX[4]~15\ = CARRY((\MyLCD|LUT_INDEX\(4) & !\MyLCD|LUT_INDEX[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(4),
	datad => VCC,
	cin => \MyLCD|LUT_INDEX[3]~13\,
	combout => \MyLCD|LUT_INDEX[4]~14_combout\,
	cout => \MyLCD|LUT_INDEX[4]~15\);

-- Location: LCCOMB_X29_Y15_N26
\MyLCD|LUT_INDEX[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_INDEX[5]~16_combout\ = \MyLCD|LUT_INDEX[4]~15\ $ (\MyLCD|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MyLCD|LUT_INDEX\(5),
	cin => \MyLCD|LUT_INDEX[4]~15\,
	combout => \MyLCD|LUT_INDEX[5]~16_combout\);

-- Location: LCFF_X29_Y15_N27
\MyLCD|LUT_INDEX[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_INDEX[5]~16_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \MyLCD|LessThan1~3_combout\,
	ena => \MyLCD|mLCD_ST.000011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|LUT_INDEX\(5));

-- Location: LCCOMB_X30_Y15_N30
\MyLCD|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan1~3_combout\ = (\MyLCD|LUT_INDEX\(5) & ((\MyLCD|LUT_INDEX\(4)) # ((\MyLCD|LUT_INDEX\(3)) # (!\MyLCD|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(4),
	datab => \MyLCD|LUT_INDEX\(3),
	datac => \MyLCD|LessThan1~2_combout\,
	datad => \MyLCD|LUT_INDEX\(5),
	combout => \MyLCD|LessThan1~3_combout\);

-- Location: LCFF_X29_Y15_N17
\MyLCD|LUT_INDEX[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_INDEX[0]~6_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \MyLCD|LessThan1~3_combout\,
	ena => \MyLCD|mLCD_ST.000011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|LUT_INDEX\(0));

-- Location: LCCOMB_X27_Y15_N8
\MyLCD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux6~0_combout\ = (\MyLCD|LUT_INDEX\(0)) # (!\MyLCD|LUT_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datad => \MyLCD|LUT_INDEX\(0),
	combout => \MyLCD|Mux6~0_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: CLKDELAYCTRL_G5
\KEY[2]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[2]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G5
\KEY[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[2]~clkctrl_outclk\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: LCCOMB_X31_Y13_N12
\myReg|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~0_combout\ = (\SW~combout\(15) & (!\SW~combout\(14) & !\SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~0_combout\);

-- Location: LCFF_X29_Y14_N19
\myReg|register[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][1]~regout\);

-- Location: LCCOMB_X31_Y13_N2
\myReg|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~1_combout\ = (\SW~combout\(15) & (\SW~combout\(14) & !\SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~1_combout\);

-- Location: LCFF_X30_Y14_N31
\myReg|register[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][1]~regout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: LCCOMB_X30_Y12_N16
\myReg|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~3_combout\ = (\SW~combout\(13)) # ((\SW~combout\(11) & !\SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(13),
	datac => \SW~combout\(12),
	combout => \myReg|Mux2~3_combout\);

-- Location: LCCOMB_X31_Y13_N0
\myReg|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~2_combout\ = (!\SW~combout\(15) & (\SW~combout\(14) & !\SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~2_combout\);

-- Location: LCFF_X30_Y14_N13
\myReg|register[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][1]~regout\);

-- Location: LCCOMB_X31_Y12_N14
\myReg|register[6][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[6][1]~feeder_combout\ = \SW~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(1),
	combout => \myReg|register[6][1]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N18
\myReg|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~3_combout\ = (\SW~combout\(15) & (!\SW~combout\(14) & \SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~3_combout\);

-- Location: LCFF_X31_Y12_N15
\myReg|register[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[6][1]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][1]~regout\);

-- Location: LCCOMB_X31_Y13_N8
\myReg|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~6_combout\ = (\SW~combout\(15) & (\SW~combout\(14) & \SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~6_combout\);

-- Location: LCFF_X30_Y12_N7
\myReg|register[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][1]~regout\);

-- Location: LCCOMB_X31_Y13_N26
\myReg|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~5_combout\ = (!\SW~combout\(15) & (!\SW~combout\(14) & \SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~5_combout\);

-- Location: LCFF_X30_Y12_N29
\myReg|register[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][1]~regout\);

-- Location: LCCOMB_X29_Y12_N18
\myReg|register[5][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[5][1]~feeder_combout\ = \SW~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(1),
	combout => \myReg|register[5][1]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N16
\myReg|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Decoder0~4_combout\ = (!\SW~combout\(15) & (\SW~combout\(14) & \SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \SW~combout\(16),
	combout => \myReg|Decoder0~4_combout\);

-- Location: LCFF_X29_Y12_N19
\myReg|register[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[5][1]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][1]~regout\);

-- Location: LCCOMB_X30_Y12_N28
\myReg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux6~0_combout\ = (\SW~combout\(11) & ((\SW~combout\(12)) # ((\myReg|register[5][1]~regout\)))) # (!\SW~combout\(11) & (!\SW~combout\(12) & (\myReg|register[4][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][1]~regout\,
	datad => \myReg|register[5][1]~regout\,
	combout => \myReg|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y12_N6
\myReg|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux6~1_combout\ = (\SW~combout\(12) & ((\myReg|Mux6~0_combout\ & ((\myReg|register[7][1]~regout\))) # (!\myReg|Mux6~0_combout\ & (\myReg|register[6][1]~regout\)))) # (!\SW~combout\(12) & (((\myReg|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \myReg|register[6][1]~regout\,
	datac => \myReg|register[7][1]~regout\,
	datad => \myReg|Mux6~0_combout\,
	combout => \myReg|Mux6~1_combout\);

-- Location: LCCOMB_X30_Y14_N12
\myReg|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux6~2_combout\ = (\myReg|Mux2~4_combout\ & (((\myReg|Mux6~1_combout\)) # (!\myReg|Mux2~3_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|Mux2~3_combout\ & (\myReg|register[1][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~4_combout\,
	datab => \myReg|Mux2~3_combout\,
	datac => \myReg|register[1][1]~regout\,
	datad => \myReg|Mux6~1_combout\,
	combout => \myReg|Mux6~2_combout\);

-- Location: LCCOMB_X30_Y14_N30
\myReg|Mux6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux6~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux6~2_combout\ & ((\myReg|register[3][1]~regout\))) # (!\myReg|Mux6~2_combout\ & (\myReg|register[2][1]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~0_combout\,
	datab => \myReg|register[2][1]~regout\,
	datac => \myReg|register[3][1]~regout\,
	datad => \myReg|Mux6~2_combout\,
	combout => \myReg|Mux6~combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X31_Y14_N28
\myReg|register[2][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[2][3]~feeder_combout\ = \SW~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(3),
	combout => \myReg|register[2][3]~feeder_combout\);

-- Location: LCFF_X31_Y14_N29
\myReg|register[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[2][3]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][3]~regout\);

-- Location: LCFF_X30_Y14_N1
\myReg|register[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][3]~regout\);

-- Location: LCFF_X30_Y14_N3
\myReg|register[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][3]~regout\);

-- Location: LCCOMB_X31_Y12_N30
\myReg|register[6][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[6][3]~feeder_combout\ = \SW~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(3),
	combout => \myReg|register[6][3]~feeder_combout\);

-- Location: LCFF_X31_Y12_N31
\myReg|register[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[6][3]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][3]~regout\);

-- Location: LCFF_X30_Y12_N11
\myReg|register[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][3]~regout\);

-- Location: LCFF_X30_Y12_N5
\myReg|register[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][3]~regout\);

-- Location: LCFF_X29_Y12_N29
\myReg|register[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][3]~regout\);

-- Location: LCCOMB_X30_Y12_N4
\myReg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux4~0_combout\ = (\SW~combout\(11) & ((\SW~combout\(12)) # ((\myReg|register[5][3]~regout\)))) # (!\SW~combout\(11) & (!\SW~combout\(12) & (\myReg|register[4][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][3]~regout\,
	datad => \myReg|register[5][3]~regout\,
	combout => \myReg|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y12_N10
\myReg|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux4~1_combout\ = (\SW~combout\(12) & ((\myReg|Mux4~0_combout\ & ((\myReg|register[7][3]~regout\))) # (!\myReg|Mux4~0_combout\ & (\myReg|register[6][3]~regout\)))) # (!\SW~combout\(12) & (((\myReg|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \myReg|register[6][3]~regout\,
	datac => \myReg|register[7][3]~regout\,
	datad => \myReg|Mux4~0_combout\,
	combout => \myReg|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y14_N2
\myReg|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux4~2_combout\ = (\myReg|Mux2~4_combout\ & (((\myReg|Mux4~1_combout\)) # (!\myReg|Mux2~3_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|Mux2~3_combout\ & (\myReg|register[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~4_combout\,
	datab => \myReg|Mux2~3_combout\,
	datac => \myReg|register[1][3]~regout\,
	datad => \myReg|Mux4~1_combout\,
	combout => \myReg|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y14_N0
\myReg|Mux4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux4~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux4~2_combout\ & ((\myReg|register[3][3]~regout\))) # (!\myReg|Mux4~2_combout\ & (\myReg|register[2][3]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~0_combout\,
	datab => \myReg|register[2][3]~regout\,
	datac => \myReg|register[3][3]~regout\,
	datad => \myReg|Mux4~2_combout\,
	combout => \myReg|Mux4~combout\);

-- Location: LCCOMB_X30_Y12_N8
\myReg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~0_combout\ = (\SW~combout\(12) & !\SW~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datac => \SW~combout\(13),
	combout => \myReg|Mux2~0_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCFF_X30_Y14_N9
\myReg|register[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][2]~regout\);

-- Location: LCFF_X30_Y14_N27
\myReg|register[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][2]~regout\);

-- Location: LCCOMB_X29_Y12_N4
\myReg|register[5][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[5][2]~feeder_combout\ = \SW~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(2),
	combout => \myReg|register[5][2]~feeder_combout\);

-- Location: LCFF_X29_Y12_N5
\myReg|register[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[5][2]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][2]~regout\);

-- Location: LCFF_X30_Y12_N23
\myReg|register[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][2]~regout\);

-- Location: LCFF_X30_Y12_N1
\myReg|register[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][2]~regout\);

-- Location: LCFF_X31_Y12_N5
\myReg|register[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][2]~regout\);

-- Location: LCCOMB_X30_Y12_N0
\myReg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux5~0_combout\ = (\SW~combout\(11) & (\SW~combout\(12))) # (!\SW~combout\(11) & ((\SW~combout\(12) & ((\myReg|register[6][2]~regout\))) # (!\SW~combout\(12) & (\myReg|register[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][2]~regout\,
	datad => \myReg|register[6][2]~regout\,
	combout => \myReg|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y12_N22
\myReg|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux5~1_combout\ = (\SW~combout\(11) & ((\myReg|Mux5~0_combout\ & ((\myReg|register[7][2]~regout\))) # (!\myReg|Mux5~0_combout\ & (\myReg|register[5][2]~regout\)))) # (!\SW~combout\(11) & (((\myReg|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \myReg|register[5][2]~regout\,
	datac => \myReg|register[7][2]~regout\,
	datad => \myReg|Mux5~0_combout\,
	combout => \myReg|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y14_N26
\myReg|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux5~2_combout\ = (\myReg|Mux2~4_combout\ & (((\myReg|Mux5~1_combout\)) # (!\myReg|Mux2~3_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|Mux2~3_combout\ & (\myReg|register[1][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~4_combout\,
	datab => \myReg|Mux2~3_combout\,
	datac => \myReg|register[1][2]~regout\,
	datad => \myReg|Mux5~1_combout\,
	combout => \myReg|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y14_N8
\myReg|Mux5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux5~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux5~2_combout\ & ((\myReg|register[3][2]~regout\))) # (!\myReg|Mux5~2_combout\ & (\myReg|register[2][2]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][2]~regout\,
	datab => \myReg|Mux2~0_combout\,
	datac => \myReg|register[3][2]~regout\,
	datad => \myReg|Mux5~2_combout\,
	combout => \myReg|Mux5~combout\);

-- Location: LCCOMB_X27_Y14_N0
\MyLCD|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan3~0_combout\ = (\myReg|Mux4~combout\ & ((\myReg|Mux6~combout\) # (\myReg|Mux5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myReg|Mux6~combout\,
	datac => \myReg|Mux4~combout\,
	datad => \myReg|Mux5~combout\,
	combout => \MyLCD|LessThan3~0_combout\);

-- Location: LCCOMB_X27_Y14_N22
\MyLCD|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add3~0_combout\ = (\myReg|Mux7~combout\ & (\MyLCD|LessThan3~0_combout\ $ (VCC))) # (!\myReg|Mux7~combout\ & (\MyLCD|LessThan3~0_combout\ & VCC))
-- \MyLCD|Add3~1\ = CARRY((\myReg|Mux7~combout\ & \MyLCD|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux7~combout\,
	datab => \MyLCD|LessThan3~0_combout\,
	datad => VCC,
	combout => \MyLCD|Add3~0_combout\,
	cout => \MyLCD|Add3~1\);

-- Location: LCFF_X29_Y15_N25
\MyLCD|LUT_INDEX[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_INDEX[4]~14_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \MyLCD|LessThan1~3_combout\,
	ena => \MyLCD|mLCD_ST.000011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|LUT_INDEX\(4));

-- Location: LCCOMB_X29_Y15_N8
\MyLCD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~0_combout\ = (!\MyLCD|LUT_INDEX\(4) & !\MyLCD|LUT_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|Mux2~0_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCFF_X28_Y12_N29
\myReg|register[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][4]~regout\);

-- Location: LCCOMB_X30_Y12_N30
\myReg|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~4_combout\ = (\SW~combout\(13)) # ((\SW~combout\(11) & \SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(13),
	datad => \SW~combout\(12),
	combout => \myReg|Mux2~4_combout\);

-- Location: LCFF_X29_Y12_N25
\myReg|register[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][4]~regout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: LCFF_X29_Y12_N27
\myReg|register[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][4]~regout\);

-- Location: LCFF_X30_Y12_N21
\myReg|register[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][4]~regout\);

-- Location: LCCOMB_X31_Y12_N20
\myReg|register[6][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[6][4]~feeder_combout\ = \SW~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(4),
	combout => \myReg|register[6][4]~feeder_combout\);

-- Location: LCFF_X31_Y12_N21
\myReg|register[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[6][4]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][4]~regout\);

-- Location: LCCOMB_X30_Y12_N20
\myReg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux3~0_combout\ = (\SW~combout\(11) & (\SW~combout\(12))) # (!\SW~combout\(11) & ((\SW~combout\(12) & ((\myReg|register[6][4]~regout\))) # (!\SW~combout\(12) & (\myReg|register[4][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][4]~regout\,
	datad => \myReg|register[6][4]~regout\,
	combout => \myReg|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y12_N26
\myReg|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux3~1_combout\ = (\SW~combout\(11) & ((\myReg|Mux3~0_combout\ & (\myReg|register[7][4]~regout\)) # (!\myReg|Mux3~0_combout\ & ((\myReg|register[5][4]~regout\))))) # (!\SW~combout\(11) & (((\myReg|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[7][4]~regout\,
	datab => \SW~combout\(11),
	datac => \myReg|register[5][4]~regout\,
	datad => \myReg|Mux3~0_combout\,
	combout => \myReg|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y12_N24
\myReg|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux3~2_combout\ = (\myReg|Mux2~3_combout\ & ((\myReg|Mux2~4_combout\ & ((\myReg|Mux3~1_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|register[1][4]~regout\)))) # (!\myReg|Mux2~3_combout\ & (\myReg|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~3_combout\,
	datab => \myReg|Mux2~4_combout\,
	datac => \myReg|register[1][4]~regout\,
	datad => \myReg|Mux3~1_combout\,
	combout => \myReg|Mux3~2_combout\);

-- Location: LCCOMB_X28_Y12_N28
\myReg|Mux3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux3~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux3~2_combout\ & ((\myReg|register[3][4]~regout\))) # (!\myReg|Mux3~2_combout\ & (\myReg|register[2][4]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][4]~regout\,
	datab => \myReg|Mux2~0_combout\,
	datac => \myReg|register[3][4]~regout\,
	datad => \myReg|Mux3~2_combout\,
	combout => \myReg|Mux3~combout\);

-- Location: LCCOMB_X29_Y13_N6
\MyLCD|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add2~0_combout\ = (\MyLCD|LessThan2~0_combout\ & (\myReg|Mux3~combout\ $ (VCC))) # (!\MyLCD|LessThan2~0_combout\ & (\myReg|Mux3~combout\ & VCC))
-- \MyLCD|Add2~1\ = CARRY((\MyLCD|LessThan2~0_combout\ & \myReg|Mux3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan2~0_combout\,
	datab => \myReg|Mux3~combout\,
	datad => VCC,
	combout => \MyLCD|Add2~0_combout\,
	cout => \MyLCD|Add2~1\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
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
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: LCCOMB_X27_Y14_N18
\myMUX|out_mux[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[3]~5_combout\ = (!\SW~combout\(17) & \myReg|register[2][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \myReg|register[2][3]~regout\,
	combout => \myMUX|out_mux[3]~5_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X30_Y13_N24
\myULA|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux0~0_combout\ = (!\SW~combout\(9) & ((!\SW~combout\(8)) # (!\SW~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(10),
	datac => \SW~combout\(9),
	datad => \SW~combout\(8),
	combout => \myULA|Mux0~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X31_Y14_N24
\myReg|register[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[2][0]~feeder_combout\ = \SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(0),
	combout => \myReg|register[2][0]~feeder_combout\);

-- Location: LCFF_X31_Y14_N25
\myReg|register[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[2][0]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][0]~regout\);

-- Location: LCFF_X30_Y14_N25
\myReg|register[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][0]~regout\);

-- Location: LCFF_X30_Y14_N23
\myReg|register[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][0]~regout\);

-- Location: LCCOMB_X31_Y12_N28
\myReg|register[6][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[6][0]~feeder_combout\ = \SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(0),
	combout => \myReg|register[6][0]~feeder_combout\);

-- Location: LCFF_X31_Y12_N29
\myReg|register[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[6][0]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][0]~regout\);

-- Location: LCFF_X30_Y12_N3
\myReg|register[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][0]~regout\);

-- Location: LCFF_X30_Y12_N13
\myReg|register[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][0]~regout\);

-- Location: LCFF_X29_Y12_N3
\myReg|register[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][0]~regout\);

-- Location: LCCOMB_X30_Y12_N12
\myReg|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux7~0_combout\ = (\SW~combout\(11) & ((\SW~combout\(12)) # ((\myReg|register[5][0]~regout\)))) # (!\SW~combout\(11) & (!\SW~combout\(12) & (\myReg|register[4][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][0]~regout\,
	datad => \myReg|register[5][0]~regout\,
	combout => \myReg|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y12_N2
\myReg|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux7~1_combout\ = (\SW~combout\(12) & ((\myReg|Mux7~0_combout\ & ((\myReg|register[7][0]~regout\))) # (!\myReg|Mux7~0_combout\ & (\myReg|register[6][0]~regout\)))) # (!\SW~combout\(12) & (((\myReg|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \myReg|register[6][0]~regout\,
	datac => \myReg|register[7][0]~regout\,
	datad => \myReg|Mux7~0_combout\,
	combout => \myReg|Mux7~1_combout\);

-- Location: LCCOMB_X30_Y14_N22
\myReg|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux7~2_combout\ = (\myReg|Mux2~4_combout\ & (((\myReg|Mux7~1_combout\)) # (!\myReg|Mux2~3_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|Mux2~3_combout\ & (\myReg|register[1][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~4_combout\,
	datab => \myReg|Mux2~3_combout\,
	datac => \myReg|register[1][0]~regout\,
	datad => \myReg|Mux7~1_combout\,
	combout => \myReg|Mux7~2_combout\);

-- Location: LCCOMB_X30_Y14_N24
\myReg|Mux7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux7~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux7~2_combout\ & ((\myReg|register[3][0]~regout\))) # (!\myReg|Mux7~2_combout\ & (\myReg|register[2][0]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~0_combout\,
	datab => \myReg|register[2][0]~regout\,
	datac => \myReg|register[3][0]~regout\,
	datad => \myReg|Mux7~2_combout\,
	combout => \myReg|Mux7~combout\);

-- Location: LCCOMB_X29_Y14_N0
\myULA|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~7_cout\ = CARRY(\SW~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datad => VCC,
	cout => \myULA|Add0~7_cout\);

-- Location: LCCOMB_X29_Y14_N2
\myULA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~8_combout\ = (\myULA|Add0~5_combout\ & ((\myReg|Mux7~combout\ & (\myULA|Add0~7_cout\ & VCC)) # (!\myReg|Mux7~combout\ & (!\myULA|Add0~7_cout\)))) # (!\myULA|Add0~5_combout\ & ((\myReg|Mux7~combout\ & (!\myULA|Add0~7_cout\)) # 
-- (!\myReg|Mux7~combout\ & ((\myULA|Add0~7_cout\) # (GND)))))
-- \myULA|Add0~9\ = CARRY((\myULA|Add0~5_combout\ & (!\myReg|Mux7~combout\ & !\myULA|Add0~7_cout\)) # (!\myULA|Add0~5_combout\ & ((!\myULA|Add0~7_cout\) # (!\myReg|Mux7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~5_combout\,
	datab => \myReg|Mux7~combout\,
	datad => VCC,
	cin => \myULA|Add0~7_cout\,
	combout => \myULA|Add0~8_combout\,
	cout => \myULA|Add0~9\);

-- Location: LCCOMB_X29_Y14_N4
\myULA|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~10_combout\ = ((\myULA|Add0~4_combout\ $ (\myReg|Mux6~combout\ $ (!\myULA|Add0~9\)))) # (GND)
-- \myULA|Add0~11\ = CARRY((\myULA|Add0~4_combout\ & ((\myReg|Mux6~combout\) # (!\myULA|Add0~9\))) # (!\myULA|Add0~4_combout\ & (\myReg|Mux6~combout\ & !\myULA|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~4_combout\,
	datab => \myReg|Mux6~combout\,
	datad => VCC,
	cin => \myULA|Add0~9\,
	combout => \myULA|Add0~10_combout\,
	cout => \myULA|Add0~11\);

-- Location: LCCOMB_X29_Y14_N6
\myULA|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~12_combout\ = (\myULA|Add0~3_combout\ & ((\myReg|Mux5~combout\ & (\myULA|Add0~11\ & VCC)) # (!\myReg|Mux5~combout\ & (!\myULA|Add0~11\)))) # (!\myULA|Add0~3_combout\ & ((\myReg|Mux5~combout\ & (!\myULA|Add0~11\)) # (!\myReg|Mux5~combout\ & 
-- ((\myULA|Add0~11\) # (GND)))))
-- \myULA|Add0~13\ = CARRY((\myULA|Add0~3_combout\ & (!\myReg|Mux5~combout\ & !\myULA|Add0~11\)) # (!\myULA|Add0~3_combout\ & ((!\myULA|Add0~11\) # (!\myReg|Mux5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~3_combout\,
	datab => \myReg|Mux5~combout\,
	datad => VCC,
	cin => \myULA|Add0~11\,
	combout => \myULA|Add0~12_combout\,
	cout => \myULA|Add0~13\);

-- Location: LCCOMB_X29_Y14_N8
\myULA|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~14_combout\ = ((\myULA|Add0~2_combout\ $ (\myReg|Mux4~combout\ $ (!\myULA|Add0~13\)))) # (GND)
-- \myULA|Add0~15\ = CARRY((\myULA|Add0~2_combout\ & ((\myReg|Mux4~combout\) # (!\myULA|Add0~13\))) # (!\myULA|Add0~2_combout\ & (\myReg|Mux4~combout\ & !\myULA|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~2_combout\,
	datab => \myReg|Mux4~combout\,
	datad => VCC,
	cin => \myULA|Add0~13\,
	combout => \myULA|Add0~14_combout\,
	cout => \myULA|Add0~15\);

-- Location: LCCOMB_X28_Y14_N12
\myULA|ULAResult~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~5_combout\ = \myReg|Mux4~combout\ $ (((\myReg|register[2][3]~regout\ & !\SW~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myReg|register[2][3]~regout\,
	datac => \myReg|Mux4~combout\,
	datad => \SW~combout\(17),
	combout => \myULA|ULAResult~5_combout\);

-- Location: LCCOMB_X28_Y14_N18
\myULA|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux4~0_combout\ = (\myULA|Mux0~1_combout\ & (\myULA|Mux0~0_combout\ & ((\myULA|ULAResult~5_combout\)))) # (!\myULA|Mux0~1_combout\ & (((\myULA|Add0~14_combout\)) # (!\myULA|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~1_combout\,
	datab => \myULA|Mux0~0_combout\,
	datac => \myULA|Add0~14_combout\,
	datad => \myULA|ULAResult~5_combout\,
	combout => \myULA|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\myULA|Mux4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux4~combout\ = (\myULA|Mux0~2_combout\ & ((\myMUX|out_mux[3]~5_combout\ & ((\myReg|Mux4~combout\) # (!\myULA|Mux4~0_combout\))) # (!\myMUX|out_mux[3]~5_combout\ & (\myReg|Mux4~combout\ & !\myULA|Mux4~0_combout\)))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~2_combout\,
	datab => \myMUX|out_mux[3]~5_combout\,
	datac => \myReg|Mux4~combout\,
	datad => \myULA|Mux4~0_combout\,
	combout => \myULA|Mux4~combout\);

-- Location: LCCOMB_X27_Y14_N20
\myMUX|out_mux[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[1]~3_combout\ = (!\SW~combout\(17) & !\myReg|register[2][1]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \myReg|register[2][1]~regout\,
	combout => \myMUX|out_mux[1]~3_combout\);

-- Location: LCCOMB_X30_Y14_N28
\myULA|ULAResult~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~3_combout\ = \myReg|Mux6~combout\ $ (((\myReg|register[2][1]~regout\) # (\SW~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myReg|register[2][1]~regout\,
	datac => \SW~combout\(17),
	datad => \myReg|Mux6~combout\,
	combout => \myULA|ULAResult~3_combout\);

-- Location: LCCOMB_X30_Y14_N10
\myULA|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux6~0_combout\ = (\myULA|Mux0~1_combout\ & (\myULA|Mux0~0_combout\ & ((\myULA|ULAResult~3_combout\)))) # (!\myULA|Mux0~1_combout\ & (((\myULA|Add0~10_combout\)) # (!\myULA|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~1_combout\,
	datab => \myULA|Mux0~0_combout\,
	datac => \myULA|Add0~10_combout\,
	datad => \myULA|ULAResult~3_combout\,
	combout => \myULA|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\myULA|Mux6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux6~combout\ = (\myULA|Mux0~2_combout\ & ((\myReg|Mux6~combout\ & ((!\myULA|Mux6~0_combout\) # (!\myMUX|out_mux[1]~3_combout\))) # (!\myReg|Mux6~combout\ & (!\myMUX|out_mux[1]~3_combout\ & !\myULA|Mux6~0_combout\)))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~2_combout\,
	datab => \myReg|Mux6~combout\,
	datac => \myMUX|out_mux[1]~3_combout\,
	datad => \myULA|Mux6~0_combout\,
	combout => \myULA|Mux6~combout\);

-- Location: LCCOMB_X28_Y14_N8
\MyLCD|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan11~0_combout\ = (\myULA|Mux4~combout\ & ((\myULA|Mux5~combout\) # (\myULA|Mux6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux5~combout\,
	datac => \myULA|Mux4~combout\,
	datad => \myULA|Mux6~combout\,
	combout => \MyLCD|LessThan11~0_combout\);

-- Location: LCCOMB_X28_Y14_N22
\MyLCD|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add11~0_combout\ = (\myULA|Mux7~3_combout\ & (\MyLCD|LessThan11~0_combout\ $ (VCC))) # (!\myULA|Mux7~3_combout\ & (\MyLCD|LessThan11~0_combout\ & VCC))
-- \MyLCD|Add11~1\ = CARRY((\myULA|Mux7~3_combout\ & \MyLCD|LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux7~3_combout\,
	datab => \MyLCD|LessThan11~0_combout\,
	datad => VCC,
	combout => \MyLCD|Add11~0_combout\,
	cout => \MyLCD|Add11~1\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X28_Y12_N9
\myReg|register[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][6]~regout\);

-- Location: LCFF_X29_Y12_N21
\myReg|register[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][6]~regout\);

-- Location: LCFF_X30_Y12_N31
\myReg|register[7][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[7][6]~regout\);

-- Location: LCFF_X29_Y12_N7
\myReg|register[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][6]~regout\);

-- Location: LCFF_X30_Y12_N25
\myReg|register[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][6]~regout\);

-- Location: LCCOMB_X31_Y12_N18
\myReg|register[6][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[6][6]~feeder_combout\ = \SW~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(6),
	combout => \myReg|register[6][6]~feeder_combout\);

-- Location: LCFF_X31_Y12_N19
\myReg|register[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[6][6]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][6]~regout\);

-- Location: LCCOMB_X30_Y12_N24
\myReg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux1~0_combout\ = (\SW~combout\(11) & (\SW~combout\(12))) # (!\SW~combout\(11) & ((\SW~combout\(12) & ((\myReg|register[6][6]~regout\))) # (!\SW~combout\(12) & (\myReg|register[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][6]~regout\,
	datad => \myReg|register[6][6]~regout\,
	combout => \myReg|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y12_N6
\myReg|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux1~1_combout\ = (\SW~combout\(11) & ((\myReg|Mux1~0_combout\ & (\myReg|register[7][6]~regout\)) # (!\myReg|Mux1~0_combout\ & ((\myReg|register[5][6]~regout\))))) # (!\SW~combout\(11) & (((\myReg|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \myReg|register[7][6]~regout\,
	datac => \myReg|register[5][6]~regout\,
	datad => \myReg|Mux1~0_combout\,
	combout => \myReg|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y12_N20
\myReg|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux1~2_combout\ = (\myReg|Mux2~3_combout\ & ((\myReg|Mux2~4_combout\ & ((\myReg|Mux1~1_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|register[1][6]~regout\)))) # (!\myReg|Mux2~3_combout\ & (\myReg|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~3_combout\,
	datab => \myReg|Mux2~4_combout\,
	datac => \myReg|register[1][6]~regout\,
	datad => \myReg|Mux1~1_combout\,
	combout => \myReg|Mux1~2_combout\);

-- Location: LCCOMB_X28_Y12_N8
\myReg|Mux1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux1~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux1~2_combout\ & ((\myReg|register[3][6]~regout\))) # (!\myReg|Mux1~2_combout\ & (\myReg|register[2][6]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][6]~regout\,
	datab => \myReg|Mux2~0_combout\,
	datac => \myReg|register[3][6]~regout\,
	datad => \myReg|Mux1~2_combout\,
	combout => \myReg|Mux1~combout\);

-- Location: LCCOMB_X30_Y13_N26
\myULA|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux0~1_combout\ = (\SW~combout\(10)) # ((\SW~combout\(9) & \SW~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(10),
	datac => \SW~combout\(9),
	datad => \SW~combout\(8),
	combout => \myULA|Mux0~1_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCCOMB_X30_Y13_N28
\myReg|register[2][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[2][5]~feeder_combout\ = \SW~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(5),
	combout => \myReg|register[2][5]~feeder_combout\);

-- Location: LCFF_X30_Y13_N29
\myReg|register[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[2][5]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][5]~regout\);

-- Location: LCFF_X30_Y13_N11
\myReg|register[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][5]~regout\);

-- Location: LCFF_X31_Y13_N5
\myReg|register[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][5]~regout\);

-- Location: LCFF_X31_Y12_N23
\myReg|register[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][5]~regout\);

-- Location: LCFF_X30_Y12_N15
\myReg|register[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][5]~regout\);

-- Location: LCCOMB_X29_Y12_N14
\myReg|register[5][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[5][5]~feeder_combout\ = \SW~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(5),
	combout => \myReg|register[5][5]~feeder_combout\);

-- Location: LCFF_X29_Y12_N15
\myReg|register[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[5][5]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][5]~regout\);

-- Location: LCCOMB_X30_Y12_N14
\myReg|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~1_combout\ = (\SW~combout\(11) & ((\SW~combout\(12)) # ((\myReg|register[5][5]~regout\)))) # (!\SW~combout\(11) & (!\SW~combout\(12) & (\myReg|register[4][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][5]~regout\,
	datad => \myReg|register[5][5]~regout\,
	combout => \myReg|Mux2~1_combout\);

-- Location: LCCOMB_X31_Y12_N22
\myReg|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~2_combout\ = (\SW~combout\(12) & ((\myReg|Mux2~1_combout\ & (\myReg|register[7][5]~regout\)) # (!\myReg|Mux2~1_combout\ & ((\myReg|register[6][5]~regout\))))) # (!\SW~combout\(12) & (((\myReg|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[7][5]~regout\,
	datab => \SW~combout\(12),
	datac => \myReg|register[6][5]~regout\,
	datad => \myReg|Mux2~1_combout\,
	combout => \myReg|Mux2~2_combout\);

-- Location: LCCOMB_X31_Y13_N4
\myReg|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~5_combout\ = (\myReg|Mux2~3_combout\ & ((\myReg|Mux2~4_combout\ & ((\myReg|Mux2~2_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|register[1][5]~regout\)))) # (!\myReg|Mux2~3_combout\ & (\myReg|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~3_combout\,
	datab => \myReg|Mux2~4_combout\,
	datac => \myReg|register[1][5]~regout\,
	datad => \myReg|Mux2~2_combout\,
	combout => \myReg|Mux2~5_combout\);

-- Location: LCCOMB_X30_Y13_N10
\myReg|Mux2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux2~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux2~5_combout\ & ((\myReg|register[3][5]~regout\))) # (!\myReg|Mux2~5_combout\ & (\myReg|register[2][5]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~0_combout\,
	datab => \myReg|register[2][5]~regout\,
	datac => \myReg|register[3][5]~regout\,
	datad => \myReg|Mux2~5_combout\,
	combout => \myReg|Mux2~combout\);

-- Location: LCCOMB_X29_Y14_N10
\myULA|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~16_combout\ = (\myULA|Add0~1_combout\ & ((\myReg|Mux3~combout\ & (\myULA|Add0~15\ & VCC)) # (!\myReg|Mux3~combout\ & (!\myULA|Add0~15\)))) # (!\myULA|Add0~1_combout\ & ((\myReg|Mux3~combout\ & (!\myULA|Add0~15\)) # (!\myReg|Mux3~combout\ & 
-- ((\myULA|Add0~15\) # (GND)))))
-- \myULA|Add0~17\ = CARRY((\myULA|Add0~1_combout\ & (!\myReg|Mux3~combout\ & !\myULA|Add0~15\)) # (!\myULA|Add0~1_combout\ & ((!\myULA|Add0~15\) # (!\myReg|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~1_combout\,
	datab => \myReg|Mux3~combout\,
	datad => VCC,
	cin => \myULA|Add0~15\,
	combout => \myULA|Add0~16_combout\,
	cout => \myULA|Add0~17\);

-- Location: LCCOMB_X29_Y14_N12
\myULA|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~18_combout\ = ((\myULA|Add0~0_combout\ $ (\myReg|Mux2~combout\ $ (!\myULA|Add0~17\)))) # (GND)
-- \myULA|Add0~19\ = CARRY((\myULA|Add0~0_combout\ & ((\myReg|Mux2~combout\) # (!\myULA|Add0~17\))) # (!\myULA|Add0~0_combout\ & (\myReg|Mux2~combout\ & !\myULA|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~0_combout\,
	datab => \myReg|Mux2~combout\,
	datad => VCC,
	cin => \myULA|Add0~17\,
	combout => \myULA|Add0~18_combout\,
	cout => \myULA|Add0~19\);

-- Location: LCCOMB_X29_Y14_N14
\myULA|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~21_combout\ = (\myULA|Add0~20_combout\ & ((\myReg|Mux1~combout\ & (\myULA|Add0~19\ & VCC)) # (!\myReg|Mux1~combout\ & (!\myULA|Add0~19\)))) # (!\myULA|Add0~20_combout\ & ((\myReg|Mux1~combout\ & (!\myULA|Add0~19\)) # (!\myReg|Mux1~combout\ & 
-- ((\myULA|Add0~19\) # (GND)))))
-- \myULA|Add0~22\ = CARRY((\myULA|Add0~20_combout\ & (!\myReg|Mux1~combout\ & !\myULA|Add0~19\)) # (!\myULA|Add0~20_combout\ & ((!\myULA|Add0~19\) # (!\myReg|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Add0~20_combout\,
	datab => \myReg|Mux1~combout\,
	datad => VCC,
	cin => \myULA|Add0~19\,
	combout => \myULA|Add0~21_combout\,
	cout => \myULA|Add0~22\);

-- Location: LCFF_X28_Y12_N11
\myReg|register[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][6]~regout\);

-- Location: LCCOMB_X28_Y12_N2
\myULA|ULAResult~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~1_combout\ = \myReg|Mux1~combout\ $ (((!\SW~combout\(17) & \myReg|register[2][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \myReg|Mux1~combout\,
	datad => \myReg|register[2][6]~regout\,
	combout => \myULA|ULAResult~1_combout\);

-- Location: LCCOMB_X29_Y14_N24
\myULA|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux1~0_combout\ = (\myULA|Mux0~0_combout\ & ((\myULA|Mux0~1_combout\ & ((\myULA|ULAResult~1_combout\))) # (!\myULA|Mux0~1_combout\ & (\myULA|Add0~21_combout\)))) # (!\myULA|Mux0~0_combout\ & (!\myULA|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~0_combout\,
	datab => \myULA|Mux0~1_combout\,
	datac => \myULA|Add0~21_combout\,
	datad => \myULA|ULAResult~1_combout\,
	combout => \myULA|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y12_N12
\myMUX|out_mux[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[6]~1_combout\ = (!\SW~combout\(17) & \myReg|register[2][6]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datad => \myReg|register[2][6]~regout\,
	combout => \myMUX|out_mux[6]~1_combout\);

-- Location: LCCOMB_X29_Y14_N30
\myULA|Mux1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux1~combout\ = (\myULA|Mux0~2_combout\ & ((\myReg|Mux1~combout\ & ((\myMUX|out_mux[6]~1_combout\) # (!\myULA|Mux1~0_combout\))) # (!\myReg|Mux1~combout\ & (!\myULA|Mux1~0_combout\ & \myMUX|out_mux[6]~1_combout\)))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~2_combout\,
	datab => \myReg|Mux1~combout\,
	datac => \myULA|Mux1~0_combout\,
	datad => \myMUX|out_mux[6]~1_combout\,
	combout => \myULA|Mux1~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X30_Y13_N22
\myReg|register[2][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[2][7]~feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \myReg|register[2][7]~feeder_combout\);

-- Location: LCFF_X30_Y13_N23
\myReg|register[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[2][7]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][7]~regout\);

-- Location: LCCOMB_X28_Y13_N22
\myMUX|out_mux[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[7]~7_combout\ = (!\SW~combout\(17) & \myReg|register[2][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \myReg|register[2][7]~regout\,
	combout => \myMUX|out_mux[7]~7_combout\);

-- Location: LCCOMB_X30_Y13_N16
\myULA|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux0~2_combout\ = (\SW~combout\(9) & !\SW~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \SW~combout\(10),
	combout => \myULA|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y13_N20
\myULA|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~23_combout\ = \SW~combout\(8) $ (((!\SW~combout\(17) & \myReg|register[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \SW~combout\(17),
	datad => \myReg|register[2][7]~regout\,
	combout => \myULA|Add0~23_combout\);

-- Location: LCFF_X30_Y13_N9
\myReg|register[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[3][7]~regout\);

-- Location: LCFF_X31_Y13_N31
\myReg|register[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[1][7]~regout\);

-- Location: LCFF_X31_Y12_N1
\myReg|register[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[6][7]~regout\);

-- Location: LCFF_X30_Y12_N19
\myReg|register[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[4][7]~regout\);

-- Location: LCCOMB_X29_Y12_N16
\myReg|register[5][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|register[5][7]~feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \myReg|register[5][7]~feeder_combout\);

-- Location: LCFF_X29_Y12_N17
\myReg|register[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \myReg|register[5][7]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \myReg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[5][7]~regout\);

-- Location: LCCOMB_X30_Y12_N18
\myReg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux0~0_combout\ = (\SW~combout\(11) & ((\SW~combout\(12)) # ((\myReg|register[5][7]~regout\)))) # (!\SW~combout\(11) & (!\SW~combout\(12) & (\myReg|register[4][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(12),
	datac => \myReg|register[4][7]~regout\,
	datad => \myReg|register[5][7]~regout\,
	combout => \myReg|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y12_N0
\myReg|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux0~1_combout\ = (\SW~combout\(12) & ((\myReg|Mux0~0_combout\ & (\myReg|register[7][7]~regout\)) # (!\myReg|Mux0~0_combout\ & ((\myReg|register[6][7]~regout\))))) # (!\SW~combout\(12) & (((\myReg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[7][7]~regout\,
	datab => \SW~combout\(12),
	datac => \myReg|register[6][7]~regout\,
	datad => \myReg|Mux0~0_combout\,
	combout => \myReg|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y13_N30
\myReg|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux0~2_combout\ = (\myReg|Mux2~3_combout\ & ((\myReg|Mux2~4_combout\ & ((\myReg|Mux0~1_combout\))) # (!\myReg|Mux2~4_combout\ & (\myReg|register[1][7]~regout\)))) # (!\myReg|Mux2~3_combout\ & (\myReg|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~3_combout\,
	datab => \myReg|Mux2~4_combout\,
	datac => \myReg|register[1][7]~regout\,
	datad => \myReg|Mux0~1_combout\,
	combout => \myReg|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y13_N8
\myReg|Mux0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myReg|Mux0~combout\ = (\myReg|Mux2~0_combout\ & ((\myReg|Mux0~2_combout\ & ((\myReg|register[3][7]~regout\))) # (!\myReg|Mux0~2_combout\ & (\myReg|register[2][7]~regout\)))) # (!\myReg|Mux2~0_combout\ & (((\myReg|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux2~0_combout\,
	datab => \myReg|register[2][7]~regout\,
	datac => \myReg|register[3][7]~regout\,
	datad => \myReg|Mux0~2_combout\,
	combout => \myReg|Mux0~combout\);

-- Location: LCCOMB_X29_Y14_N16
\myULA|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Add0~24_combout\ = \myULA|Add0~23_combout\ $ (\myULA|Add0~22\ $ (!\myReg|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myULA|Add0~23_combout\,
	datad => \myReg|Mux0~combout\,
	cin => \myULA|Add0~22\,
	combout => \myULA|Add0~24_combout\);

-- Location: LCCOMB_X30_Y13_N2
\myULA|ULAResult~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~6_combout\ = \myReg|Mux0~combout\ $ (((!\SW~combout\(17) & \myReg|register[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \myReg|Mux0~combout\,
	datad => \myReg|register[2][7]~regout\,
	combout => \myULA|ULAResult~6_combout\);

-- Location: LCCOMB_X29_Y14_N28
\myULA|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux0~3_combout\ = (\myULA|Mux0~0_combout\ & ((\myULA|Mux0~1_combout\ & ((\myULA|ULAResult~6_combout\))) # (!\myULA|Mux0~1_combout\ & (\myULA|Add0~24_combout\)))) # (!\myULA|Mux0~0_combout\ & (!\myULA|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~0_combout\,
	datab => \myULA|Mux0~1_combout\,
	datac => \myULA|Add0~24_combout\,
	datad => \myULA|ULAResult~6_combout\,
	combout => \myULA|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y14_N26
\myULA|Mux0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux0~combout\ = (\myULA|Mux0~2_combout\ & ((\myReg|Mux0~combout\ & ((\myMUX|out_mux[7]~7_combout\) # (!\myULA|Mux0~3_combout\))) # (!\myReg|Mux0~combout\ & (\myMUX|out_mux[7]~7_combout\ & !\myULA|Mux0~3_combout\)))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux0~combout\,
	datab => \myMUX|out_mux[7]~7_combout\,
	datac => \myULA|Mux0~2_combout\,
	datad => \myULA|Mux0~3_combout\,
	combout => \myULA|Mux0~combout\);

-- Location: LCCOMB_X29_Y14_N18
\MyLCD|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan10~0_combout\ = (\myULA|Mux0~combout\ & ((\myULA|Mux2~combout\) # (\myULA|Mux1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux2~combout\,
	datab => \myULA|Mux1~combout\,
	datad => \myULA|Mux0~combout\,
	combout => \MyLCD|LessThan10~0_combout\);

-- Location: LCCOMB_X28_Y15_N22
\MyLCD|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add10~0_combout\ = (\myULA|Mux3~combout\ & (\MyLCD|LessThan10~0_combout\ $ (VCC))) # (!\myULA|Mux3~combout\ & (\MyLCD|LessThan10~0_combout\ & VCC))
-- \MyLCD|Add10~1\ = CARRY((\myULA|Mux3~combout\ & \MyLCD|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux3~combout\,
	datab => \MyLCD|LessThan10~0_combout\,
	datad => VCC,
	combout => \MyLCD|Add10~0_combout\,
	cout => \MyLCD|Add10~1\);

-- Location: LCCOMB_X29_Y15_N4
\MyLCD|mLCD_DATA[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~5_combout\ = (\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX\(0))) # (!\MyLCD|LUT_INDEX\(2) & ((\MyLCD|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(0),
	datad => \MyLCD|LUT_INDEX\(1),
	combout => \MyLCD|mLCD_DATA[0]~5_combout\);

-- Location: LCCOMB_X28_Y15_N14
\MyLCD|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux6~1_combout\ = (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Add13~0_combout\) # ((\MyLCD|mLCD_DATA[0]~5_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & (((\MyLCD|Add10~0_combout\ & !\MyLCD|mLCD_DATA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~0_combout\,
	datab => \MyLCD|Add10~0_combout\,
	datac => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|mLCD_DATA[0]~5_combout\,
	combout => \MyLCD|Mux6~1_combout\);

-- Location: LCCOMB_X28_Y15_N12
\MyLCD|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux6~2_combout\ = (\MyLCD|Mux6~1_combout\ & ((\MyLCD|Add14~0_combout\) # ((!\MyLCD|mLCD_DATA[0]~5_combout\)))) # (!\MyLCD|Mux6~1_combout\ & (((\MyLCD|Add11~0_combout\ & \MyLCD|mLCD_DATA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add14~0_combout\,
	datab => \MyLCD|Add11~0_combout\,
	datac => \MyLCD|Mux6~1_combout\,
	datad => \MyLCD|mLCD_DATA[0]~5_combout\,
	combout => \MyLCD|Mux6~2_combout\);

-- Location: LCCOMB_X28_Y15_N6
\MyLCD|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux6~3_combout\ = (\MyLCD|Mux6~2_combout\ & ((\MyLCD|LUT_INDEX\(1)) # (!\MyLCD|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datab => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|Mux6~2_combout\,
	combout => \MyLCD|Mux6~3_combout\);

-- Location: LCCOMB_X28_Y15_N20
\MyLCD|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux6~4_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & (!\MyLCD|Mux2~0_combout\)) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Mux2~0_combout\ & (\MyLCD|Add2~0_combout\)) # (!\MyLCD|Mux2~0_combout\ & ((\MyLCD|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~4_combout\,
	datab => \MyLCD|Mux2~0_combout\,
	datac => \MyLCD|Add2~0_combout\,
	datad => \MyLCD|Mux6~3_combout\,
	combout => \MyLCD|Mux6~4_combout\);

-- Location: LCFF_X28_Y12_N13
\myReg|register[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][4]~regout\);

-- Location: LCCOMB_X28_Y12_N4
\myMUX|out_mux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[4]~4_combout\ = (!\SW~combout\(17) & \myReg|register[2][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \myReg|register[2][4]~regout\,
	combout => \myMUX|out_mux[4]~4_combout\);

-- Location: LCCOMB_X28_Y13_N10
\MyLCD|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add15~0_combout\ = (\MyLCD|LessThan15~0_combout\ & (\myMUX|out_mux[4]~4_combout\ & VCC)) # (!\MyLCD|LessThan15~0_combout\ & (\myMUX|out_mux[4]~4_combout\ $ (VCC)))
-- \MyLCD|Add15~1\ = CARRY((!\MyLCD|LessThan15~0_combout\ & \myMUX|out_mux[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan15~0_combout\,
	datab => \myMUX|out_mux[4]~4_combout\,
	datad => VCC,
	combout => \MyLCD|Add15~0_combout\,
	cout => \MyLCD|Add15~1\);

-- Location: LCCOMB_X28_Y15_N2
\MyLCD|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux6~5_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Mux6~4_combout\ & ((\MyLCD|Add15~0_combout\))) # (!\MyLCD|Mux6~4_combout\ & (\MyLCD|Add3~0_combout\)))) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & (((\MyLCD|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~4_combout\,
	datab => \MyLCD|Add3~0_combout\,
	datac => \MyLCD|Mux6~4_combout\,
	datad => \MyLCD|Add15~0_combout\,
	combout => \MyLCD|Mux6~5_combout\);

-- Location: LCCOMB_X27_Y15_N24
\MyLCD|mLCD_DATA[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~0_combout\ = (\MyLCD|mLCD_DATA[0]~6_combout\ & ((\MyLCD|Mux6~5_combout\))) # (!\MyLCD|mLCD_DATA[0]~6_combout\ & (!\MyLCD|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~6_combout\,
	datab => \MyLCD|Mux6~0_combout\,
	datad => \MyLCD|Mux6~5_combout\,
	combout => \MyLCD|mLCD_DATA[0]~0_combout\);

-- Location: LCFF_X29_Y14_N11
\myReg|register[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \myReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myReg|register[2][2]~regout\);

-- Location: LCCOMB_X27_Y13_N2
\MyLCD|LessThan16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan16~0_combout\ = (\myReg|register[2][3]~regout\ & (!\SW~combout\(17) & ((\myReg|register[2][1]~regout\) # (\myReg|register[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][3]~regout\,
	datab => \myReg|register[2][1]~regout\,
	datac => \SW~combout\(17),
	datad => \myReg|register[2][2]~regout\,
	combout => \MyLCD|LessThan16~0_combout\);

-- Location: LCCOMB_X27_Y13_N10
\MyLCD|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add16~0_combout\ = (\myMUX|out_mux[0]~6_combout\ & (\MyLCD|LessThan16~0_combout\ $ (VCC))) # (!\myMUX|out_mux[0]~6_combout\ & (\MyLCD|LessThan16~0_combout\ & VCC))
-- \MyLCD|Add16~1\ = CARRY((\myMUX|out_mux[0]~6_combout\ & \MyLCD|LessThan16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[0]~6_combout\,
	datab => \MyLCD|LessThan16~0_combout\,
	datad => VCC,
	combout => \MyLCD|Add16~0_combout\,
	cout => \MyLCD|Add16~1\);

-- Location: LCCOMB_X30_Y15_N18
\MyLCD|mLCD_DATA[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~8_combout\ = (\MyLCD|LUT_INDEX\(5)) # ((\MyLCD|LUT_INDEX\(3) & ((\MyLCD|LUT_INDEX\(2)) # (!\MyLCD|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(2),
	datab => \MyLCD|LUT_INDEX\(5),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|mLCD_DATA[0]~8_combout\);

-- Location: LCCOMB_X30_Y15_N28
\MyLCD|mLCD_DATA[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~7_combout\ = (\MyLCD|LUT_INDEX\(2) & (!\MyLCD|LUT_INDEX\(4) & (\MyLCD|LUT_INDEX\(1) $ (!\MyLCD|LUT_INDEX\(0))))) # (!\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX\(4) & (\MyLCD|LUT_INDEX\(1) $ (!\MyLCD|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(2),
	datab => \MyLCD|LUT_INDEX\(1),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|LUT_INDEX\(0),
	combout => \MyLCD|mLCD_DATA[0]~7_combout\);

-- Location: LCCOMB_X30_Y15_N8
\MyLCD|mLCD_DATA[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~9_combout\ = (\MyLCD|mLCD_DATA[0]~8_combout\) # (\MyLCD|mLCD_DATA[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|mLCD_DATA[0]~8_combout\,
	datad => \MyLCD|mLCD_DATA[0]~7_combout\,
	combout => \MyLCD|mLCD_DATA[0]~9_combout\);

-- Location: LCCOMB_X30_Y15_N6
\MyLCD|mLCD_DATA[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~10_combout\ = (\MyLCD|LUT_INDEX\(1) & (!\MyLCD|LUT_INDEX\(2) & \MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(1),
	datac => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|mLCD_DATA[0]~10_combout\);

-- Location: LCFF_X27_Y15_N25
\MyLCD|mLCD_DATA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mLCD_DATA[0]~0_combout\,
	sdata => \MyLCD|Add16~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|mLCD_DATA[0]~9_combout\,
	sload => \MyLCD|mLCD_DATA[0]~10_combout\,
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(0));

-- Location: LCCOMB_X27_Y15_N4
\MyLCD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux5~0_combout\ = (\MyLCD|LUT_INDEX\(1) & \MyLCD|LUT_INDEX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datad => \MyLCD|LUT_INDEX\(0),
	combout => \MyLCD|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y14_N24
\MyLCD|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add3~2_combout\ = (\myReg|Mux6~combout\ & ((\MyLCD|LessThan3~0_combout\ & (\MyLCD|Add3~1\ & VCC)) # (!\MyLCD|LessThan3~0_combout\ & (!\MyLCD|Add3~1\)))) # (!\myReg|Mux6~combout\ & ((\MyLCD|LessThan3~0_combout\ & (!\MyLCD|Add3~1\)) # 
-- (!\MyLCD|LessThan3~0_combout\ & ((\MyLCD|Add3~1\) # (GND)))))
-- \MyLCD|Add3~3\ = CARRY((\myReg|Mux6~combout\ & (!\MyLCD|LessThan3~0_combout\ & !\MyLCD|Add3~1\)) # (!\myReg|Mux6~combout\ & ((!\MyLCD|Add3~1\) # (!\MyLCD|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux6~combout\,
	datab => \MyLCD|LessThan3~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add3~1\,
	combout => \MyLCD|Add3~2_combout\,
	cout => \MyLCD|Add3~3\);

-- Location: LCCOMB_X28_Y13_N0
\myMUX|out_mux[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[5]~0_combout\ = (!\SW~combout\(17) & \myReg|register[2][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \myReg|register[2][5]~regout\,
	combout => \myMUX|out_mux[5]~0_combout\);

-- Location: LCCOMB_X28_Y13_N12
\MyLCD|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add15~2_combout\ = (\MyLCD|LessThan15~0_combout\ & ((\myMUX|out_mux[5]~0_combout\ & (!\MyLCD|Add15~1\)) # (!\myMUX|out_mux[5]~0_combout\ & ((\MyLCD|Add15~1\) # (GND))))) # (!\MyLCD|LessThan15~0_combout\ & ((\myMUX|out_mux[5]~0_combout\ & 
-- (\MyLCD|Add15~1\ & VCC)) # (!\myMUX|out_mux[5]~0_combout\ & (!\MyLCD|Add15~1\))))
-- \MyLCD|Add15~3\ = CARRY((\MyLCD|LessThan15~0_combout\ & ((!\MyLCD|Add15~1\) # (!\myMUX|out_mux[5]~0_combout\))) # (!\MyLCD|LessThan15~0_combout\ & (!\myMUX|out_mux[5]~0_combout\ & !\MyLCD|Add15~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan15~0_combout\,
	datab => \myMUX|out_mux[5]~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add15~1\,
	combout => \MyLCD|Add15~2_combout\,
	cout => \MyLCD|Add15~3\);

-- Location: LCCOMB_X27_Y15_N2
\MyLCD|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LessThan14~0_combout\ = (\myReg|register[2][3]~regout\ & ((\myReg|register[2][1]~regout\) # (\myReg|register[2][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][1]~regout\,
	datab => \myReg|register[2][3]~regout\,
	datad => \myReg|register[2][2]~regout\,
	combout => \MyLCD|LessThan14~0_combout\);

-- Location: LCCOMB_X27_Y15_N14
\MyLCD|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add14~2_combout\ = (\myReg|register[2][1]~regout\ & ((\MyLCD|LessThan14~0_combout\ & (\MyLCD|Add14~1\ & VCC)) # (!\MyLCD|LessThan14~0_combout\ & (!\MyLCD|Add14~1\)))) # (!\myReg|register[2][1]~regout\ & ((\MyLCD|LessThan14~0_combout\ & 
-- (!\MyLCD|Add14~1\)) # (!\MyLCD|LessThan14~0_combout\ & ((\MyLCD|Add14~1\) # (GND)))))
-- \MyLCD|Add14~3\ = CARRY((\myReg|register[2][1]~regout\ & (!\MyLCD|LessThan14~0_combout\ & !\MyLCD|Add14~1\)) # (!\myReg|register[2][1]~regout\ & ((!\MyLCD|Add14~1\) # (!\MyLCD|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][1]~regout\,
	datab => \MyLCD|LessThan14~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add14~1\,
	combout => \MyLCD|Add14~2_combout\,
	cout => \MyLCD|Add14~3\);

-- Location: LCCOMB_X28_Y15_N24
\MyLCD|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add10~2_combout\ = (\myULA|Mux2~combout\ & ((\MyLCD|LessThan10~0_combout\ & (\MyLCD|Add10~1\ & VCC)) # (!\MyLCD|LessThan10~0_combout\ & (!\MyLCD|Add10~1\)))) # (!\myULA|Mux2~combout\ & ((\MyLCD|LessThan10~0_combout\ & (!\MyLCD|Add10~1\)) # 
-- (!\MyLCD|LessThan10~0_combout\ & ((\MyLCD|Add10~1\) # (GND)))))
-- \MyLCD|Add10~3\ = CARRY((\myULA|Mux2~combout\ & (!\MyLCD|LessThan10~0_combout\ & !\MyLCD|Add10~1\)) # (!\myULA|Mux2~combout\ & ((!\MyLCD|Add10~1\) # (!\MyLCD|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux2~combout\,
	datab => \MyLCD|LessThan10~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add10~1\,
	combout => \MyLCD|Add10~2_combout\,
	cout => \MyLCD|Add10~3\);

-- Location: LCCOMB_X28_Y15_N4
\MyLCD|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux5~1_combout\ = (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Add13~2_combout\) # ((\MyLCD|mLCD_DATA[0]~5_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & (((\MyLCD|Add10~2_combout\ & !\MyLCD|mLCD_DATA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~2_combout\,
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|Add10~2_combout\,
	datad => \MyLCD|mLCD_DATA[0]~5_combout\,
	combout => \MyLCD|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y15_N10
\MyLCD|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux5~2_combout\ = (\MyLCD|Mux5~1_combout\ & (((\MyLCD|Add14~2_combout\) # (!\MyLCD|mLCD_DATA[0]~5_combout\)))) # (!\MyLCD|Mux5~1_combout\ & (\MyLCD|Add11~2_combout\ & ((\MyLCD|mLCD_DATA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add11~2_combout\,
	datab => \MyLCD|Add14~2_combout\,
	datac => \MyLCD|Mux5~1_combout\,
	datad => \MyLCD|mLCD_DATA[0]~5_combout\,
	combout => \MyLCD|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y15_N16
\MyLCD|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux5~3_combout\ = (\MyLCD|Mux5~2_combout\ & ((\MyLCD|LUT_INDEX\(1)) # (!\MyLCD|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datab => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|Mux5~2_combout\,
	combout => \MyLCD|Mux5~3_combout\);

-- Location: LCCOMB_X29_Y13_N8
\MyLCD|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add2~2_combout\ = (\MyLCD|LessThan2~0_combout\ & ((\myReg|Mux2~combout\ & (\MyLCD|Add2~1\ & VCC)) # (!\myReg|Mux2~combout\ & (!\MyLCD|Add2~1\)))) # (!\MyLCD|LessThan2~0_combout\ & ((\myReg|Mux2~combout\ & (!\MyLCD|Add2~1\)) # (!\myReg|Mux2~combout\ 
-- & ((\MyLCD|Add2~1\) # (GND)))))
-- \MyLCD|Add2~3\ = CARRY((\MyLCD|LessThan2~0_combout\ & (!\myReg|Mux2~combout\ & !\MyLCD|Add2~1\)) # (!\MyLCD|LessThan2~0_combout\ & ((!\MyLCD|Add2~1\) # (!\myReg|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan2~0_combout\,
	datab => \myReg|Mux2~combout\,
	datad => VCC,
	cin => \MyLCD|Add2~1\,
	combout => \MyLCD|Add2~2_combout\,
	cout => \MyLCD|Add2~3\);

-- Location: LCCOMB_X28_Y15_N18
\MyLCD|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux5~4_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & (!\MyLCD|Mux2~0_combout\)) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Mux2~0_combout\ & ((\MyLCD|Add2~2_combout\))) # (!\MyLCD|Mux2~0_combout\ & (\MyLCD|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~4_combout\,
	datab => \MyLCD|Mux2~0_combout\,
	datac => \MyLCD|Mux5~3_combout\,
	datad => \MyLCD|Add2~2_combout\,
	combout => \MyLCD|Mux5~4_combout\);

-- Location: LCCOMB_X28_Y15_N0
\MyLCD|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux5~5_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Mux5~4_combout\ & ((\MyLCD|Add15~2_combout\))) # (!\MyLCD|Mux5~4_combout\ & (\MyLCD|Add3~2_combout\)))) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & (((\MyLCD|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~4_combout\,
	datab => \MyLCD|Add3~2_combout\,
	datac => \MyLCD|Add15~2_combout\,
	datad => \MyLCD|Mux5~4_combout\,
	combout => \MyLCD|Mux5~5_combout\);

-- Location: LCCOMB_X28_Y15_N8
\MyLCD|mLCD_DATA[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[1]~1_combout\ = (\MyLCD|mLCD_DATA[0]~6_combout\ & ((\MyLCD|Mux5~5_combout\))) # (!\MyLCD|mLCD_DATA[0]~6_combout\ & (\MyLCD|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~6_combout\,
	datab => \MyLCD|Mux5~0_combout\,
	datad => \MyLCD|Mux5~5_combout\,
	combout => \MyLCD|mLCD_DATA[1]~1_combout\);

-- Location: LCCOMB_X27_Y13_N12
\MyLCD|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add16~2_combout\ = (\myMUX|out_mux[1]~3_combout\ & ((\MyLCD|LessThan16~0_combout\ & (!\MyLCD|Add16~1\)) # (!\MyLCD|LessThan16~0_combout\ & ((\MyLCD|Add16~1\) # (GND))))) # (!\myMUX|out_mux[1]~3_combout\ & ((\MyLCD|LessThan16~0_combout\ & 
-- (\MyLCD|Add16~1\ & VCC)) # (!\MyLCD|LessThan16~0_combout\ & (!\MyLCD|Add16~1\))))
-- \MyLCD|Add16~3\ = CARRY((\myMUX|out_mux[1]~3_combout\ & ((!\MyLCD|Add16~1\) # (!\MyLCD|LessThan16~0_combout\))) # (!\myMUX|out_mux[1]~3_combout\ & (!\MyLCD|LessThan16~0_combout\ & !\MyLCD|Add16~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[1]~3_combout\,
	datab => \MyLCD|LessThan16~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add16~1\,
	combout => \MyLCD|Add16~2_combout\,
	cout => \MyLCD|Add16~3\);

-- Location: LCFF_X28_Y15_N9
\MyLCD|mLCD_DATA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mLCD_DATA[1]~1_combout\,
	sdata => \MyLCD|Add16~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|mLCD_DATA[0]~9_combout\,
	sload => \MyLCD|mLCD_DATA[0]~10_combout\,
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(1));

-- Location: LCCOMB_X28_Y13_N14
\MyLCD|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add15~4_combout\ = ((\MyLCD|LessThan15~0_combout\ $ (\myMUX|out_mux[6]~1_combout\ $ (\MyLCD|Add15~3\)))) # (GND)
-- \MyLCD|Add15~5\ = CARRY((\MyLCD|LessThan15~0_combout\ & (\myMUX|out_mux[6]~1_combout\ & !\MyLCD|Add15~3\)) # (!\MyLCD|LessThan15~0_combout\ & ((\myMUX|out_mux[6]~1_combout\) # (!\MyLCD|Add15~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LessThan15~0_combout\,
	datab => \myMUX|out_mux[6]~1_combout\,
	datad => VCC,
	cin => \MyLCD|Add15~3\,
	combout => \MyLCD|Add15~4_combout\,
	cout => \MyLCD|Add15~5\);

-- Location: LCCOMB_X28_Y14_N26
\MyLCD|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add11~4_combout\ = ((\myULA|Mux5~combout\ $ (\MyLCD|LessThan11~0_combout\ $ (!\MyLCD|Add11~3\)))) # (GND)
-- \MyLCD|Add11~5\ = CARRY((\myULA|Mux5~combout\ & ((\MyLCD|LessThan11~0_combout\) # (!\MyLCD|Add11~3\))) # (!\myULA|Mux5~combout\ & (\MyLCD|LessThan11~0_combout\ & !\MyLCD|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux5~combout\,
	datab => \MyLCD|LessThan11~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add11~3\,
	combout => \MyLCD|Add11~4_combout\,
	cout => \MyLCD|Add11~5\);

-- Location: LCCOMB_X28_Y15_N26
\MyLCD|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add10~4_combout\ = ((\myULA|Mux1~combout\ $ (\MyLCD|LessThan10~0_combout\ $ (!\MyLCD|Add10~3\)))) # (GND)
-- \MyLCD|Add10~5\ = CARRY((\myULA|Mux1~combout\ & ((\MyLCD|LessThan10~0_combout\) # (!\MyLCD|Add10~3\))) # (!\myULA|Mux1~combout\ & (\MyLCD|LessThan10~0_combout\ & !\MyLCD|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux1~combout\,
	datab => \MyLCD|LessThan10~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add10~3\,
	combout => \MyLCD|Add10~4_combout\,
	cout => \MyLCD|Add10~5\);

-- Location: LCCOMB_X27_Y15_N10
\MyLCD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux4~0_combout\ = (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Add13~4_combout\) # ((\MyLCD|mLCD_DATA[0]~5_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & (((\MyLCD|Add10~4_combout\ & !\MyLCD|mLCD_DATA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~4_combout\,
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|Add10~4_combout\,
	datad => \MyLCD|mLCD_DATA[0]~5_combout\,
	combout => \MyLCD|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y15_N22
\MyLCD|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux4~1_combout\ = (\MyLCD|mLCD_DATA[0]~5_combout\ & ((\MyLCD|Mux4~0_combout\ & (\MyLCD|Add14~4_combout\)) # (!\MyLCD|Mux4~0_combout\ & ((\MyLCD|Add11~4_combout\))))) # (!\MyLCD|mLCD_DATA[0]~5_combout\ & (((\MyLCD|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add14~4_combout\,
	datab => \MyLCD|Add11~4_combout\,
	datac => \MyLCD|mLCD_DATA[0]~5_combout\,
	datad => \MyLCD|Mux4~0_combout\,
	combout => \MyLCD|Mux4~1_combout\);

-- Location: LCCOMB_X27_Y15_N0
\MyLCD|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux4~2_combout\ = (\MyLCD|Mux4~1_combout\ & ((\MyLCD|LUT_INDEX\(1)) # (!\MyLCD|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(1),
	datad => \MyLCD|Mux4~1_combout\,
	combout => \MyLCD|Mux4~2_combout\);

-- Location: LCCOMB_X27_Y15_N28
\MyLCD|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux4~4_combout\ = (\MyLCD|Mux4~3_combout\ & ((\MyLCD|Add15~4_combout\) # ((\MyLCD|Mux2~0_combout\)))) # (!\MyLCD|Mux4~3_combout\ & (((!\MyLCD|Mux2~0_combout\ & \MyLCD|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Mux4~3_combout\,
	datab => \MyLCD|Add15~4_combout\,
	datac => \MyLCD|Mux2~0_combout\,
	datad => \MyLCD|Mux4~2_combout\,
	combout => \MyLCD|Mux4~4_combout\);

-- Location: LCCOMB_X27_Y15_N26
\MyLCD|mLCD_DATA[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[2]~2_combout\ = (\MyLCD|mLCD_DATA[0]~6_combout\ & ((\MyLCD|Mux4~4_combout\))) # (!\MyLCD|mLCD_DATA[0]~6_combout\ & (\MyLCD|LUT_INDEX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~6_combout\,
	datab => \MyLCD|LUT_INDEX\(0),
	datad => \MyLCD|Mux4~4_combout\,
	combout => \MyLCD|mLCD_DATA[2]~2_combout\);

-- Location: LCCOMB_X27_Y13_N14
\MyLCD|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add16~4_combout\ = ((\myMUX|out_mux[2]~2_combout\ $ (\MyLCD|LessThan16~0_combout\ $ (\MyLCD|Add16~3\)))) # (GND)
-- \MyLCD|Add16~5\ = CARRY((\myMUX|out_mux[2]~2_combout\ & (\MyLCD|LessThan16~0_combout\ & !\MyLCD|Add16~3\)) # (!\myMUX|out_mux[2]~2_combout\ & ((\MyLCD|LessThan16~0_combout\) # (!\MyLCD|Add16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[2]~2_combout\,
	datab => \MyLCD|LessThan16~0_combout\,
	datad => VCC,
	cin => \MyLCD|Add16~3\,
	combout => \MyLCD|Add16~4_combout\,
	cout => \MyLCD|Add16~5\);

-- Location: LCFF_X27_Y15_N27
\MyLCD|mLCD_DATA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mLCD_DATA[2]~2_combout\,
	sdata => \MyLCD|Add16~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|mLCD_DATA[0]~9_combout\,
	sload => \MyLCD|mLCD_DATA[0]~10_combout\,
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(2));

-- Location: LCCOMB_X30_Y15_N26
\MyLCD|mLCD_DATA[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~6_combout\ = (\MyLCD|LUT_INDEX\(4)) # ((\MyLCD|LUT_INDEX\(2)) # (\MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|mLCD_DATA[0]~6_combout\);

-- Location: LCCOMB_X27_Y14_N28
\MyLCD|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add3~6_combout\ = (\myReg|Mux4~combout\ & (!\MyLCD|Add3~5\)) # (!\myReg|Mux4~combout\ & ((\MyLCD|Add3~5\) # (GND)))
-- \MyLCD|Add3~7\ = CARRY((!\MyLCD|Add3~5\) # (!\myReg|Mux4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux4~combout\,
	datad => VCC,
	cin => \MyLCD|Add3~5\,
	combout => \MyLCD|Add3~6_combout\,
	cout => \MyLCD|Add3~7\);

-- Location: LCCOMB_X29_Y13_N12
\MyLCD|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add2~6_combout\ = (\myReg|Mux0~combout\ & (!\MyLCD|Add2~5\)) # (!\myReg|Mux0~combout\ & ((\MyLCD|Add2~5\) # (GND)))
-- \MyLCD|Add2~7\ = CARRY((!\MyLCD|Add2~5\) # (!\myReg|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myReg|Mux0~combout\,
	datad => VCC,
	cin => \MyLCD|Add2~5\,
	combout => \MyLCD|Add2~6_combout\,
	cout => \MyLCD|Add2~7\);

-- Location: LCCOMB_X28_Y14_N28
\MyLCD|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add11~6_combout\ = (\myULA|Mux4~combout\ & (!\MyLCD|Add11~5\)) # (!\myULA|Mux4~combout\ & ((\MyLCD|Add11~5\) # (GND)))
-- \MyLCD|Add11~7\ = CARRY((!\MyLCD|Add11~5\) # (!\myULA|Mux4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myULA|Mux4~combout\,
	datad => VCC,
	cin => \MyLCD|Add11~5\,
	combout => \MyLCD|Add11~6_combout\,
	cout => \MyLCD|Add11~7\);

-- Location: LCCOMB_X27_Y15_N18
\MyLCD|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add14~6_combout\ = (\myReg|register[2][3]~regout\ & (!\MyLCD|Add14~5\)) # (!\myReg|register[2][3]~regout\ & ((\MyLCD|Add14~5\) # (GND)))
-- \MyLCD|Add14~7\ = CARRY((!\MyLCD|Add14~5\) # (!\myReg|register[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myReg|register[2][3]~regout\,
	datad => VCC,
	cin => \MyLCD|Add14~5\,
	combout => \MyLCD|Add14~6_combout\,
	cout => \MyLCD|Add14~7\);

-- Location: LCCOMB_X29_Y15_N14
\MyLCD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux3~0_combout\ = (\MyLCD|mLCD_DATA[0]~5_combout\ & (((\MyLCD|Add14~6_combout\ & \MyLCD|LUT_INDEX\(2))))) # (!\MyLCD|mLCD_DATA[0]~5_combout\ & ((\MyLCD|Add13~6_combout\) # ((!\MyLCD|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~6_combout\,
	datab => \MyLCD|Add14~6_combout\,
	datac => \MyLCD|mLCD_DATA[0]~5_combout\,
	datad => \MyLCD|LUT_INDEX\(2),
	combout => \MyLCD|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y15_N28
\MyLCD|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add10~6_combout\ = (\myULA|Mux0~combout\ & (!\MyLCD|Add10~5\)) # (!\myULA|Mux0~combout\ & ((\MyLCD|Add10~5\) # (GND)))
-- \MyLCD|Add10~7\ = CARRY((!\MyLCD|Add10~5\) # (!\myULA|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myULA|Mux0~combout\,
	datad => VCC,
	cin => \MyLCD|Add10~5\,
	combout => \MyLCD|Add10~6_combout\,
	cout => \MyLCD|Add10~7\);

-- Location: LCCOMB_X29_Y15_N0
\MyLCD|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux3~1_combout\ = (\MyLCD|LUT_INDEX\(2) & (((\MyLCD|Mux3~0_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Mux3~0_combout\ & ((\MyLCD|Add10~6_combout\))) # (!\MyLCD|Mux3~0_combout\ & (\MyLCD|Add11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(2),
	datab => \MyLCD|Add11~6_combout\,
	datac => \MyLCD|Mux3~0_combout\,
	datad => \MyLCD|Add10~6_combout\,
	combout => \MyLCD|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y15_N30
\MyLCD|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux3~2_combout\ = (\MyLCD|Mux3~1_combout\ & ((\MyLCD|LUT_INDEX\(1)) # (!\MyLCD|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(1),
	datad => \MyLCD|Mux3~1_combout\,
	combout => \MyLCD|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y15_N28
\MyLCD|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux3~3_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & (((!\MyLCD|Mux2~0_combout\)))) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Mux2~0_combout\ & (\MyLCD|Add2~6_combout\)) # (!\MyLCD|Mux2~0_combout\ & ((\MyLCD|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~4_combout\,
	datab => \MyLCD|Add2~6_combout\,
	datac => \MyLCD|Mux2~0_combout\,
	datad => \MyLCD|Mux3~2_combout\,
	combout => \MyLCD|Mux3~3_combout\);

-- Location: LCCOMB_X29_Y15_N2
\MyLCD|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux3~4_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & ((\MyLCD|Mux3~3_combout\ & (\MyLCD|Add15~6_combout\)) # (!\MyLCD|Mux3~3_combout\ & ((\MyLCD|Add3~6_combout\))))) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & (((\MyLCD|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~4_combout\,
	datab => \MyLCD|Add15~6_combout\,
	datac => \MyLCD|Add3~6_combout\,
	datad => \MyLCD|Mux3~3_combout\,
	combout => \MyLCD|Mux3~4_combout\);

-- Location: LCCOMB_X30_Y15_N4
\MyLCD|mLCD_DATA[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[3]~3_combout\ = (\MyLCD|mLCD_DATA[0]~6_combout\ & ((\MyLCD|Mux3~4_combout\))) # (!\MyLCD|mLCD_DATA[0]~6_combout\ & (!\MyLCD|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datab => \MyLCD|mLCD_DATA[0]~6_combout\,
	datad => \MyLCD|Mux3~4_combout\,
	combout => \MyLCD|mLCD_DATA[3]~3_combout\);

-- Location: LCCOMB_X27_Y13_N16
\MyLCD|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add16~6_combout\ = (\MyLCD|Add16~5\ & (((\SW~combout\(17))) # (!\myReg|register[2][3]~regout\))) # (!\MyLCD|Add16~5\ & (((\myReg|register[2][3]~regout\ & !\SW~combout\(17))) # (GND)))
-- \MyLCD|Add16~7\ = CARRY(((\SW~combout\(17)) # (!\MyLCD|Add16~5\)) # (!\myReg|register[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][3]~regout\,
	datab => \SW~combout\(17),
	datad => VCC,
	cin => \MyLCD|Add16~5\,
	combout => \MyLCD|Add16~6_combout\,
	cout => \MyLCD|Add16~7\);

-- Location: LCFF_X30_Y15_N5
\MyLCD|mLCD_DATA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|mLCD_DATA[3]~3_combout\,
	sdata => \MyLCD|Add16~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \MyLCD|mLCD_DATA[0]~9_combout\,
	sload => \MyLCD|mLCD_DATA[0]~10_combout\,
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(3));

-- Location: LCCOMB_X28_Y16_N6
\MyLCD|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~1_combout\ = (\MyLCD|LUT_INDEX\(5) & (\MyLCD|LUT_INDEX\(2) $ (((\MyLCD|LUT_INDEX\(1)) # (!\MyLCD|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(0),
	datab => \MyLCD|LUT_INDEX\(1),
	datac => \MyLCD|LUT_INDEX\(5),
	datad => \MyLCD|LUT_INDEX\(2),
	combout => \MyLCD|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y15_N20
\MyLCD|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add14~8_combout\ = \MyLCD|Add14~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add14~7\,
	combout => \MyLCD|Add14~8_combout\);

-- Location: LCCOMB_X29_Y16_N8
\MyLCD|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~8_combout\ = (\MyLCD|LUT_INDEX\(4) & (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|LUT_INDEX\(3)) # (\MyLCD|Add14~8_combout\)))) # (!\MyLCD|LUT_INDEX\(4) & (\MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(3),
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|Add14~8_combout\,
	combout => \MyLCD|Mux2~8_combout\);

-- Location: LCCOMB_X27_Y13_N18
\MyLCD|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add16~8_combout\ = !\MyLCD|Add16~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add16~7\,
	combout => \MyLCD|Add16~8_combout\);

-- Location: LCCOMB_X28_Y14_N30
\MyLCD|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add11~8_combout\ = \MyLCD|Add11~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add11~7\,
	combout => \MyLCD|Add11~8_combout\);

-- Location: LCCOMB_X29_Y16_N16
\MyLCD|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~3_combout\ = (\MyLCD|LUT_INDEX\(3) & (!\MyLCD|Add16~8_combout\)) # (!\MyLCD|LUT_INDEX\(3) & ((\MyLCD|Add11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(3),
	datab => \MyLCD|Add16~8_combout\,
	datac => \MyLCD|Add11~8_combout\,
	combout => \MyLCD|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y14_N30
\MyLCD|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add3~8_combout\ = \MyLCD|Add3~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add3~7\,
	combout => \MyLCD|Add3~8_combout\);

-- Location: LCCOMB_X28_Y16_N28
\MyLCD|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~2_combout\ = (\MyLCD|LUT_INDEX\(4) & (\MyLCD|Add13~8_combout\ & ((!\MyLCD|LUT_INDEX\(3))))) # (!\MyLCD|LUT_INDEX\(4) & (((\MyLCD|Add3~8_combout\) # (\MyLCD|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~8_combout\,
	datab => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|Add3~8_combout\,
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y16_N14
\MyLCD|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~4_combout\ = (\MyLCD|LUT_INDEX\(2) & (((\MyLCD|Mux2~2_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX\(4) & (\MyLCD|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(2),
	datab => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|Mux2~3_combout\,
	datad => \MyLCD|Mux2~2_combout\,
	combout => \MyLCD|Mux2~4_combout\);

-- Location: LCCOMB_X30_Y16_N0
\MyLCD|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~6_combout\ = (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|LUT_INDEX\(3)) # (\MyLCD|LUT_INDEX\(4)))) # (!\MyLCD|LUT_INDEX\(2) & ((!\MyLCD|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(3),
	datad => \MyLCD|LUT_INDEX\(4),
	combout => \MyLCD|Mux2~6_combout\);

-- Location: LCCOMB_X29_Y16_N24
\MyLCD|Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~14_combout\ = (\MyLCD|LUT_INDEX\(4) & (((\MyLCD|LUT_INDEX\(3)) # (!\MyLCD|LUT_INDEX\(2))))) # (!\MyLCD|LUT_INDEX\(4) & ((\MyLCD|LUT_INDEX\(3) & ((!\MyLCD|LUT_INDEX\(2)))) # (!\MyLCD|LUT_INDEX\(3) & (\MyLCD|Add2~8_combout\ & 
-- \MyLCD|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add2~8_combout\,
	datab => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|LUT_INDEX\(3),
	datad => \MyLCD|LUT_INDEX\(2),
	combout => \MyLCD|Mux2~14_combout\);

-- Location: LCCOMB_X28_Y15_N30
\MyLCD|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add10~8_combout\ = \MyLCD|Add10~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add10~7\,
	combout => \MyLCD|Add10~8_combout\);

-- Location: LCCOMB_X29_Y16_N12
\MyLCD|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~5_combout\ = (!\MyLCD|LUT_INDEX\(2) & ((\MyLCD|LUT_INDEX\(3) & (\MyLCD|Add15~8_combout\)) # (!\MyLCD|LUT_INDEX\(3) & ((\MyLCD|Add10~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add15~8_combout\,
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(3),
	datad => \MyLCD|Add10~8_combout\,
	combout => \MyLCD|Mux2~5_combout\);

-- Location: LCCOMB_X29_Y16_N22
\MyLCD|Mux2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~15_combout\ = (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Mux2~14_combout\) # ((!\MyLCD|LUT_INDEX\(4) & \MyLCD|Mux2~5_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & (\MyLCD|Mux2~14_combout\ & ((\MyLCD|Mux2~5_combout\) # (!\MyLCD|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(2),
	datab => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|Mux2~14_combout\,
	datad => \MyLCD|Mux2~5_combout\,
	combout => \MyLCD|Mux2~15_combout\);

-- Location: LCCOMB_X29_Y16_N10
\MyLCD|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~7_combout\ = (\MyLCD|LUT_INDEX\(0) & (((\MyLCD|LUT_INDEX\(1)) # (\MyLCD|Mux2~15_combout\)))) # (!\MyLCD|LUT_INDEX\(0) & (\MyLCD|Mux2~6_combout\ & (!\MyLCD|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(0),
	datab => \MyLCD|Mux2~6_combout\,
	datac => \MyLCD|LUT_INDEX\(1),
	datad => \MyLCD|Mux2~15_combout\,
	combout => \MyLCD|Mux2~7_combout\);

-- Location: LCCOMB_X29_Y16_N26
\MyLCD|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~9_combout\ = (\MyLCD|LUT_INDEX\(1) & ((\MyLCD|Mux2~7_combout\ & (\MyLCD|Mux2~8_combout\)) # (!\MyLCD|Mux2~7_combout\ & ((\MyLCD|Mux2~4_combout\))))) # (!\MyLCD|LUT_INDEX\(1) & (((\MyLCD|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datab => \MyLCD|Mux2~8_combout\,
	datac => \MyLCD|Mux2~4_combout\,
	datad => \MyLCD|Mux2~7_combout\,
	combout => \MyLCD|Mux2~9_combout\);

-- Location: LCCOMB_X29_Y16_N20
\MyLCD|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~10_combout\ = (\MyLCD|LUT_INDEX\(5) & (\MyLCD|Mux2~0_combout\ & (\MyLCD|Mux2~1_combout\))) # (!\MyLCD|LUT_INDEX\(5) & ((\MyLCD|Mux2~9_combout\) # ((\MyLCD|Mux2~0_combout\ & \MyLCD|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(5),
	datab => \MyLCD|Mux2~0_combout\,
	datac => \MyLCD|Mux2~1_combout\,
	datad => \MyLCD|Mux2~9_combout\,
	combout => \MyLCD|Mux2~10_combout\);

-- Location: LCFF_X29_Y16_N21
\MyLCD|mLCD_DATA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Mux2~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(4));

-- Location: LCCOMB_X29_Y16_N18
\MyLCD|Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~13_combout\ = (\MyLCD|LUT_INDEX\(3)) # ((\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Add14~8_combout\) # (!\MyLCD|LUT_INDEX\(4)))) # (!\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(3),
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|Add14~8_combout\,
	combout => \MyLCD|Mux2~13_combout\);

-- Location: LCCOMB_X28_Y16_N22
\MyLCD|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~11_combout\ = (\MyLCD|LUT_INDEX\(4) & ((\MyLCD|Add13~8_combout\) # ((!\MyLCD|LUT_INDEX\(2))))) # (!\MyLCD|LUT_INDEX\(4) & (((\MyLCD|Add3~8_combout\ & \MyLCD|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~8_combout\,
	datab => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|Add3~8_combout\,
	datad => \MyLCD|LUT_INDEX\(2),
	combout => \MyLCD|Mux2~11_combout\);

-- Location: LCCOMB_X29_Y16_N4
\MyLCD|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux2~12_combout\ = (\MyLCD|Mux2~11_combout\ & (((\MyLCD|LUT_INDEX\(2)) # (\MyLCD|Mux2~3_combout\)))) # (!\MyLCD|Mux2~11_combout\ & (\MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(3),
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|Mux2~3_combout\,
	datad => \MyLCD|Mux2~11_combout\,
	combout => \MyLCD|Mux2~12_combout\);

-- Location: LCCOMB_X29_Y16_N30
\MyLCD|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux1~4_combout\ = (\MyLCD|LUT_INDEX\(3) & (\MyLCD|LUT_INDEX\(0) & ((\MyLCD|LUT_INDEX\(2)) # (!\MyLCD|LUT_INDEX\(4))))) # (!\MyLCD|LUT_INDEX\(3) & (!\MyLCD|LUT_INDEX\(4) & (!\MyLCD|LUT_INDEX\(0) & \MyLCD|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(3),
	datab => \MyLCD|LUT_INDEX\(4),
	datac => \MyLCD|LUT_INDEX\(0),
	datad => \MyLCD|LUT_INDEX\(2),
	combout => \MyLCD|Mux1~4_combout\);

-- Location: LCCOMB_X29_Y16_N2
\MyLCD|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux1~8_combout\ = (\MyLCD|LUT_INDEX\(2) & (!\MyLCD|LUT_INDEX\(4) & ((\MyLCD|Add2~8_combout\) # (\MyLCD|Mux2~5_combout\)))) # (!\MyLCD|LUT_INDEX\(2) & (((\MyLCD|LUT_INDEX\(4) & \MyLCD|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add2~8_combout\,
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|Mux2~5_combout\,
	combout => \MyLCD|Mux1~8_combout\);

-- Location: LCCOMB_X29_Y16_N0
\MyLCD|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux1~5_combout\ = (\MyLCD|LUT_INDEX\(0) & ((\MyLCD|Mux1~4_combout\) # ((\MyLCD|LUT_INDEX\(1)) # (\MyLCD|Mux1~8_combout\)))) # (!\MyLCD|LUT_INDEX\(0) & (!\MyLCD|Mux1~4_combout\ & (!\MyLCD|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(0),
	datab => \MyLCD|Mux1~4_combout\,
	datac => \MyLCD|LUT_INDEX\(1),
	datad => \MyLCD|Mux1~8_combout\,
	combout => \MyLCD|Mux1~5_combout\);

-- Location: LCCOMB_X29_Y16_N28
\MyLCD|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux1~6_combout\ = (\MyLCD|LUT_INDEX\(1) & ((\MyLCD|Mux1~5_combout\ & (\MyLCD|Mux2~13_combout\)) # (!\MyLCD|Mux1~5_combout\ & ((\MyLCD|Mux2~12_combout\))))) # (!\MyLCD|LUT_INDEX\(1) & (((\MyLCD|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datab => \MyLCD|Mux2~13_combout\,
	datac => \MyLCD|Mux2~12_combout\,
	datad => \MyLCD|Mux1~5_combout\,
	combout => \MyLCD|Mux1~6_combout\);

-- Location: LCCOMB_X29_Y16_N6
\MyLCD|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux1~7_combout\ = (\MyLCD|LUT_INDEX\(5)) # (\MyLCD|Mux1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(5),
	datad => \MyLCD|Mux1~6_combout\,
	combout => \MyLCD|Mux1~7_combout\);

-- Location: LCFF_X29_Y16_N7
\MyLCD|mLCD_DATA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Mux1~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(5));

-- Location: LCCOMB_X30_Y15_N24
\MyLCD|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~6_combout\ = (\MyLCD|LUT_INDEX\(2)) # ((\MyLCD|LUT_INDEX\(3) & ((!\MyLCD|LUT_INDEX\(1)))) # (!\MyLCD|LUT_INDEX\(3) & (\MyLCD|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(4),
	datab => \MyLCD|LUT_INDEX\(1),
	datac => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|Mux0~6_combout\);

-- Location: LCCOMB_X29_Y15_N6
\MyLCD|mLCD_DATA[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|mLCD_DATA[0]~4_combout\ = (\MyLCD|LUT_INDEX\(3)) # ((\MyLCD|LUT_INDEX\(1) & !\MyLCD|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(1),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|mLCD_DATA[0]~4_combout\);

-- Location: LCCOMB_X29_Y13_N14
\MyLCD|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Add2~8_combout\ = \MyLCD|Add2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \MyLCD|Add2~7\,
	combout => \MyLCD|Add2~8_combout\);

-- Location: LCCOMB_X30_Y15_N16
\MyLCD|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~4_combout\ = (\MyLCD|mLCD_DATA[0]~4_combout\ & (((!\MyLCD|Mux2~0_combout\)) # (!\MyLCD|Add3~8_combout\))) # (!\MyLCD|mLCD_DATA[0]~4_combout\ & (((\MyLCD|Mux2~0_combout\ & !\MyLCD|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add3~8_combout\,
	datab => \MyLCD|mLCD_DATA[0]~4_combout\,
	datac => \MyLCD|Mux2~0_combout\,
	datad => \MyLCD|Add2~8_combout\,
	combout => \MyLCD|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y15_N12
\MyLCD|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~1_combout\ = (\MyLCD|LUT_INDEX\(2) & (((\MyLCD|mLCD_DATA[0]~5_combout\)) # (!\MyLCD|Add13~8_combout\))) # (!\MyLCD|LUT_INDEX\(2) & (((!\MyLCD|Add10~8_combout\ & !\MyLCD|mLCD_DATA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add13~8_combout\,
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|Add10~8_combout\,
	datad => \MyLCD|mLCD_DATA[0]~5_combout\,
	combout => \MyLCD|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y15_N10
\MyLCD|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~2_combout\ = (\MyLCD|mLCD_DATA[0]~5_combout\ & ((\MyLCD|Mux0~1_combout\ & (!\MyLCD|Add14~8_combout\)) # (!\MyLCD|Mux0~1_combout\ & ((!\MyLCD|Add11~8_combout\))))) # (!\MyLCD|mLCD_DATA[0]~5_combout\ & (((\MyLCD|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|mLCD_DATA[0]~5_combout\,
	datab => \MyLCD|Add14~8_combout\,
	datac => \MyLCD|Add11~8_combout\,
	datad => \MyLCD|Mux0~1_combout\,
	combout => \MyLCD|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y15_N10
\MyLCD|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~3_combout\ = (\MyLCD|LUT_INDEX\(1) & (((\MyLCD|Mux0~2_combout\)))) # (!\MyLCD|LUT_INDEX\(1) & ((\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX\(0))) # (!\MyLCD|LUT_INDEX\(2) & ((\MyLCD|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(1),
	datab => \MyLCD|LUT_INDEX\(0),
	datac => \MyLCD|LUT_INDEX\(2),
	datad => \MyLCD|Mux0~2_combout\,
	combout => \MyLCD|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y15_N22
\MyLCD|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~5_combout\ = (\MyLCD|Mux2~0_combout\ & (((\MyLCD|Mux0~4_combout\)))) # (!\MyLCD|Mux2~0_combout\ & ((\MyLCD|Mux0~4_combout\ & (!\MyLCD|Add15~8_combout\)) # (!\MyLCD|Mux0~4_combout\ & ((\MyLCD|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Add15~8_combout\,
	datab => \MyLCD|Mux2~0_combout\,
	datac => \MyLCD|Mux0~4_combout\,
	datad => \MyLCD|Mux0~3_combout\,
	combout => \MyLCD|Mux0~5_combout\);

-- Location: LCCOMB_X30_Y15_N20
\MyLCD|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|Mux0~7_combout\ = (\MyLCD|Mux0~0_combout\) # ((!\MyLCD|mLCD_DATA[0]~9_combout\ & (\MyLCD|Mux0~6_combout\ & \MyLCD|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|Mux0~0_combout\,
	datab => \MyLCD|mLCD_DATA[0]~9_combout\,
	datac => \MyLCD|Mux0~6_combout\,
	datad => \MyLCD|Mux0~5_combout\,
	combout => \MyLCD|Mux0~7_combout\);

-- Location: LCFF_X30_Y15_N21
\MyLCD|mLCD_DATA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|Mux0~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(6));

-- Location: LCCOMB_X28_Y16_N12
\MyLCD|LUT_DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_DATA~0_combout\ = (!\MyLCD|LUT_INDEX\(1) & (\MyLCD|LUT_INDEX\(2) & (\MyLCD|LUT_INDEX\(0) $ (!\MyLCD|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(0),
	datab => \MyLCD|LUT_INDEX\(1),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|LUT_INDEX\(2),
	combout => \MyLCD|LUT_DATA~0_combout\);

-- Location: LCCOMB_X27_Y16_N2
\MyLCD|LUT_DATA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|LUT_DATA~1_combout\ = (!\MyLCD|LUT_INDEX\(5) & (\MyLCD|LUT_DATA~0_combout\ & !\MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(5),
	datac => \MyLCD|LUT_DATA~0_combout\,
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|LUT_DATA~1_combout\);

-- Location: LCFF_X27_Y16_N3
\MyLCD|mLCD_DATA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|LUT_DATA~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_DATA\(7));

-- Location: LCCOMB_X29_Y12_N12
\myDecod01|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr7~0_combout\ = (\SW~combout\(0) & ((\SW~combout\(3)) # (\SW~combout\(1) $ (\SW~combout\(2))))) # (!\SW~combout\(0) & ((\SW~combout\(1)) # (\SW~combout\(3) $ (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr7~0_combout\);

-- Location: LCCOMB_X29_Y12_N22
\myDecod01|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr6~0_combout\ = (\SW~combout\(1) & (!\SW~combout\(3) & ((\SW~combout\(0)) # (!\SW~combout\(2))))) # (!\SW~combout\(1) & (\SW~combout\(0) & (\SW~combout\(3) $ (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr6~0_combout\);

-- Location: LCCOMB_X29_Y12_N0
\myDecod01|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr5~0_combout\ = (\SW~combout\(1) & (!\SW~combout\(3) & (\SW~combout\(0)))) # (!\SW~combout\(1) & ((\SW~combout\(2) & (!\SW~combout\(3))) # (!\SW~combout\(2) & ((\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr5~0_combout\);

-- Location: LCCOMB_X29_Y12_N2
\myDecod01|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr4~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0) & ((\SW~combout\(2)))) # (!\SW~combout\(0) & (\SW~combout\(3) & !\SW~combout\(2))))) # (!\SW~combout\(1) & (!\SW~combout\(3) & (\SW~combout\(0) $ (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr4~0_combout\);

-- Location: LCCOMB_X29_Y12_N8
\myDecod01|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr3~0_combout\ = (\SW~combout\(3) & (\SW~combout\(2) & ((\SW~combout\(1)) # (!\SW~combout\(0))))) # (!\SW~combout\(3) & (\SW~combout\(1) & (!\SW~combout\(0) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr3~0_combout\);

-- Location: LCCOMB_X29_Y12_N10
\myDecod01|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr2~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0) & (\SW~combout\(3))) # (!\SW~combout\(0) & ((\SW~combout\(2)))))) # (!\SW~combout\(1) & (\SW~combout\(2) & (\SW~combout\(3) $ (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr2~0_combout\);

-- Location: LCCOMB_X29_Y12_N28
\myDecod01|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod01|WideOr1~0_combout\ = (\SW~combout\(3) & (\SW~combout\(0) & (\SW~combout\(1) $ (\SW~combout\(2))))) # (!\SW~combout\(3) & (!\SW~combout\(1) & (\SW~combout\(0) $ (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \myDecod01|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y12_N12
\myDecod02|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr7~0_combout\ = (\SW~combout\(4) & ((\SW~combout\(7)) # (\SW~combout\(5) $ (\SW~combout\(6))))) # (!\SW~combout\(4) & ((\SW~combout\(5)) # (\SW~combout\(7) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(7),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \myDecod02|WideOr7~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\myDecod02|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr6~0_combout\ = (\SW~combout\(4) & (\SW~combout\(7) $ (((\SW~combout\(5)) # (!\SW~combout\(6)))))) # (!\SW~combout\(4) & (!\SW~combout\(7) & (\SW~combout\(5) & !\SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(7),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \myDecod02|WideOr6~0_combout\);

-- Location: LCCOMB_X31_Y12_N8
\myDecod02|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr5~0_combout\ = (\SW~combout\(5) & (\SW~combout\(4) & (!\SW~combout\(7)))) # (!\SW~combout\(5) & ((\SW~combout\(6) & ((!\SW~combout\(7)))) # (!\SW~combout\(6) & (\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(7),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \myDecod02|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y12_N6
\myDecod02|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr4~0_combout\ = (\SW~combout\(5) & ((\SW~combout\(4) & ((\SW~combout\(6)))) # (!\SW~combout\(4) & (\SW~combout\(7) & !\SW~combout\(6))))) # (!\SW~combout\(5) & (!\SW~combout\(7) & (\SW~combout\(4) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(7),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \myDecod02|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y12_N24
\myDecod02|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr3~0_combout\ = (\SW~combout\(7) & (\SW~combout\(6) & ((\SW~combout\(5)) # (!\SW~combout\(4))))) # (!\SW~combout\(7) & (!\SW~combout\(4) & (\SW~combout\(5) & !\SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(7),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \myDecod02|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y12_N2
\myDecod02|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr2~0_combout\ = (\SW~combout\(7) & ((\SW~combout\(4) & (\SW~combout\(5))) # (!\SW~combout\(4) & ((\SW~combout\(6)))))) # (!\SW~combout\(7) & (\SW~combout\(6) & (\SW~combout\(4) $ (\SW~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(7),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \myDecod02|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y12_N16
\myDecod02|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDecod02|WideOr1~0_combout\ = (\SW~combout\(7) & (\SW~combout\(4) & (\SW~combout\(6) $ (\SW~combout\(5))))) # (!\SW~combout\(7) & (!\SW~combout\(5) & (\SW~combout\(6) $ (\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \myDecod02|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y12_N26
\myULA|ULAResult~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~4_combout\ = \myReg|Mux3~combout\ $ (((\myReg|register[2][4]~regout\ & !\SW~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|register[2][4]~regout\,
	datab => \SW~combout\(17),
	datad => \myReg|Mux3~combout\,
	combout => \myULA|ULAResult~4_combout\);

-- Location: LCCOMB_X28_Y12_N0
\myULA|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux3~0_combout\ = (\myULA|Mux0~1_combout\ & (\myULA|ULAResult~4_combout\ & (\myULA|Mux0~0_combout\))) # (!\myULA|Mux0~1_combout\ & (((\myULA|Add0~16_combout\) # (!\myULA|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~1_combout\,
	datab => \myULA|ULAResult~4_combout\,
	datac => \myULA|Mux0~0_combout\,
	datad => \myULA|Add0~16_combout\,
	combout => \myULA|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\myULA|Mux3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux3~combout\ = (\myULA|Mux0~2_combout\ & ((\myReg|Mux3~combout\ & ((\myMUX|out_mux[4]~4_combout\) # (!\myULA|Mux3~0_combout\))) # (!\myReg|Mux3~combout\ & (\myMUX|out_mux[4]~4_combout\ & !\myULA|Mux3~0_combout\)))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~2_combout\,
	datab => \myReg|Mux3~combout\,
	datac => \myMUX|out_mux[4]~4_combout\,
	datad => \myULA|Mux3~0_combout\,
	combout => \myULA|Mux3~combout\);

-- Location: LCCOMB_X28_Y13_N20
\myULA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Equal0~1_combout\ = (!\myULA|Mux4~combout\ & !\myULA|Mux3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myULA|Mux4~combout\,
	datad => \myULA|Mux3~combout\,
	combout => \myULA|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y14_N6
\myMUX|out_mux[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[0]~6_combout\ = (\SW~combout\(17)) # (\myReg|register[2][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \myReg|register[2][0]~regout\,
	combout => \myMUX|out_mux[0]~6_combout\);

-- Location: LCCOMB_X30_Y14_N18
\myULA|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux7~0_combout\ = (\myULA|Mux0~2_combout\ & ((\SW~combout\(8) & ((\myMUX|out_mux[0]~6_combout\) # (\myReg|Mux7~combout\))) # (!\SW~combout\(8) & (\myMUX|out_mux[0]~6_combout\ & \myReg|Mux7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \myMUX|out_mux[0]~6_combout\,
	datac => \myReg|Mux7~combout\,
	datad => \myULA|Mux0~2_combout\,
	combout => \myULA|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y13_N0
\myMUX|out_mux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|out_mux[2]~2_combout\ = (!\SW~combout\(17) & !\myReg|register[2][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \myReg|register[2][2]~regout\,
	combout => \myMUX|out_mux[2]~2_combout\);

-- Location: LCCOMB_X27_Y14_N2
\myULA|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~1_cout\ = CARRY((\myMUX|out_mux[0]~6_combout\ & !\myReg|Mux7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[0]~6_combout\,
	datab => \myReg|Mux7~combout\,
	datad => VCC,
	cout => \myULA|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y14_N4
\myULA|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~3_cout\ = CARRY((\myMUX|out_mux[1]~3_combout\ & ((\myReg|Mux6~combout\) # (!\myULA|LessThan0~1_cout\))) # (!\myMUX|out_mux[1]~3_combout\ & (\myReg|Mux6~combout\ & !\myULA|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[1]~3_combout\,
	datab => \myReg|Mux6~combout\,
	datad => VCC,
	cin => \myULA|LessThan0~1_cout\,
	cout => \myULA|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y14_N6
\myULA|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~5_cout\ = CARRY((\myReg|Mux5~combout\ & (!\myMUX|out_mux[2]~2_combout\ & !\myULA|LessThan0~3_cout\)) # (!\myReg|Mux5~combout\ & ((!\myULA|LessThan0~3_cout\) # (!\myMUX|out_mux[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux5~combout\,
	datab => \myMUX|out_mux[2]~2_combout\,
	datad => VCC,
	cin => \myULA|LessThan0~3_cout\,
	cout => \myULA|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y14_N8
\myULA|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~7_cout\ = CARRY((\myReg|Mux4~combout\ & ((!\myULA|LessThan0~5_cout\) # (!\myMUX|out_mux[3]~5_combout\))) # (!\myReg|Mux4~combout\ & (!\myMUX|out_mux[3]~5_combout\ & !\myULA|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux4~combout\,
	datab => \myMUX|out_mux[3]~5_combout\,
	datad => VCC,
	cin => \myULA|LessThan0~5_cout\,
	cout => \myULA|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y14_N10
\myULA|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~9_cout\ = CARRY((\myReg|Mux3~combout\ & (\myMUX|out_mux[4]~4_combout\ & !\myULA|LessThan0~7_cout\)) # (!\myReg|Mux3~combout\ & ((\myMUX|out_mux[4]~4_combout\) # (!\myULA|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myReg|Mux3~combout\,
	datab => \myMUX|out_mux[4]~4_combout\,
	datad => VCC,
	cin => \myULA|LessThan0~7_cout\,
	cout => \myULA|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y14_N12
\myULA|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~11_cout\ = CARRY((\myMUX|out_mux[5]~0_combout\ & (\myReg|Mux2~combout\ & !\myULA|LessThan0~9_cout\)) # (!\myMUX|out_mux[5]~0_combout\ & ((\myReg|Mux2~combout\) # (!\myULA|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[5]~0_combout\,
	datab => \myReg|Mux2~combout\,
	datad => VCC,
	cin => \myULA|LessThan0~9_cout\,
	cout => \myULA|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y14_N14
\myULA|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~13_cout\ = CARRY((\myMUX|out_mux[6]~1_combout\ & ((!\myULA|LessThan0~11_cout\) # (!\myReg|Mux1~combout\))) # (!\myMUX|out_mux[6]~1_combout\ & (!\myReg|Mux1~combout\ & !\myULA|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[6]~1_combout\,
	datab => \myReg|Mux1~combout\,
	datad => VCC,
	cin => \myULA|LessThan0~11_cout\,
	cout => \myULA|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y14_N16
\myULA|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|LessThan0~14_combout\ = (\myMUX|out_mux[7]~7_combout\ & ((\myULA|LessThan0~13_cout\) # (!\myReg|Mux0~combout\))) # (!\myMUX|out_mux[7]~7_combout\ & (\myULA|LessThan0~13_cout\ & !\myReg|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|out_mux[7]~7_combout\,
	datad => \myReg|Mux0~combout\,
	cin => \myULA|LessThan0~13_cout\,
	combout => \myULA|LessThan0~14_combout\);

-- Location: LCCOMB_X28_Y14_N0
\myULA|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux7~2_combout\ = (\SW~combout\(10) & (\SW~combout\(8) & ((\myULA|LessThan0~14_combout\)))) # (!\SW~combout\(10) & (((\myULA|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(10),
	datac => \myULA|Add0~8_combout\,
	datad => \myULA|LessThan0~14_combout\,
	combout => \myULA|Mux7~2_combout\);

-- Location: LCCOMB_X28_Y14_N10
\myULA|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux7~3_combout\ = (\myULA|Mux7~0_combout\) # ((!\SW~combout\(9) & ((\myULA|Mux7~1_combout\) # (\myULA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux7~1_combout\,
	datab => \myULA|Mux7~0_combout\,
	datac => \SW~combout\(9),
	datad => \myULA|Mux7~2_combout\,
	combout => \myULA|Mux7~3_combout\);

-- Location: LCCOMB_X30_Y13_N0
\myULA|ULAResult~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~0_combout\ = \myReg|Mux2~combout\ $ (((\myReg|register[2][5]~regout\ & !\SW~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myReg|register[2][5]~regout\,
	datac => \SW~combout\(17),
	datad => \myReg|Mux2~combout\,
	combout => \myULA|ULAResult~0_combout\);

-- Location: LCCOMB_X29_Y14_N20
\myULA|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux2~0_combout\ = (\myULA|Mux0~0_combout\ & ((\myULA|Mux0~1_combout\ & (\myULA|ULAResult~0_combout\)) # (!\myULA|Mux0~1_combout\ & ((\myULA|Add0~18_combout\))))) # (!\myULA|Mux0~0_combout\ & (!\myULA|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~0_combout\,
	datab => \myULA|Mux0~1_combout\,
	datac => \myULA|ULAResult~0_combout\,
	datad => \myULA|Add0~18_combout\,
	combout => \myULA|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y14_N22
\myULA|Mux2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux2~combout\ = (\myULA|Mux0~2_combout\ & ((\myMUX|out_mux[5]~0_combout\ & ((\myReg|Mux2~combout\) # (!\myULA|Mux2~0_combout\))) # (!\myMUX|out_mux[5]~0_combout\ & (!\myULA|Mux2~0_combout\ & \myReg|Mux2~combout\)))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~2_combout\,
	datab => \myMUX|out_mux[5]~0_combout\,
	datac => \myULA|Mux2~0_combout\,
	datad => \myReg|Mux2~combout\,
	combout => \myULA|Mux2~combout\);

-- Location: LCCOMB_X28_Y14_N14
\myULA|ULAResult~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|ULAResult~2_combout\ = \myReg|Mux5~combout\ $ (((\SW~combout\(17)) # (\myReg|register[2][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \myReg|Mux5~combout\,
	datad => \myReg|register[2][2]~regout\,
	combout => \myULA|ULAResult~2_combout\);

-- Location: LCCOMB_X28_Y14_N16
\myULA|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux5~0_combout\ = (\myULA|Mux0~1_combout\ & (\myULA|Mux0~0_combout\ & (\myULA|ULAResult~2_combout\))) # (!\myULA|Mux0~1_combout\ & (((\myULA|Add0~12_combout\)) # (!\myULA|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~1_combout\,
	datab => \myULA|Mux0~0_combout\,
	datac => \myULA|ULAResult~2_combout\,
	datad => \myULA|Add0~12_combout\,
	combout => \myULA|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\myULA|Mux5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Mux5~combout\ = (\myULA|Mux0~2_combout\ & ((\myMUX|out_mux[2]~2_combout\ & (!\myULA|Mux5~0_combout\ & \myReg|Mux5~combout\)) # (!\myMUX|out_mux[2]~2_combout\ & ((\myReg|Mux5~combout\) # (!\myULA|Mux5~0_combout\))))) # (!\myULA|Mux0~2_combout\ & 
-- (((\myULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux0~2_combout\,
	datab => \myMUX|out_mux[2]~2_combout\,
	datac => \myULA|Mux5~0_combout\,
	datad => \myReg|Mux5~combout\,
	combout => \myULA|Mux5~combout\);

-- Location: LCCOMB_X28_Y13_N2
\myULA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Equal0~0_combout\ = (!\myULA|Mux1~combout\ & (!\myULA|Mux2~combout\ & (!\myULA|Mux6~combout\ & !\myULA|Mux5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Mux1~combout\,
	datab => \myULA|Mux2~combout\,
	datac => \myULA|Mux6~combout\,
	datad => \myULA|Mux5~combout\,
	combout => \myULA|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y13_N4
\myULA|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myULA|Equal0~2_combout\ = (\myULA|Equal0~1_combout\ & (!\myULA|Mux7~3_combout\ & (!\myULA|Mux0~combout\ & \myULA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myULA|Equal0~1_combout\,
	datab => \myULA|Mux7~3_combout\,
	datac => \myULA|Mux0~combout\,
	datad => \myULA|Equal0~0_combout\,
	combout => \myULA|Equal0~2_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X29_Y18_N0
\MyLCD|u0|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|u0|Selector3~0_combout\ = (\MyLCD|u0|ST.01~regout\) # ((\MyLCD|u0|LCD_EN~regout\ & ((\MyLCD|u0|ST.10~regout\) # (!\MyLCD|u0|ST.00~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|u0|ST.01~regout\,
	datab => \MyLCD|u0|ST.10~regout\,
	datac => \MyLCD|u0|LCD_EN~regout\,
	datad => \MyLCD|u0|ST.00~regout\,
	combout => \MyLCD|u0|Selector3~0_combout\);

-- Location: LCFF_X29_Y18_N1
\MyLCD|u0|LCD_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|u0|Selector3~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|u0|mStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|u0|LCD_EN~regout\);

-- Location: LCCOMB_X28_Y16_N0
\MyLCD|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|WideOr0~0_combout\ = (\MyLCD|LUT_INDEX\(2) & ((\MyLCD|LUT_INDEX\(1)) # (\MyLCD|LUT_INDEX\(0) $ (\MyLCD|LUT_INDEX\(4))))) # (!\MyLCD|LUT_INDEX\(2) & (((\MyLCD|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyLCD|LUT_INDEX\(0),
	datab => \MyLCD|LUT_INDEX\(2),
	datac => \MyLCD|LUT_INDEX\(4),
	datad => \MyLCD|LUT_INDEX\(1),
	combout => \MyLCD|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y16_N0
\MyLCD|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MyLCD|WideOr0~1_combout\ = (\MyLCD|LUT_INDEX\(5)) # ((\MyLCD|WideOr0~0_combout\) # (\MyLCD|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyLCD|LUT_INDEX\(5),
	datac => \MyLCD|WideOr0~0_combout\,
	datad => \MyLCD|LUT_INDEX\(3),
	combout => \MyLCD|WideOr0~1_combout\);

-- Location: LCFF_X27_Y16_N1
\MyLCD|mLCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \MyLCD|WideOr0~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \MyLCD|ALT_INV_mLCD_ST.000000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MyLCD|mLCD_RS~regout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(4),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(5),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(6),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MyLCD|mLCD_DATA\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(7));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(0));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(1));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(2));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(8));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(9));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(11));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(12));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(14));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(15));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(16));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(17));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(18));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(19));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(20));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(22));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(23));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(24));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(25));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(26));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[27]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(27));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[28]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(28));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[29]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(29));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[30]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(30));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[31]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(31));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[32]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(32));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[33]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(33));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[34]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(34));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[35]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(35));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[0]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[1]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[2]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(2));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[3]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(3));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[4]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[5]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(5));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[6]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(6));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[7]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(7));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[8]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(8));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[9]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(9));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[10]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(10));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[11]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(11));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[12]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(12));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[13]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(13));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[14]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(14));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[15]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(15));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[16]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(16));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[17]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(17));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[18]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(18));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[19]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(19));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[20]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(20));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[21]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(21));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[22]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(22));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[23]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(23));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[24]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(24));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[25]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(25));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[26]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(26));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[27]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(27));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[28]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(28));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[29]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(29));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[30]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(30));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[31]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(31));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[32]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(32));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[33]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(33));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[34]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(34));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[35]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(35));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27~I\ : cycloneii_io
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
	padio => ww_CLOCK_27);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \myDecod01|ALT_INV_WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \myDecod01|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \myDecod01|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \myDecod01|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \myDecod01|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \myDecod01|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \myDecod01|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \myDecod02|ALT_INV_WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \myDecod02|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \myDecod02|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \myDecod02|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \myDecod02|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \myDecod02|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \myDecod02|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => \myULA|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[8]~I\ : cycloneii_io
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
	datain => \ALT_INV_KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(8));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TXD~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TXD);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RXD~I\ : cycloneii_io
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
	padio => ww_UART_RXD);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ON~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_ON);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_BLON~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_BLON);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_EN~I\ : cycloneii_io
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
	datain => \MyLCD|u0|LCD_EN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_EN);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
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
	datain => \MyLCD|mLCD_RS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);
END structure;


