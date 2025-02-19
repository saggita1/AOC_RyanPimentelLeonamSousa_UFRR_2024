-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/18/2025 23:54:14"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	CPU IS
    PORT (
	clk : IN std_logic;
	pc_out : OUT std_logic_vector(7 DOWNTO 0);
	instr_out : OUT std_logic_vector(7 DOWNTO 0);
	alu_out : OUT std_logic_vector(7 DOWNTO 0);
	ram_addr_out : OUT std_logic_vector(7 DOWNTO 0);
	r0_out : OUT std_logic_vector(7 DOWNTO 0);
	r1_out : OUT std_logic_vector(7 DOWNTO 0);
	r2_out : OUT std_logic_vector(7 DOWNTO 0);
	r3_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END CPU;

ARCHITECTURE structure OF CPU IS
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
SIGNAL ww_pc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_instr_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ram_addr_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r0_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r2_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r3_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc_out[0]~output_o\ : std_logic;
SIGNAL \pc_out[1]~output_o\ : std_logic;
SIGNAL \pc_out[2]~output_o\ : std_logic;
SIGNAL \pc_out[3]~output_o\ : std_logic;
SIGNAL \pc_out[4]~output_o\ : std_logic;
SIGNAL \pc_out[5]~output_o\ : std_logic;
SIGNAL \pc_out[6]~output_o\ : std_logic;
SIGNAL \pc_out[7]~output_o\ : std_logic;
SIGNAL \instr_out[0]~output_o\ : std_logic;
SIGNAL \instr_out[1]~output_o\ : std_logic;
SIGNAL \instr_out[2]~output_o\ : std_logic;
SIGNAL \instr_out[3]~output_o\ : std_logic;
SIGNAL \instr_out[4]~output_o\ : std_logic;
SIGNAL \instr_out[5]~output_o\ : std_logic;
SIGNAL \instr_out[6]~output_o\ : std_logic;
SIGNAL \instr_out[7]~output_o\ : std_logic;
SIGNAL \alu_out[0]~output_o\ : std_logic;
SIGNAL \alu_out[1]~output_o\ : std_logic;
SIGNAL \alu_out[2]~output_o\ : std_logic;
SIGNAL \alu_out[3]~output_o\ : std_logic;
SIGNAL \alu_out[4]~output_o\ : std_logic;
SIGNAL \alu_out[5]~output_o\ : std_logic;
SIGNAL \alu_out[6]~output_o\ : std_logic;
SIGNAL \alu_out[7]~output_o\ : std_logic;
SIGNAL \ram_addr_out[0]~output_o\ : std_logic;
SIGNAL \ram_addr_out[1]~output_o\ : std_logic;
SIGNAL \ram_addr_out[2]~output_o\ : std_logic;
SIGNAL \ram_addr_out[3]~output_o\ : std_logic;
SIGNAL \ram_addr_out[4]~output_o\ : std_logic;
SIGNAL \ram_addr_out[5]~output_o\ : std_logic;
SIGNAL \ram_addr_out[6]~output_o\ : std_logic;
SIGNAL \ram_addr_out[7]~output_o\ : std_logic;
SIGNAL \r0_out[0]~output_o\ : std_logic;
SIGNAL \r0_out[1]~output_o\ : std_logic;
SIGNAL \r0_out[2]~output_o\ : std_logic;
SIGNAL \r0_out[3]~output_o\ : std_logic;
SIGNAL \r0_out[4]~output_o\ : std_logic;
SIGNAL \r0_out[5]~output_o\ : std_logic;
SIGNAL \r0_out[6]~output_o\ : std_logic;
SIGNAL \r0_out[7]~output_o\ : std_logic;
SIGNAL \r1_out[0]~output_o\ : std_logic;
SIGNAL \r1_out[1]~output_o\ : std_logic;
SIGNAL \r1_out[2]~output_o\ : std_logic;
SIGNAL \r1_out[3]~output_o\ : std_logic;
SIGNAL \r1_out[4]~output_o\ : std_logic;
SIGNAL \r1_out[5]~output_o\ : std_logic;
SIGNAL \r1_out[6]~output_o\ : std_logic;
SIGNAL \r1_out[7]~output_o\ : std_logic;
SIGNAL \r2_out[0]~output_o\ : std_logic;
SIGNAL \r2_out[1]~output_o\ : std_logic;
SIGNAL \r2_out[2]~output_o\ : std_logic;
SIGNAL \r2_out[3]~output_o\ : std_logic;
SIGNAL \r2_out[4]~output_o\ : std_logic;
SIGNAL \r2_out[5]~output_o\ : std_logic;
SIGNAL \r2_out[6]~output_o\ : std_logic;
SIGNAL \r2_out[7]~output_o\ : std_logic;
SIGNAL \r3_out[0]~output_o\ : std_logic;
SIGNAL \r3_out[1]~output_o\ : std_logic;
SIGNAL \r3_out[2]~output_o\ : std_logic;
SIGNAL \r3_out[3]~output_o\ : std_logic;
SIGNAL \r3_out[4]~output_o\ : std_logic;
SIGNAL \r3_out[5]~output_o\ : std_logic;
SIGNAL \r3_out[6]~output_o\ : std_logic;
SIGNAL \r3_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \ROM_inst|rom~6_combout\ : std_logic;
SIGNAL \ROM_inst|rom~7_combout\ : std_logic;
SIGNAL \ROM_inst|rom~13_combout\ : std_logic;
SIGNAL \ROM_inst|rom~14_combout\ : std_logic;
SIGNAL \raddr2~0_combout\ : std_logic;
SIGNAL \raddr2~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux8~0_combout\ : std_logic;
SIGNAL \wdata[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CU_inst|Mux0~0_combout\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][3]~q\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[0][3]~q\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[3][3]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux4~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux6~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux6~1_combout\ : std_logic;
SIGNAL \RAM_inst|memory~146_q\ : std_logic;
SIGNAL \ROM_inst|rom~0_combout\ : std_logic;
SIGNAL \ROM_inst|rom~1_combout\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][0]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][0]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][0]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux15~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux15~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~2\ : std_logic;
SIGNAL \ALU_inst|Add0~5_sumout\ : std_logic;
SIGNAL \ram_addr[1]~3_combout\ : std_logic;
SIGNAL \RAM_inst|memory~149_q\ : std_logic;
SIGNAL \RAM_inst|memory~181_q\ : std_logic;
SIGNAL \RAM_inst|memory~2148_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2149_combout\ : std_logic;
SIGNAL \RAM_inst|memory~213_q\ : std_logic;
SIGNAL \RAM_inst|memory~2152_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2153_combout\ : std_logic;
SIGNAL \RAM_inst|memory~245_q\ : std_logic;
SIGNAL \RAM_inst|memory~2101_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2156_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2157_combout\ : std_logic;
SIGNAL \RAM_inst|memory~157_q\ : std_logic;
SIGNAL \RAM_inst|memory~2160_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2161_combout\ : std_logic;
SIGNAL \RAM_inst|memory~189_q\ : std_logic;
SIGNAL \RAM_inst|memory~2164_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2165_combout\ : std_logic;
SIGNAL \RAM_inst|memory~221_q\ : std_logic;
SIGNAL \RAM_inst|memory~2168_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2169_combout\ : std_logic;
SIGNAL \RAM_inst|memory~253_q\ : std_logic;
SIGNAL \RAM_inst|memory~2102_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2172_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2173_combout\ : std_logic;
SIGNAL \RAM_inst|memory~165_q\ : std_logic;
SIGNAL \RAM_inst|memory~2176_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2177_combout\ : std_logic;
SIGNAL \RAM_inst|memory~197_q\ : std_logic;
SIGNAL \RAM_inst|memory~2180_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2181_combout\ : std_logic;
SIGNAL \RAM_inst|memory~229_q\ : std_logic;
SIGNAL \RAM_inst|memory~2184_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2185_combout\ : std_logic;
SIGNAL \RAM_inst|memory~261_q\ : std_logic;
SIGNAL \RAM_inst|memory~2103_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2188_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2189_combout\ : std_logic;
SIGNAL \RAM_inst|memory~173_q\ : std_logic;
SIGNAL \RAM_inst|memory~2190_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2191_combout\ : std_logic;
SIGNAL \RAM_inst|memory~205_q\ : std_logic;
SIGNAL \RAM_inst|memory~2192_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2193_combout\ : std_logic;
SIGNAL \RAM_inst|memory~237_q\ : std_logic;
SIGNAL \RAM_inst|memory~2194_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2195_combout\ : std_logic;
SIGNAL \RAM_inst|memory~269_q\ : std_logic;
SIGNAL \RAM_inst|memory~2104_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2105_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2142_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2143_combout\ : std_logic;
SIGNAL \RAM_inst|memory~21_q\ : std_logic;
SIGNAL \RAM_inst|memory~2146_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2147_combout\ : std_logic;
SIGNAL \RAM_inst|memory~53_q\ : std_logic;
SIGNAL \RAM_inst|memory~2150_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2151_combout\ : std_logic;
SIGNAL \RAM_inst|memory~85_q\ : std_logic;
SIGNAL \RAM_inst|memory~2154_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2155_combout\ : std_logic;
SIGNAL \RAM_inst|memory~117_q\ : std_logic;
SIGNAL \RAM_inst|memory~2106_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2158_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2159_combout\ : std_logic;
SIGNAL \RAM_inst|memory~29_q\ : std_logic;
SIGNAL \RAM_inst|memory~2162_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2163_combout\ : std_logic;
SIGNAL \RAM_inst|memory~61_q\ : std_logic;
SIGNAL \RAM_inst|memory~2166_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2167_combout\ : std_logic;
SIGNAL \RAM_inst|memory~93_q\ : std_logic;
SIGNAL \RAM_inst|memory~2170_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2171_combout\ : std_logic;
SIGNAL \RAM_inst|memory~125_q\ : std_logic;
SIGNAL \RAM_inst|memory~2107_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2174_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2175_combout\ : std_logic;
SIGNAL \RAM_inst|memory~37_q\ : std_logic;
SIGNAL \RAM_inst|memory~2178_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2179_combout\ : std_logic;
SIGNAL \RAM_inst|memory~69_q\ : std_logic;
SIGNAL \RAM_inst|memory~2182_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2183_combout\ : std_logic;
SIGNAL \RAM_inst|memory~101_q\ : std_logic;
SIGNAL \RAM_inst|memory~2186_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2187_combout\ : std_logic;
SIGNAL \RAM_inst|memory~133_q\ : std_logic;
SIGNAL \RAM_inst|memory~2108_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2196_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2197_combout\ : std_logic;
SIGNAL \RAM_inst|memory~45_q\ : std_logic;
SIGNAL \RAM_inst|memory~2198_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2199_combout\ : std_logic;
SIGNAL \RAM_inst|memory~77_q\ : std_logic;
SIGNAL \RAM_inst|memory~2200_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2201_combout\ : std_logic;
SIGNAL \RAM_inst|memory~109_q\ : std_logic;
SIGNAL \RAM_inst|memory~2202_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2203_combout\ : std_logic;
SIGNAL \RAM_inst|memory~141_q\ : std_logic;
SIGNAL \RAM_inst|memory~2109_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2110_combout\ : std_logic;
SIGNAL \wdata[4]~5_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][4]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][4]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][4]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][4]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux3~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux6~2_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~14\ : std_logic;
SIGNAL \ALU_inst|Add0~17_sumout\ : std_logic;
SIGNAL \ram_addr[4]~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2144_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2145_combout\ : std_logic;
SIGNAL \RAM_inst|memory~178_q\ : std_logic;
SIGNAL \RAM_inst|memory~210_q\ : std_logic;
SIGNAL \RAM_inst|memory~242_q\ : std_logic;
SIGNAL \RAM_inst|memory~2072_combout\ : std_logic;
SIGNAL \RAM_inst|memory~154_q\ : std_logic;
SIGNAL \RAM_inst|memory~186_q\ : std_logic;
SIGNAL \RAM_inst|memory~218_q\ : std_logic;
SIGNAL \RAM_inst|memory~250_q\ : std_logic;
SIGNAL \RAM_inst|memory~2073_combout\ : std_logic;
SIGNAL \RAM_inst|memory~162_q\ : std_logic;
SIGNAL \RAM_inst|memory~194_q\ : std_logic;
SIGNAL \RAM_inst|memory~226_q\ : std_logic;
SIGNAL \RAM_inst|memory~258_q\ : std_logic;
SIGNAL \RAM_inst|memory~2074_combout\ : std_logic;
SIGNAL \RAM_inst|memory~170_q\ : std_logic;
SIGNAL \RAM_inst|memory~202_q\ : std_logic;
SIGNAL \RAM_inst|memory~234_q\ : std_logic;
SIGNAL \RAM_inst|memory~266_q\ : std_logic;
SIGNAL \RAM_inst|memory~2075_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2076_combout\ : std_logic;
SIGNAL \RAM_inst|memory~18_q\ : std_logic;
SIGNAL \RAM_inst|memory~50_q\ : std_logic;
SIGNAL \RAM_inst|memory~82_q\ : std_logic;
SIGNAL \RAM_inst|memory~114_q\ : std_logic;
SIGNAL \RAM_inst|memory~2077_combout\ : std_logic;
SIGNAL \RAM_inst|memory~26_q\ : std_logic;
SIGNAL \RAM_inst|memory~58_q\ : std_logic;
SIGNAL \RAM_inst|memory~90_q\ : std_logic;
SIGNAL \RAM_inst|memory~122_q\ : std_logic;
SIGNAL \RAM_inst|memory~2078_combout\ : std_logic;
SIGNAL \RAM_inst|memory~34_q\ : std_logic;
SIGNAL \RAM_inst|memory~66_q\ : std_logic;
SIGNAL \RAM_inst|memory~98_q\ : std_logic;
SIGNAL \RAM_inst|memory~130_q\ : std_logic;
SIGNAL \RAM_inst|memory~2079_combout\ : std_logic;
SIGNAL \RAM_inst|memory~42_q\ : std_logic;
SIGNAL \RAM_inst|memory~74_q\ : std_logic;
SIGNAL \RAM_inst|memory~106_q\ : std_logic;
SIGNAL \RAM_inst|memory~138_q\ : std_logic;
SIGNAL \RAM_inst|memory~2080_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2081_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2082_combout\ : std_logic;
SIGNAL \wdata[1]~2_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][1]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][1]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][1]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][1]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~6\ : std_logic;
SIGNAL \ALU_inst|Add0~10\ : std_logic;
SIGNAL \ALU_inst|Add0~13_sumout\ : std_logic;
SIGNAL \ram_addr[3]~1_combout\ : std_logic;
SIGNAL \RAM_inst|memory~177_q\ : std_logic;
SIGNAL \RAM_inst|memory~49_q\ : std_logic;
SIGNAL \RAM_inst|memory~241_q\ : std_logic;
SIGNAL \RAM_inst|memory~113_q\ : std_logic;
SIGNAL \RAM_inst|memory~2228_combout\ : std_logic;
SIGNAL \RAM_inst|memory~145_q\ : std_logic;
SIGNAL \RAM_inst|memory~17_q\ : std_logic;
SIGNAL \RAM_inst|memory~209_q\ : std_logic;
SIGNAL \RAM_inst|memory~81_q\ : std_logic;
SIGNAL \RAM_inst|memory~2229_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2230_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2065_combout\ : std_logic;
SIGNAL \RAM_inst|memory~185_q\ : std_logic;
SIGNAL \RAM_inst|memory~57_q\ : std_logic;
SIGNAL \RAM_inst|memory~249_q\ : std_logic;
SIGNAL \RAM_inst|memory~121_q\ : std_logic;
SIGNAL \RAM_inst|memory~2231_combout\ : std_logic;
SIGNAL \RAM_inst|memory~153_q\ : std_logic;
SIGNAL \RAM_inst|memory~25_q\ : std_logic;
SIGNAL \RAM_inst|memory~217_q\ : std_logic;
SIGNAL \RAM_inst|memory~89_q\ : std_logic;
SIGNAL \RAM_inst|memory~2232_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2233_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2066_combout\ : std_logic;
SIGNAL \RAM_inst|memory~193_q\ : std_logic;
SIGNAL \RAM_inst|memory~65_q\ : std_logic;
SIGNAL \RAM_inst|memory~257_q\ : std_logic;
SIGNAL \RAM_inst|memory~129_q\ : std_logic;
SIGNAL \RAM_inst|memory~2234_combout\ : std_logic;
SIGNAL \RAM_inst|memory~161_q\ : std_logic;
SIGNAL \RAM_inst|memory~33_q\ : std_logic;
SIGNAL \RAM_inst|memory~225_q\ : std_logic;
SIGNAL \RAM_inst|memory~97_q\ : std_logic;
SIGNAL \RAM_inst|memory~2235_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2236_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2067_combout\ : std_logic;
SIGNAL \RAM_inst|memory~169_q\ : std_logic;
SIGNAL \RAM_inst|memory~201_q\ : std_logic;
SIGNAL \RAM_inst|memory~233_q\ : std_logic;
SIGNAL \RAM_inst|memory~265_q\ : std_logic;
SIGNAL \RAM_inst|memory~2068_combout\ : std_logic;
SIGNAL \RAM_inst|memory~41_q\ : std_logic;
SIGNAL \RAM_inst|memory~73_q\ : std_logic;
SIGNAL \RAM_inst|memory~105_q\ : std_logic;
SIGNAL \RAM_inst|memory~137_q\ : std_logic;
SIGNAL \RAM_inst|memory~2069_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2070_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2071_combout\ : std_logic;
SIGNAL \wdata[0]~1_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][0]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux7~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~1_sumout\ : std_logic;
SIGNAL \ram_addr[0]~4_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2140_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2141_combout\ : std_logic;
SIGNAL \RAM_inst|memory~147_q\ : std_logic;
SIGNAL \RAM_inst|memory~155_q\ : std_logic;
SIGNAL \RAM_inst|memory~163_q\ : std_logic;
SIGNAL \RAM_inst|memory~171_q\ : std_logic;
SIGNAL \RAM_inst|memory~2083_combout\ : std_logic;
SIGNAL \RAM_inst|memory~19_q\ : std_logic;
SIGNAL \RAM_inst|memory~27_q\ : std_logic;
SIGNAL \RAM_inst|memory~35_q\ : std_logic;
SIGNAL \RAM_inst|memory~43_q\ : std_logic;
SIGNAL \RAM_inst|memory~2084_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2085_combout\ : std_logic;
SIGNAL \RAM_inst|memory~179_q\ : std_logic;
SIGNAL \RAM_inst|memory~187_q\ : std_logic;
SIGNAL \RAM_inst|memory~195_q\ : std_logic;
SIGNAL \RAM_inst|memory~203_q\ : std_logic;
SIGNAL \RAM_inst|memory~2086_combout\ : std_logic;
SIGNAL \RAM_inst|memory~51_q\ : std_logic;
SIGNAL \RAM_inst|memory~59_q\ : std_logic;
SIGNAL \RAM_inst|memory~67_q\ : std_logic;
SIGNAL \RAM_inst|memory~75_q\ : std_logic;
SIGNAL \RAM_inst|memory~2087_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2088_combout\ : std_logic;
SIGNAL \RAM_inst|memory~211_q\ : std_logic;
SIGNAL \RAM_inst|memory~219_q\ : std_logic;
SIGNAL \RAM_inst|memory~227_q\ : std_logic;
SIGNAL \RAM_inst|memory~235_q\ : std_logic;
SIGNAL \RAM_inst|memory~2089_combout\ : std_logic;
SIGNAL \RAM_inst|memory~83_q\ : std_logic;
SIGNAL \RAM_inst|memory~91_q\ : std_logic;
SIGNAL \RAM_inst|memory~99_q\ : std_logic;
SIGNAL \RAM_inst|memory~107_q\ : std_logic;
SIGNAL \RAM_inst|memory~2090_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2091_combout\ : std_logic;
SIGNAL \RAM_inst|memory~259_q\ : std_logic;
SIGNAL \RAM_inst|memory~131_q\ : std_logic;
SIGNAL \RAM_inst|memory~267_q\ : std_logic;
SIGNAL \RAM_inst|memory~139_q\ : std_logic;
SIGNAL \RAM_inst|memory~2225_combout\ : std_logic;
SIGNAL \RAM_inst|memory~243_q\ : std_logic;
SIGNAL \RAM_inst|memory~115_q\ : std_logic;
SIGNAL \RAM_inst|memory~251_q\ : std_logic;
SIGNAL \RAM_inst|memory~123_q\ : std_logic;
SIGNAL \RAM_inst|memory~2226_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2227_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2092_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2093_combout\ : std_logic;
SIGNAL \wdata[2]~3_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][2]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][2]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][2]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][2]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux5~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~9_sumout\ : std_logic;
SIGNAL \ram_addr[2]~2_combout\ : std_logic;
SIGNAL \RAM_inst|memory~180_q\ : std_logic;
SIGNAL \RAM_inst|memory~52_q\ : std_logic;
SIGNAL \RAM_inst|memory~244_q\ : std_logic;
SIGNAL \RAM_inst|memory~116_q\ : std_logic;
SIGNAL \RAM_inst|memory~2216_combout\ : std_logic;
SIGNAL \RAM_inst|memory~148_q\ : std_logic;
SIGNAL \RAM_inst|memory~20_q\ : std_logic;
SIGNAL \RAM_inst|memory~212_q\ : std_logic;
SIGNAL \RAM_inst|memory~84_q\ : std_logic;
SIGNAL \RAM_inst|memory~2217_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2218_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2094_combout\ : std_logic;
SIGNAL \RAM_inst|memory~188_q\ : std_logic;
SIGNAL \RAM_inst|memory~60_q\ : std_logic;
SIGNAL \RAM_inst|memory~252_q\ : std_logic;
SIGNAL \RAM_inst|memory~124_q\ : std_logic;
SIGNAL \RAM_inst|memory~2219_combout\ : std_logic;
SIGNAL \RAM_inst|memory~156_q\ : std_logic;
SIGNAL \RAM_inst|memory~28_q\ : std_logic;
SIGNAL \RAM_inst|memory~220_q\ : std_logic;
SIGNAL \RAM_inst|memory~92_q\ : std_logic;
SIGNAL \RAM_inst|memory~2220_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2221_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2095_combout\ : std_logic;
SIGNAL \RAM_inst|memory~196_q\ : std_logic;
SIGNAL \RAM_inst|memory~68_q\ : std_logic;
SIGNAL \RAM_inst|memory~260_q\ : std_logic;
SIGNAL \RAM_inst|memory~132_q\ : std_logic;
SIGNAL \RAM_inst|memory~2222_combout\ : std_logic;
SIGNAL \RAM_inst|memory~164_q\ : std_logic;
SIGNAL \RAM_inst|memory~36_q\ : std_logic;
SIGNAL \RAM_inst|memory~228_q\ : std_logic;
SIGNAL \RAM_inst|memory~100_q\ : std_logic;
SIGNAL \RAM_inst|memory~2223_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2224_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2096_combout\ : std_logic;
SIGNAL \RAM_inst|memory~172_q\ : std_logic;
SIGNAL \RAM_inst|memory~204_q\ : std_logic;
SIGNAL \RAM_inst|memory~236_q\ : std_logic;
SIGNAL \RAM_inst|memory~268_q\ : std_logic;
SIGNAL \RAM_inst|memory~2097_combout\ : std_logic;
SIGNAL \RAM_inst|memory~44_q\ : std_logic;
SIGNAL \RAM_inst|memory~76_q\ : std_logic;
SIGNAL \RAM_inst|memory~108_q\ : std_logic;
SIGNAL \RAM_inst|memory~140_q\ : std_logic;
SIGNAL \RAM_inst|memory~2098_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2099_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2100_combout\ : std_logic;
SIGNAL \wdata[3]~4_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][3]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux12~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux11~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux12~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~34_cout\ : std_logic;
SIGNAL \ALU_inst|Add1~2\ : std_logic;
SIGNAL \ALU_inst|Add1~6\ : std_logic;
SIGNAL \ALU_inst|Add1~10\ : std_logic;
SIGNAL \ALU_inst|Add1~13_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux4~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~150_q\ : std_logic;
SIGNAL \RAM_inst|memory~158_q\ : std_logic;
SIGNAL \RAM_inst|memory~166_q\ : std_logic;
SIGNAL \RAM_inst|memory~174_q\ : std_logic;
SIGNAL \RAM_inst|memory~2111_combout\ : std_logic;
SIGNAL \RAM_inst|memory~22_q\ : std_logic;
SIGNAL \RAM_inst|memory~30_q\ : std_logic;
SIGNAL \RAM_inst|memory~38_q\ : std_logic;
SIGNAL \RAM_inst|memory~46_q\ : std_logic;
SIGNAL \RAM_inst|memory~2112_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2113_combout\ : std_logic;
SIGNAL \RAM_inst|memory~182_q\ : std_logic;
SIGNAL \RAM_inst|memory~190_q\ : std_logic;
SIGNAL \RAM_inst|memory~198_q\ : std_logic;
SIGNAL \RAM_inst|memory~206_q\ : std_logic;
SIGNAL \RAM_inst|memory~2114_combout\ : std_logic;
SIGNAL \RAM_inst|memory~54_q\ : std_logic;
SIGNAL \RAM_inst|memory~62_q\ : std_logic;
SIGNAL \RAM_inst|memory~70_q\ : std_logic;
SIGNAL \RAM_inst|memory~78_q\ : std_logic;
SIGNAL \RAM_inst|memory~2115_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2116_combout\ : std_logic;
SIGNAL \RAM_inst|memory~214_q\ : std_logic;
SIGNAL \RAM_inst|memory~222_q\ : std_logic;
SIGNAL \RAM_inst|memory~230_q\ : std_logic;
SIGNAL \RAM_inst|memory~238_q\ : std_logic;
SIGNAL \RAM_inst|memory~2117_combout\ : std_logic;
SIGNAL \RAM_inst|memory~86_q\ : std_logic;
SIGNAL \RAM_inst|memory~94_q\ : std_logic;
SIGNAL \RAM_inst|memory~102_q\ : std_logic;
SIGNAL \RAM_inst|memory~110_q\ : std_logic;
SIGNAL \RAM_inst|memory~2118_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2119_combout\ : std_logic;
SIGNAL \RAM_inst|memory~262_q\ : std_logic;
SIGNAL \RAM_inst|memory~134_q\ : std_logic;
SIGNAL \RAM_inst|memory~270_q\ : std_logic;
SIGNAL \RAM_inst|memory~142_q\ : std_logic;
SIGNAL \RAM_inst|memory~2213_combout\ : std_logic;
SIGNAL \RAM_inst|memory~246_q\ : std_logic;
SIGNAL \RAM_inst|memory~118_q\ : std_logic;
SIGNAL \RAM_inst|memory~254_q\ : std_logic;
SIGNAL \RAM_inst|memory~126_q\ : std_logic;
SIGNAL \RAM_inst|memory~2214_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2215_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2120_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2121_combout\ : std_logic;
SIGNAL \wdata[5]~6_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][5]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][5]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][5]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][5]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux2~0_combout\ : std_logic;
SIGNAL \raddr2[1]~3_combout\ : std_logic;
SIGNAL \raddr2[0]~4_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux10~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~14\ : std_logic;
SIGNAL \ALU_inst|Add1~18\ : std_logic;
SIGNAL \ALU_inst|Add1~21_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~18\ : std_logic;
SIGNAL \ALU_inst|Add0~21_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux2~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~183_q\ : std_logic;
SIGNAL \RAM_inst|memory~55_q\ : std_logic;
SIGNAL \RAM_inst|memory~247_q\ : std_logic;
SIGNAL \RAM_inst|memory~119_q\ : std_logic;
SIGNAL \RAM_inst|memory~2204_combout\ : std_logic;
SIGNAL \RAM_inst|memory~151_q\ : std_logic;
SIGNAL \RAM_inst|memory~23_q\ : std_logic;
SIGNAL \RAM_inst|memory~215_q\ : std_logic;
SIGNAL \RAM_inst|memory~87_q\ : std_logic;
SIGNAL \RAM_inst|memory~2205_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2206_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2122_combout\ : std_logic;
SIGNAL \RAM_inst|memory~191_q\ : std_logic;
SIGNAL \RAM_inst|memory~63_q\ : std_logic;
SIGNAL \RAM_inst|memory~255_q\ : std_logic;
SIGNAL \RAM_inst|memory~127_q\ : std_logic;
SIGNAL \RAM_inst|memory~2207_combout\ : std_logic;
SIGNAL \RAM_inst|memory~159_q\ : std_logic;
SIGNAL \RAM_inst|memory~31_q\ : std_logic;
SIGNAL \RAM_inst|memory~223_q\ : std_logic;
SIGNAL \RAM_inst|memory~95_q\ : std_logic;
SIGNAL \RAM_inst|memory~2208_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2209_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2123_combout\ : std_logic;
SIGNAL \RAM_inst|memory~199_q\ : std_logic;
SIGNAL \RAM_inst|memory~71_q\ : std_logic;
SIGNAL \RAM_inst|memory~263_q\ : std_logic;
SIGNAL \RAM_inst|memory~135_q\ : std_logic;
SIGNAL \RAM_inst|memory~2210_combout\ : std_logic;
SIGNAL \RAM_inst|memory~167_q\ : std_logic;
SIGNAL \RAM_inst|memory~39_q\ : std_logic;
SIGNAL \RAM_inst|memory~231_q\ : std_logic;
SIGNAL \RAM_inst|memory~103_q\ : std_logic;
SIGNAL \RAM_inst|memory~2211_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2212_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2124_combout\ : std_logic;
SIGNAL \RAM_inst|memory~175_q\ : std_logic;
SIGNAL \RAM_inst|memory~207_q\ : std_logic;
SIGNAL \RAM_inst|memory~239_q\ : std_logic;
SIGNAL \RAM_inst|memory~271_q\ : std_logic;
SIGNAL \RAM_inst|memory~2125_combout\ : std_logic;
SIGNAL \RAM_inst|memory~47_q\ : std_logic;
SIGNAL \RAM_inst|memory~79_q\ : std_logic;
SIGNAL \RAM_inst|memory~111_q\ : std_logic;
SIGNAL \RAM_inst|memory~143_q\ : std_logic;
SIGNAL \RAM_inst|memory~2126_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2127_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2128_combout\ : std_logic;
SIGNAL \wdata[6]~7_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][6]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][6]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][6]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][6]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux1~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux9~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~22\ : std_logic;
SIGNAL \ALU_inst|Add1~25_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~22\ : std_logic;
SIGNAL \ALU_inst|Add0~25_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux1~0_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~3_combout\ : std_logic;
SIGNAL \ROM_inst|rom~4_combout\ : std_logic;
SIGNAL \ROM_inst|rom~17_combout\ : std_logic;
SIGNAL \ROM_inst|rom~2_combout\ : std_logic;
SIGNAL \ROM_inst|rom~16_combout\ : std_logic;
SIGNAL \ROM_inst|rom~15_combout\ : std_logic;
SIGNAL \PC_inst|Add1~34_cout\ : std_logic;
SIGNAL \PC_inst|Add1~2\ : std_logic;
SIGNAL \PC_inst|Add1~6\ : std_logic;
SIGNAL \PC_inst|Add1~10\ : std_logic;
SIGNAL \PC_inst|Add1~13_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~2\ : std_logic;
SIGNAL \PC_inst|Add0~6\ : std_logic;
SIGNAL \PC_inst|Add0~10\ : std_logic;
SIGNAL \PC_inst|Add0~13_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~7_combout\ : std_logic;
SIGNAL \ROM_inst|rom~9_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux11~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux11~2_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~17_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~9_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~10_combout\ : std_logic;
SIGNAL \PC_inst|Add1~14\ : std_logic;
SIGNAL \PC_inst|Add1~18\ : std_logic;
SIGNAL \PC_inst|Add1~22\ : std_logic;
SIGNAL \PC_inst|Add1~25_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~14\ : std_logic;
SIGNAL \PC_inst|Add0~18\ : std_logic;
SIGNAL \PC_inst|Add0~22\ : std_logic;
SIGNAL \PC_inst|Add0~25_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~12_combout\ : std_logic;
SIGNAL \ROM_inst|rom~5_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~3_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~4_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~9_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux5~2_combout\ : std_logic;
SIGNAL \PC_inst|Add1~9_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~9_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~6_combout\ : std_logic;
SIGNAL \ROM_inst|rom~12_combout\ : std_logic;
SIGNAL \raddr2~2_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[0][7]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][7]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][7]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux8~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~26\ : std_logic;
SIGNAL \ALU_inst|Add0~29_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux0~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~152_q\ : std_logic;
SIGNAL \RAM_inst|memory~160_q\ : std_logic;
SIGNAL \RAM_inst|memory~168_q\ : std_logic;
SIGNAL \RAM_inst|memory~176_q\ : std_logic;
SIGNAL \RAM_inst|memory~2129_combout\ : std_logic;
SIGNAL \RAM_inst|memory~184_q\ : std_logic;
SIGNAL \RAM_inst|memory~192_q\ : std_logic;
SIGNAL \RAM_inst|memory~200_q\ : std_logic;
SIGNAL \RAM_inst|memory~208_q\ : std_logic;
SIGNAL \RAM_inst|memory~2130_combout\ : std_logic;
SIGNAL \RAM_inst|memory~216_q\ : std_logic;
SIGNAL \RAM_inst|memory~224_q\ : std_logic;
SIGNAL \RAM_inst|memory~232_q\ : std_logic;
SIGNAL \RAM_inst|memory~240_q\ : std_logic;
SIGNAL \RAM_inst|memory~2131_combout\ : std_logic;
SIGNAL \RAM_inst|memory~248_q\ : std_logic;
SIGNAL \RAM_inst|memory~256_q\ : std_logic;
SIGNAL \RAM_inst|memory~264_q\ : std_logic;
SIGNAL \RAM_inst|memory~272_q\ : std_logic;
SIGNAL \RAM_inst|memory~2132_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2133_combout\ : std_logic;
SIGNAL \RAM_inst|memory~24_q\ : std_logic;
SIGNAL \RAM_inst|memory~32_q\ : std_logic;
SIGNAL \RAM_inst|memory~40_q\ : std_logic;
SIGNAL \RAM_inst|memory~48_q\ : std_logic;
SIGNAL \RAM_inst|memory~2134_combout\ : std_logic;
SIGNAL \RAM_inst|memory~56_q\ : std_logic;
SIGNAL \RAM_inst|memory~64_q\ : std_logic;
SIGNAL \RAM_inst|memory~72_q\ : std_logic;
SIGNAL \RAM_inst|memory~80_q\ : std_logic;
SIGNAL \RAM_inst|memory~2135_combout\ : std_logic;
SIGNAL \RAM_inst|memory~88_q\ : std_logic;
SIGNAL \RAM_inst|memory~96_q\ : std_logic;
SIGNAL \RAM_inst|memory~104_q\ : std_logic;
SIGNAL \RAM_inst|memory~112_q\ : std_logic;
SIGNAL \RAM_inst|memory~2136_combout\ : std_logic;
SIGNAL \RAM_inst|memory~120_q\ : std_logic;
SIGNAL \RAM_inst|memory~128_q\ : std_logic;
SIGNAL \RAM_inst|memory~136_q\ : std_logic;
SIGNAL \RAM_inst|memory~144_q\ : std_logic;
SIGNAL \RAM_inst|memory~2137_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2138_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2139_combout\ : std_logic;
SIGNAL \wdata[7]~8_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][7]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~26\ : std_logic;
SIGNAL \ALU_inst|Add1~29_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~1_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~1_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~2_combout\ : std_logic;
SIGNAL \PC_inst|Add1~26\ : std_logic;
SIGNAL \PC_inst|Add1~29_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~26\ : std_logic;
SIGNAL \PC_inst|Add0~29_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~13_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \PC_inst|Add1~21_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~21_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~11_combout\ : std_logic;
SIGNAL \ROM_inst|rom~3_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux14~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux14~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~5_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux6~0_combout\ : std_logic;
SIGNAL \PC_inst|Add1~5_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~5_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~5_combout\ : std_logic;
SIGNAL \ROM_inst|rom~10_combout\ : std_logic;
SIGNAL \ALU_inst|Mux5~1_combout\ : std_logic;
SIGNAL \ALU_inst|Mux3~0_combout\ : std_logic;
SIGNAL \PC_inst|Add1~17_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~17_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~8_combout\ : std_logic;
SIGNAL \ROM_inst|rom~8_combout\ : std_logic;
SIGNAL \ROM_inst|rom~11_combout\ : std_logic;
SIGNAL \ALU_inst|Mux5~0_combout\ : std_logic;
SIGNAL \ALU_inst|Mux7~0_combout\ : std_logic;
SIGNAL \PC_inst|Add1~1_sumout\ : std_logic;
SIGNAL \PC_inst|Add0~1_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~4_combout\ : std_logic;
SIGNAL \PC_inst|pc_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~97_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~225_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~65_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~193_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~33_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~161_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2066_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~121_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~249_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~89_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~217_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~57_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~185_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~25_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~153_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2065_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~113_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~241_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~81_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~209_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~49_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~177_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~17_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~145_q\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~10_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~9_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~3_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~2_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~1_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][5]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][5]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][5]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][4]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][4]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][4]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][4]~q\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][3]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][3]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][3]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][3]~q\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][2]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][2]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][2]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][2]~q\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][1]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][1]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][1]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][1]~q\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2~1_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][0]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][0]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][0]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][0]~q\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~14_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~13_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2~0_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~12_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~11_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~10_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~9_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~8_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~7_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~6_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~5_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~4_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~3_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~2_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~1_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~0_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~188_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~28_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~156_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2094_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~116_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~244_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~84_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~212_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~52_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~180_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~20_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~148_q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2093_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2092_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~139_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~267_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~131_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~259_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~123_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~251_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~115_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~243_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2091_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2090_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~107_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~99_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~91_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~83_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2089_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~235_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~227_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~219_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~211_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2088_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2087_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~75_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~67_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~59_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~51_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2086_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~203_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~195_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~187_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~179_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2085_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2084_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~43_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~35_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~27_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~19_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2083_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~171_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~163_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~155_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~147_q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2082_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2081_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2080_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~138_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~106_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~74_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~42_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2079_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~130_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~98_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~66_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~34_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2078_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~122_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~90_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~58_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~26_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2077_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~114_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~82_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~50_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~18_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2076_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2075_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~266_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~234_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~202_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~170_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2074_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~258_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~226_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~194_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~162_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2073_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~250_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~218_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~186_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~154_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2072_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~242_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~210_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~178_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~146_q\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CU_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_wdata[0]~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2071_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2070_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2069_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~137_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~105_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~73_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~41_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2068_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~265_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~233_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~201_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~169_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2067_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~129_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~257_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2121_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2120_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~142_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~270_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~134_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~262_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~126_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~254_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~118_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~246_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2119_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2118_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~110_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~102_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~94_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~86_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2117_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~238_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~230_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~222_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~214_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2116_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2115_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~78_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~70_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~62_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~54_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2114_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~206_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~198_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~190_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~182_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2113_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2112_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~46_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~38_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~30_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~22_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2111_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~174_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~166_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~158_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~150_q\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2[1]~3_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2110_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2109_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~141_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~109_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~77_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~45_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2108_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~133_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~101_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~69_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~37_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2107_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~125_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~93_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~61_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~29_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2106_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~117_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~85_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~53_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~21_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2105_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2104_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~269_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~237_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~205_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~173_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2103_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~261_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~229_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~197_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~165_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2102_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~253_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~221_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~189_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~157_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2101_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~245_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~213_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~181_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~149_q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2100_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2099_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2098_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~140_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~108_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~76_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~44_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2097_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~268_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~236_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~204_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~172_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2096_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~132_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~260_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~100_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~228_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~68_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~196_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~36_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~164_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2095_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~124_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~252_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~92_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~220_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~60_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2178_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2176_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2174_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2172_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2170_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2168_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2166_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2164_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2162_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2160_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2158_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2156_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2154_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2152_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2150_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2148_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2146_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2144_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2142_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2140_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~17_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~16_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~15_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2139_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2138_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2137_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~144_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~136_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~128_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~120_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2136_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~112_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~104_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~96_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~88_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2135_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~80_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~72_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~64_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~56_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2134_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~48_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~40_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~32_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~24_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2133_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2132_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~272_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~264_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~256_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~248_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2131_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~240_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~232_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~224_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~216_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2130_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~208_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~200_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~192_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~184_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2129_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~176_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~168_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~160_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~152_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2128_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2127_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2126_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~143_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~111_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~79_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~47_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2125_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~271_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~239_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~207_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~175_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2124_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~135_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~263_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~103_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~231_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~71_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~199_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~39_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~167_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2123_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~127_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~255_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~95_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~223_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~63_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~191_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~31_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~159_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2122_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~119_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~247_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~87_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~215_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~55_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~183_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~23_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~151_q\ : std_logic;
SIGNAL \ALT_INV_ram_addr[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[4]~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2236_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2235_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2234_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2233_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2232_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2231_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2230_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2229_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2228_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2227_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2226_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2225_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2224_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2223_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2222_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2221_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2220_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2219_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2218_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2217_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2216_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2215_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2214_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2213_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2212_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2211_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2210_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2209_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2208_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2207_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2206_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2205_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2204_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2202_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2200_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2198_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2196_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2194_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2192_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2190_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2188_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2186_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2184_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2182_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2180_combout\ : std_logic;

BEGIN

ww_clk <= clk;
pc_out <= ww_pc_out;
instr_out <= ww_instr_out;
alu_out <= ww_alu_out;
ram_addr_out <= ww_ram_addr_out;
r0_out <= ww_r0_out;
r1_out <= ww_r1_out;
r2_out <= ww_r2_out;
r3_out <= ww_r3_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC_inst|ALT_INV_Add0~25_sumout\ <= NOT \PC_inst|Add0~25_sumout\;
\PC_inst|ALT_INV_Add1~25_sumout\ <= NOT \PC_inst|Add1~25_sumout\;
\PC_inst|ALT_INV_Add0~21_sumout\ <= NOT \PC_inst|Add0~21_sumout\;
\PC_inst|ALT_INV_Add1~21_sumout\ <= NOT \PC_inst|Add1~21_sumout\;
\PC_inst|ALT_INV_Add0~17_sumout\ <= NOT \PC_inst|Add0~17_sumout\;
\PC_inst|ALT_INV_Add1~17_sumout\ <= NOT \PC_inst|Add1~17_sumout\;
\PC_inst|ALT_INV_Add0~13_sumout\ <= NOT \PC_inst|Add0~13_sumout\;
\PC_inst|ALT_INV_Add1~13_sumout\ <= NOT \PC_inst|Add1~13_sumout\;
\PC_inst|ALT_INV_Add0~9_sumout\ <= NOT \PC_inst|Add0~9_sumout\;
\PC_inst|ALT_INV_Add1~9_sumout\ <= NOT \PC_inst|Add1~9_sumout\;
\PC_inst|ALT_INV_Add0~5_sumout\ <= NOT \PC_inst|Add0~5_sumout\;
\PC_inst|ALT_INV_Add1~5_sumout\ <= NOT \PC_inst|Add1~5_sumout\;
\PC_inst|ALT_INV_Add0~1_sumout\ <= NOT \PC_inst|Add0~1_sumout\;
\PC_inst|ALT_INV_Add1~1_sumout\ <= NOT \PC_inst|Add1~1_sumout\;
\ALU_inst|ALT_INV_Add0~29_sumout\ <= NOT \ALU_inst|Add0~29_sumout\;
\ALU_inst|ALT_INV_Add1~29_sumout\ <= NOT \ALU_inst|Add1~29_sumout\;
\ALU_inst|ALT_INV_Add0~25_sumout\ <= NOT \ALU_inst|Add0~25_sumout\;
\ALU_inst|ALT_INV_Add1~25_sumout\ <= NOT \ALU_inst|Add1~25_sumout\;
\ALU_inst|ALT_INV_Add0~21_sumout\ <= NOT \ALU_inst|Add0~21_sumout\;
\ALU_inst|ALT_INV_Add1~21_sumout\ <= NOT \ALU_inst|Add1~21_sumout\;
\ALU_inst|ALT_INV_Add0~17_sumout\ <= NOT \ALU_inst|Add0~17_sumout\;
\ALU_inst|ALT_INV_Add1~17_sumout\ <= NOT \ALU_inst|Add1~17_sumout\;
\ALU_inst|ALT_INV_Add0~13_sumout\ <= NOT \ALU_inst|Add0~13_sumout\;
\ALU_inst|ALT_INV_Add1~13_sumout\ <= NOT \ALU_inst|Add1~13_sumout\;
\ALU_inst|ALT_INV_Add0~9_sumout\ <= NOT \ALU_inst|Add0~9_sumout\;
\ALU_inst|ALT_INV_Add1~9_sumout\ <= NOT \ALU_inst|Add1~9_sumout\;
\ALU_inst|ALT_INV_Add0~5_sumout\ <= NOT \ALU_inst|Add0~5_sumout\;
\ALU_inst|ALT_INV_Add1~5_sumout\ <= NOT \ALU_inst|Add1~5_sumout\;
\ALU_inst|ALT_INV_Add0~1_sumout\ <= NOT \ALU_inst|Add0~1_sumout\;
\ALU_inst|ALT_INV_Add1~1_sumout\ <= NOT \ALU_inst|Add1~1_sumout\;
\RAM_inst|ALT_INV_memory~97_q\ <= NOT \RAM_inst|memory~97_q\;
\RAM_inst|ALT_INV_memory~225_q\ <= NOT \RAM_inst|memory~225_q\;
\RAM_inst|ALT_INV_memory~65_q\ <= NOT \RAM_inst|memory~65_q\;
\RAM_inst|ALT_INV_memory~193_q\ <= NOT \RAM_inst|memory~193_q\;
\RAM_inst|ALT_INV_memory~33_q\ <= NOT \RAM_inst|memory~33_q\;
\RAM_inst|ALT_INV_memory~161_q\ <= NOT \RAM_inst|memory~161_q\;
\RAM_inst|ALT_INV_memory~2066_combout\ <= NOT \RAM_inst|memory~2066_combout\;
\RAM_inst|ALT_INV_memory~121_q\ <= NOT \RAM_inst|memory~121_q\;
\RAM_inst|ALT_INV_memory~249_q\ <= NOT \RAM_inst|memory~249_q\;
\RAM_inst|ALT_INV_memory~89_q\ <= NOT \RAM_inst|memory~89_q\;
\RAM_inst|ALT_INV_memory~217_q\ <= NOT \RAM_inst|memory~217_q\;
\RAM_inst|ALT_INV_memory~57_q\ <= NOT \RAM_inst|memory~57_q\;
\RAM_inst|ALT_INV_memory~185_q\ <= NOT \RAM_inst|memory~185_q\;
\RAM_inst|ALT_INV_memory~25_q\ <= NOT \RAM_inst|memory~25_q\;
\RAM_inst|ALT_INV_memory~153_q\ <= NOT \RAM_inst|memory~153_q\;
\RAM_inst|ALT_INV_memory~2065_combout\ <= NOT \RAM_inst|memory~2065_combout\;
\RAM_inst|ALT_INV_memory~113_q\ <= NOT \RAM_inst|memory~113_q\;
\RAM_inst|ALT_INV_memory~241_q\ <= NOT \RAM_inst|memory~241_q\;
\RAM_inst|ALT_INV_memory~81_q\ <= NOT \RAM_inst|memory~81_q\;
\RAM_inst|ALT_INV_memory~209_q\ <= NOT \RAM_inst|memory~209_q\;
\RAM_inst|ALT_INV_memory~49_q\ <= NOT \RAM_inst|memory~49_q\;
\RAM_inst|ALT_INV_memory~177_q\ <= NOT \RAM_inst|memory~177_q\;
\RAM_inst|ALT_INV_memory~17_q\ <= NOT \RAM_inst|memory~17_q\;
\RAM_inst|ALT_INV_memory~145_q\ <= NOT \RAM_inst|memory~145_q\;
\PC_inst|ALT_INV_pc_v~10_combout\ <= NOT \PC_inst|pc_v~10_combout\;
\PC_inst|ALT_INV_pc_v~9_combout\ <= NOT \PC_inst|pc_v~9_combout\;
\PC_inst|ALT_INV_pc_v~3_combout\ <= NOT \PC_inst|pc_v~3_combout\;
\PC_inst|ALT_INV_pc_v~2_combout\ <= NOT \PC_inst|pc_v~2_combout\;
\PC_inst|ALT_INV_pc_v~1_combout\ <= NOT \PC_inst|pc_v~1_combout\;
\PC_inst|ALT_INV_pc_v~0_combout\ <= NOT \PC_inst|pc_v~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\RegBank_inst|ALT_INV_regs[3][7]~q\ <= NOT \RegBank_inst|regs[3][7]~q\;
\RegBank_inst|ALT_INV_regs[3][6]~q\ <= NOT \RegBank_inst|regs[3][6]~q\;
\RegBank_inst|ALT_INV_regs[3][5]~q\ <= NOT \RegBank_inst|regs[3][5]~q\;
\RegBank_inst|ALT_INV_regs[2][7]~q\ <= NOT \RegBank_inst|regs[2][7]~q\;
\RegBank_inst|ALT_INV_regs[2][6]~q\ <= NOT \RegBank_inst|regs[2][6]~q\;
\RegBank_inst|ALT_INV_regs[2][5]~q\ <= NOT \RegBank_inst|regs[2][5]~q\;
\RegBank_inst|ALT_INV_regs[1][7]~q\ <= NOT \RegBank_inst|regs[1][7]~q\;
\RegBank_inst|ALT_INV_regs[1][6]~q\ <= NOT \RegBank_inst|regs[1][6]~q\;
\RegBank_inst|ALT_INV_regs[1][5]~q\ <= NOT \RegBank_inst|regs[1][5]~q\;
\RegBank_inst|ALT_INV_regs[0][7]~q\ <= NOT \RegBank_inst|regs[0][7]~q\;
\RegBank_inst|ALT_INV_regs[0][6]~q\ <= NOT \RegBank_inst|regs[0][6]~q\;
\RegBank_inst|ALT_INV_regs[0][5]~q\ <= NOT \RegBank_inst|regs[0][5]~q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALU_inst|ALT_INV_Mux0~0_combout\ <= NOT \ALU_inst|Mux0~0_combout\;
\ALU_inst|ALT_INV_Mux1~0_combout\ <= NOT \ALU_inst|Mux1~0_combout\;
\ALU_inst|ALT_INV_Mux2~0_combout\ <= NOT \ALU_inst|Mux2~0_combout\;
\ALU_inst|ALT_INV_Mux3~0_combout\ <= NOT \ALU_inst|Mux3~0_combout\;
\MuxULA_inst|ALT_INV_Mux11~2_combout\ <= NOT \MuxULA_inst|Mux11~2_combout\;
\MuxULA_inst|ALT_INV_Mux11~1_combout\ <= NOT \MuxULA_inst|Mux11~1_combout\;
\RegBank_inst|ALT_INV_regs[3][4]~q\ <= NOT \RegBank_inst|regs[3][4]~q\;
\RegBank_inst|ALT_INV_regs[0][4]~q\ <= NOT \RegBank_inst|regs[0][4]~q\;
\RegBank_inst|ALT_INV_regs[1][4]~q\ <= NOT \RegBank_inst|regs[1][4]~q\;
\RegBank_inst|ALT_INV_regs[2][4]~q\ <= NOT \RegBank_inst|regs[2][4]~q\;
\ALU_inst|ALT_INV_Mux4~0_combout\ <= NOT \ALU_inst|Mux4~0_combout\;
\MuxULA_inst|ALT_INV_Mux12~1_combout\ <= NOT \MuxULA_inst|Mux12~1_combout\;
\MuxULA_inst|ALT_INV_Mux11~0_combout\ <= NOT \MuxULA_inst|Mux11~0_combout\;
\MuxULA_inst|ALT_INV_Mux12~0_combout\ <= NOT \MuxULA_inst|Mux12~0_combout\;
\RegBank_inst|ALT_INV_regs[3][3]~q\ <= NOT \RegBank_inst|regs[3][3]~q\;
\RegBank_inst|ALT_INV_regs[0][3]~q\ <= NOT \RegBank_inst|regs[0][3]~q\;
\RegBank_inst|ALT_INV_regs[1][3]~q\ <= NOT \RegBank_inst|regs[1][3]~q\;
\RegBank_inst|ALT_INV_regs[2][3]~q\ <= NOT \RegBank_inst|regs[2][3]~q\;
\MuxULA_inst|ALT_INV_Mux8~0_combout\ <= NOT \MuxULA_inst|Mux8~0_combout\;
\ALU_inst|ALT_INV_Mux5~2_combout\ <= NOT \ALU_inst|Mux5~2_combout\;
\MuxULA_inst|ALT_INV_Mux13~4_combout\ <= NOT \MuxULA_inst|Mux13~4_combout\;
\MuxULA_inst|ALT_INV_Mux13~3_combout\ <= NOT \MuxULA_inst|Mux13~3_combout\;
\RegBank_inst|ALT_INV_regs[3][2]~q\ <= NOT \RegBank_inst|regs[3][2]~q\;
\RegBank_inst|ALT_INV_regs[0][2]~q\ <= NOT \RegBank_inst|regs[0][2]~q\;
\RegBank_inst|ALT_INV_regs[1][2]~q\ <= NOT \RegBank_inst|regs[1][2]~q\;
\RegBank_inst|ALT_INV_regs[2][2]~q\ <= NOT \RegBank_inst|regs[2][2]~q\;
\ALU_inst|ALT_INV_Mux6~0_combout\ <= NOT \ALU_inst|Mux6~0_combout\;
\MuxULA_inst|ALT_INV_Mux14~1_combout\ <= NOT \MuxULA_inst|Mux14~1_combout\;
\MuxULA_inst|ALT_INV_Mux14~0_combout\ <= NOT \MuxULA_inst|Mux14~0_combout\;
\RegBank_inst|ALT_INV_regs[3][1]~q\ <= NOT \RegBank_inst|regs[3][1]~q\;
\RegBank_inst|ALT_INV_regs[0][1]~q\ <= NOT \RegBank_inst|regs[0][1]~q\;
\RegBank_inst|ALT_INV_regs[1][1]~q\ <= NOT \RegBank_inst|regs[1][1]~q\;
\RegBank_inst|ALT_INV_regs[2][1]~q\ <= NOT \RegBank_inst|regs[2][1]~q\;
\ALU_inst|ALT_INV_Mux7~0_combout\ <= NOT \ALU_inst|Mux7~0_combout\;
\ALU_inst|ALT_INV_Mux5~1_combout\ <= NOT \ALU_inst|Mux5~1_combout\;
\MuxULA_inst|ALT_INV_Mux15~1_combout\ <= NOT \MuxULA_inst|Mux15~1_combout\;
\MuxULA_inst|ALT_INV_Mux13~2_combout\ <= NOT \MuxULA_inst|Mux13~2_combout\;
\MuxULA_inst|ALT_INV_Mux13~1_combout\ <= NOT \MuxULA_inst|Mux13~1_combout\;
\MuxULA_inst|ALT_INV_Mux15~0_combout\ <= NOT \MuxULA_inst|Mux15~0_combout\;
\ALT_INV_raddr2~1_combout\ <= NOT \raddr2~1_combout\;
\RegBank_inst|ALT_INV_regs[3][0]~q\ <= NOT \RegBank_inst|regs[3][0]~q\;
\RegBank_inst|ALT_INV_regs[0][0]~q\ <= NOT \RegBank_inst|regs[0][0]~q\;
\RegBank_inst|ALT_INV_regs[1][0]~q\ <= NOT \RegBank_inst|regs[1][0]~q\;
\RegBank_inst|ALT_INV_regs[2][0]~q\ <= NOT \RegBank_inst|regs[2][0]~q\;
\ALU_inst|ALT_INV_Mux5~0_combout\ <= NOT \ALU_inst|Mux5~0_combout\;
\ROM_inst|ALT_INV_rom~14_combout\ <= NOT \ROM_inst|rom~14_combout\;
\ROM_inst|ALT_INV_rom~13_combout\ <= NOT \ROM_inst|rom~13_combout\;
\MuxULA_inst|ALT_INV_Mux13~0_combout\ <= NOT \MuxULA_inst|Mux13~0_combout\;
\ALT_INV_raddr2~0_combout\ <= NOT \raddr2~0_combout\;
\ROM_inst|ALT_INV_rom~12_combout\ <= NOT \ROM_inst|rom~12_combout\;
\ROM_inst|ALT_INV_rom~11_combout\ <= NOT \ROM_inst|rom~11_combout\;
\ROM_inst|ALT_INV_rom~10_combout\ <= NOT \ROM_inst|rom~10_combout\;
\ROM_inst|ALT_INV_rom~9_combout\ <= NOT \ROM_inst|rom~9_combout\;
\ROM_inst|ALT_INV_rom~8_combout\ <= NOT \ROM_inst|rom~8_combout\;
\ROM_inst|ALT_INV_rom~7_combout\ <= NOT \ROM_inst|rom~7_combout\;
\ROM_inst|ALT_INV_rom~6_combout\ <= NOT \ROM_inst|rom~6_combout\;
\ROM_inst|ALT_INV_rom~5_combout\ <= NOT \ROM_inst|rom~5_combout\;
\ROM_inst|ALT_INV_rom~4_combout\ <= NOT \ROM_inst|rom~4_combout\;
\ROM_inst|ALT_INV_rom~3_combout\ <= NOT \ROM_inst|rom~3_combout\;
\ROM_inst|ALT_INV_rom~2_combout\ <= NOT \ROM_inst|rom~2_combout\;
\ROM_inst|ALT_INV_rom~1_combout\ <= NOT \ROM_inst|rom~1_combout\;
\ROM_inst|ALT_INV_rom~0_combout\ <= NOT \ROM_inst|rom~0_combout\;
\PC_inst|ALT_INV_pc_reg\(7) <= NOT \PC_inst|pc_reg\(7);
\PC_inst|ALT_INV_pc_reg\(6) <= NOT \PC_inst|pc_reg\(6);
\PC_inst|ALT_INV_pc_reg\(5) <= NOT \PC_inst|pc_reg\(5);
\PC_inst|ALT_INV_pc_reg\(4) <= NOT \PC_inst|pc_reg\(4);
\PC_inst|ALT_INV_pc_reg\(3) <= NOT \PC_inst|pc_reg\(3);
\PC_inst|ALT_INV_pc_reg\(2) <= NOT \PC_inst|pc_reg\(2);
\PC_inst|ALT_INV_pc_reg\(1) <= NOT \PC_inst|pc_reg\(1);
\PC_inst|ALT_INV_pc_reg\(0) <= NOT \PC_inst|pc_reg\(0);
\PC_inst|ALT_INV_Add0~29_sumout\ <= NOT \PC_inst|Add0~29_sumout\;
\PC_inst|ALT_INV_Add1~29_sumout\ <= NOT \PC_inst|Add1~29_sumout\;
\RAM_inst|ALT_INV_memory~188_q\ <= NOT \RAM_inst|memory~188_q\;
\RAM_inst|ALT_INV_memory~28_q\ <= NOT \RAM_inst|memory~28_q\;
\RAM_inst|ALT_INV_memory~156_q\ <= NOT \RAM_inst|memory~156_q\;
\RAM_inst|ALT_INV_memory~2094_combout\ <= NOT \RAM_inst|memory~2094_combout\;
\RAM_inst|ALT_INV_memory~116_q\ <= NOT \RAM_inst|memory~116_q\;
\RAM_inst|ALT_INV_memory~244_q\ <= NOT \RAM_inst|memory~244_q\;
\RAM_inst|ALT_INV_memory~84_q\ <= NOT \RAM_inst|memory~84_q\;
\RAM_inst|ALT_INV_memory~212_q\ <= NOT \RAM_inst|memory~212_q\;
\RAM_inst|ALT_INV_memory~52_q\ <= NOT \RAM_inst|memory~52_q\;
\RAM_inst|ALT_INV_memory~180_q\ <= NOT \RAM_inst|memory~180_q\;
\RAM_inst|ALT_INV_memory~20_q\ <= NOT \RAM_inst|memory~20_q\;
\RAM_inst|ALT_INV_memory~148_q\ <= NOT \RAM_inst|memory~148_q\;
\RegBank_inst|ALT_INV_Mux5~0_combout\ <= NOT \RegBank_inst|Mux5~0_combout\;
\RAM_inst|ALT_INV_memory~2093_combout\ <= NOT \RAM_inst|memory~2093_combout\;
\RAM_inst|ALT_INV_memory~2092_combout\ <= NOT \RAM_inst|memory~2092_combout\;
\RAM_inst|ALT_INV_memory~139_q\ <= NOT \RAM_inst|memory~139_q\;
\RAM_inst|ALT_INV_memory~267_q\ <= NOT \RAM_inst|memory~267_q\;
\RAM_inst|ALT_INV_memory~131_q\ <= NOT \RAM_inst|memory~131_q\;
\RAM_inst|ALT_INV_memory~259_q\ <= NOT \RAM_inst|memory~259_q\;
\RAM_inst|ALT_INV_memory~123_q\ <= NOT \RAM_inst|memory~123_q\;
\RAM_inst|ALT_INV_memory~251_q\ <= NOT \RAM_inst|memory~251_q\;
\RAM_inst|ALT_INV_memory~115_q\ <= NOT \RAM_inst|memory~115_q\;
\RAM_inst|ALT_INV_memory~243_q\ <= NOT \RAM_inst|memory~243_q\;
\RAM_inst|ALT_INV_memory~2091_combout\ <= NOT \RAM_inst|memory~2091_combout\;
\RAM_inst|ALT_INV_memory~2090_combout\ <= NOT \RAM_inst|memory~2090_combout\;
\RAM_inst|ALT_INV_memory~107_q\ <= NOT \RAM_inst|memory~107_q\;
\RAM_inst|ALT_INV_memory~99_q\ <= NOT \RAM_inst|memory~99_q\;
\RAM_inst|ALT_INV_memory~91_q\ <= NOT \RAM_inst|memory~91_q\;
\RAM_inst|ALT_INV_memory~83_q\ <= NOT \RAM_inst|memory~83_q\;
\RAM_inst|ALT_INV_memory~2089_combout\ <= NOT \RAM_inst|memory~2089_combout\;
\RAM_inst|ALT_INV_memory~235_q\ <= NOT \RAM_inst|memory~235_q\;
\RAM_inst|ALT_INV_memory~227_q\ <= NOT \RAM_inst|memory~227_q\;
\RAM_inst|ALT_INV_memory~219_q\ <= NOT \RAM_inst|memory~219_q\;
\RAM_inst|ALT_INV_memory~211_q\ <= NOT \RAM_inst|memory~211_q\;
\RAM_inst|ALT_INV_memory~2088_combout\ <= NOT \RAM_inst|memory~2088_combout\;
\RAM_inst|ALT_INV_memory~2087_combout\ <= NOT \RAM_inst|memory~2087_combout\;
\RAM_inst|ALT_INV_memory~75_q\ <= NOT \RAM_inst|memory~75_q\;
\RAM_inst|ALT_INV_memory~67_q\ <= NOT \RAM_inst|memory~67_q\;
\RAM_inst|ALT_INV_memory~59_q\ <= NOT \RAM_inst|memory~59_q\;
\RAM_inst|ALT_INV_memory~51_q\ <= NOT \RAM_inst|memory~51_q\;
\RAM_inst|ALT_INV_memory~2086_combout\ <= NOT \RAM_inst|memory~2086_combout\;
\RAM_inst|ALT_INV_memory~203_q\ <= NOT \RAM_inst|memory~203_q\;
\RAM_inst|ALT_INV_memory~195_q\ <= NOT \RAM_inst|memory~195_q\;
\RAM_inst|ALT_INV_memory~187_q\ <= NOT \RAM_inst|memory~187_q\;
\RAM_inst|ALT_INV_memory~179_q\ <= NOT \RAM_inst|memory~179_q\;
\RAM_inst|ALT_INV_memory~2085_combout\ <= NOT \RAM_inst|memory~2085_combout\;
\RAM_inst|ALT_INV_memory~2084_combout\ <= NOT \RAM_inst|memory~2084_combout\;
\RAM_inst|ALT_INV_memory~43_q\ <= NOT \RAM_inst|memory~43_q\;
\RAM_inst|ALT_INV_memory~35_q\ <= NOT \RAM_inst|memory~35_q\;
\RAM_inst|ALT_INV_memory~27_q\ <= NOT \RAM_inst|memory~27_q\;
\RAM_inst|ALT_INV_memory~19_q\ <= NOT \RAM_inst|memory~19_q\;
\RAM_inst|ALT_INV_memory~2083_combout\ <= NOT \RAM_inst|memory~2083_combout\;
\RAM_inst|ALT_INV_memory~171_q\ <= NOT \RAM_inst|memory~171_q\;
\RAM_inst|ALT_INV_memory~163_q\ <= NOT \RAM_inst|memory~163_q\;
\RAM_inst|ALT_INV_memory~155_q\ <= NOT \RAM_inst|memory~155_q\;
\RAM_inst|ALT_INV_memory~147_q\ <= NOT \RAM_inst|memory~147_q\;
\RegBank_inst|ALT_INV_Mux6~0_combout\ <= NOT \RegBank_inst|Mux6~0_combout\;
\RAM_inst|ALT_INV_memory~2082_combout\ <= NOT \RAM_inst|memory~2082_combout\;
\RAM_inst|ALT_INV_memory~2081_combout\ <= NOT \RAM_inst|memory~2081_combout\;
\RAM_inst|ALT_INV_memory~2080_combout\ <= NOT \RAM_inst|memory~2080_combout\;
\RAM_inst|ALT_INV_memory~138_q\ <= NOT \RAM_inst|memory~138_q\;
\RAM_inst|ALT_INV_memory~106_q\ <= NOT \RAM_inst|memory~106_q\;
\RAM_inst|ALT_INV_memory~74_q\ <= NOT \RAM_inst|memory~74_q\;
\RAM_inst|ALT_INV_memory~42_q\ <= NOT \RAM_inst|memory~42_q\;
\RAM_inst|ALT_INV_memory~2079_combout\ <= NOT \RAM_inst|memory~2079_combout\;
\RAM_inst|ALT_INV_memory~130_q\ <= NOT \RAM_inst|memory~130_q\;
\RAM_inst|ALT_INV_memory~98_q\ <= NOT \RAM_inst|memory~98_q\;
\RAM_inst|ALT_INV_memory~66_q\ <= NOT \RAM_inst|memory~66_q\;
\RAM_inst|ALT_INV_memory~34_q\ <= NOT \RAM_inst|memory~34_q\;
\RAM_inst|ALT_INV_memory~2078_combout\ <= NOT \RAM_inst|memory~2078_combout\;
\RAM_inst|ALT_INV_memory~122_q\ <= NOT \RAM_inst|memory~122_q\;
\RAM_inst|ALT_INV_memory~90_q\ <= NOT \RAM_inst|memory~90_q\;
\RAM_inst|ALT_INV_memory~58_q\ <= NOT \RAM_inst|memory~58_q\;
\RAM_inst|ALT_INV_memory~26_q\ <= NOT \RAM_inst|memory~26_q\;
\RAM_inst|ALT_INV_memory~2077_combout\ <= NOT \RAM_inst|memory~2077_combout\;
\RAM_inst|ALT_INV_memory~114_q\ <= NOT \RAM_inst|memory~114_q\;
\RAM_inst|ALT_INV_memory~82_q\ <= NOT \RAM_inst|memory~82_q\;
\RAM_inst|ALT_INV_memory~50_q\ <= NOT \RAM_inst|memory~50_q\;
\RAM_inst|ALT_INV_memory~18_q\ <= NOT \RAM_inst|memory~18_q\;
\RAM_inst|ALT_INV_memory~2076_combout\ <= NOT \RAM_inst|memory~2076_combout\;
\RAM_inst|ALT_INV_memory~2075_combout\ <= NOT \RAM_inst|memory~2075_combout\;
\RAM_inst|ALT_INV_memory~266_q\ <= NOT \RAM_inst|memory~266_q\;
\RAM_inst|ALT_INV_memory~234_q\ <= NOT \RAM_inst|memory~234_q\;
\RAM_inst|ALT_INV_memory~202_q\ <= NOT \RAM_inst|memory~202_q\;
\RAM_inst|ALT_INV_memory~170_q\ <= NOT \RAM_inst|memory~170_q\;
\RAM_inst|ALT_INV_memory~2074_combout\ <= NOT \RAM_inst|memory~2074_combout\;
\RAM_inst|ALT_INV_memory~258_q\ <= NOT \RAM_inst|memory~258_q\;
\RAM_inst|ALT_INV_memory~226_q\ <= NOT \RAM_inst|memory~226_q\;
\RAM_inst|ALT_INV_memory~194_q\ <= NOT \RAM_inst|memory~194_q\;
\RAM_inst|ALT_INV_memory~162_q\ <= NOT \RAM_inst|memory~162_q\;
\RAM_inst|ALT_INV_memory~2073_combout\ <= NOT \RAM_inst|memory~2073_combout\;
\RAM_inst|ALT_INV_memory~250_q\ <= NOT \RAM_inst|memory~250_q\;
\RAM_inst|ALT_INV_memory~218_q\ <= NOT \RAM_inst|memory~218_q\;
\RAM_inst|ALT_INV_memory~186_q\ <= NOT \RAM_inst|memory~186_q\;
\RAM_inst|ALT_INV_memory~154_q\ <= NOT \RAM_inst|memory~154_q\;
\RAM_inst|ALT_INV_memory~2072_combout\ <= NOT \RAM_inst|memory~2072_combout\;
\RAM_inst|ALT_INV_memory~242_q\ <= NOT \RAM_inst|memory~242_q\;
\RAM_inst|ALT_INV_memory~210_q\ <= NOT \RAM_inst|memory~210_q\;
\RAM_inst|ALT_INV_memory~178_q\ <= NOT \RAM_inst|memory~178_q\;
\RAM_inst|ALT_INV_memory~146_q\ <= NOT \RAM_inst|memory~146_q\;
\MuxULA_inst|ALT_INV_Mux6~1_combout\ <= NOT \MuxULA_inst|Mux6~1_combout\;
\MuxULA_inst|ALT_INV_Mux6~0_combout\ <= NOT \MuxULA_inst|Mux6~0_combout\;
\RegBank_inst|ALT_INV_Mux7~0_combout\ <= NOT \RegBank_inst|Mux7~0_combout\;
\CU_inst|ALT_INV_Mux0~0_combout\ <= NOT \CU_inst|Mux0~0_combout\;
\ALT_INV_wdata[0]~0_combout\ <= NOT \wdata[0]~0_combout\;
\RAM_inst|ALT_INV_memory~2071_combout\ <= NOT \RAM_inst|memory~2071_combout\;
\RAM_inst|ALT_INV_memory~2070_combout\ <= NOT \RAM_inst|memory~2070_combout\;
\RAM_inst|ALT_INV_memory~2069_combout\ <= NOT \RAM_inst|memory~2069_combout\;
\RAM_inst|ALT_INV_memory~137_q\ <= NOT \RAM_inst|memory~137_q\;
\RAM_inst|ALT_INV_memory~105_q\ <= NOT \RAM_inst|memory~105_q\;
\RAM_inst|ALT_INV_memory~73_q\ <= NOT \RAM_inst|memory~73_q\;
\RAM_inst|ALT_INV_memory~41_q\ <= NOT \RAM_inst|memory~41_q\;
\RAM_inst|ALT_INV_memory~2068_combout\ <= NOT \RAM_inst|memory~2068_combout\;
\RAM_inst|ALT_INV_memory~265_q\ <= NOT \RAM_inst|memory~265_q\;
\RAM_inst|ALT_INV_memory~233_q\ <= NOT \RAM_inst|memory~233_q\;
\RAM_inst|ALT_INV_memory~201_q\ <= NOT \RAM_inst|memory~201_q\;
\RAM_inst|ALT_INV_memory~169_q\ <= NOT \RAM_inst|memory~169_q\;
\RAM_inst|ALT_INV_memory~2067_combout\ <= NOT \RAM_inst|memory~2067_combout\;
\RAM_inst|ALT_INV_memory~129_q\ <= NOT \RAM_inst|memory~129_q\;
\RAM_inst|ALT_INV_memory~257_q\ <= NOT \RAM_inst|memory~257_q\;
\RAM_inst|ALT_INV_memory~2121_combout\ <= NOT \RAM_inst|memory~2121_combout\;
\RAM_inst|ALT_INV_memory~2120_combout\ <= NOT \RAM_inst|memory~2120_combout\;
\RAM_inst|ALT_INV_memory~142_q\ <= NOT \RAM_inst|memory~142_q\;
\RAM_inst|ALT_INV_memory~270_q\ <= NOT \RAM_inst|memory~270_q\;
\RAM_inst|ALT_INV_memory~134_q\ <= NOT \RAM_inst|memory~134_q\;
\RAM_inst|ALT_INV_memory~262_q\ <= NOT \RAM_inst|memory~262_q\;
\RAM_inst|ALT_INV_memory~126_q\ <= NOT \RAM_inst|memory~126_q\;
\RAM_inst|ALT_INV_memory~254_q\ <= NOT \RAM_inst|memory~254_q\;
\RAM_inst|ALT_INV_memory~118_q\ <= NOT \RAM_inst|memory~118_q\;
\RAM_inst|ALT_INV_memory~246_q\ <= NOT \RAM_inst|memory~246_q\;
\RAM_inst|ALT_INV_memory~2119_combout\ <= NOT \RAM_inst|memory~2119_combout\;
\RAM_inst|ALT_INV_memory~2118_combout\ <= NOT \RAM_inst|memory~2118_combout\;
\RAM_inst|ALT_INV_memory~110_q\ <= NOT \RAM_inst|memory~110_q\;
\RAM_inst|ALT_INV_memory~102_q\ <= NOT \RAM_inst|memory~102_q\;
\RAM_inst|ALT_INV_memory~94_q\ <= NOT \RAM_inst|memory~94_q\;
\RAM_inst|ALT_INV_memory~86_q\ <= NOT \RAM_inst|memory~86_q\;
\RAM_inst|ALT_INV_memory~2117_combout\ <= NOT \RAM_inst|memory~2117_combout\;
\RAM_inst|ALT_INV_memory~238_q\ <= NOT \RAM_inst|memory~238_q\;
\RAM_inst|ALT_INV_memory~230_q\ <= NOT \RAM_inst|memory~230_q\;
\RAM_inst|ALT_INV_memory~222_q\ <= NOT \RAM_inst|memory~222_q\;
\RAM_inst|ALT_INV_memory~214_q\ <= NOT \RAM_inst|memory~214_q\;
\RAM_inst|ALT_INV_memory~2116_combout\ <= NOT \RAM_inst|memory~2116_combout\;
\RAM_inst|ALT_INV_memory~2115_combout\ <= NOT \RAM_inst|memory~2115_combout\;
\RAM_inst|ALT_INV_memory~78_q\ <= NOT \RAM_inst|memory~78_q\;
\RAM_inst|ALT_INV_memory~70_q\ <= NOT \RAM_inst|memory~70_q\;
\RAM_inst|ALT_INV_memory~62_q\ <= NOT \RAM_inst|memory~62_q\;
\RAM_inst|ALT_INV_memory~54_q\ <= NOT \RAM_inst|memory~54_q\;
\RAM_inst|ALT_INV_memory~2114_combout\ <= NOT \RAM_inst|memory~2114_combout\;
\RAM_inst|ALT_INV_memory~206_q\ <= NOT \RAM_inst|memory~206_q\;
\RAM_inst|ALT_INV_memory~198_q\ <= NOT \RAM_inst|memory~198_q\;
\RAM_inst|ALT_INV_memory~190_q\ <= NOT \RAM_inst|memory~190_q\;
\RAM_inst|ALT_INV_memory~182_q\ <= NOT \RAM_inst|memory~182_q\;
\RAM_inst|ALT_INV_memory~2113_combout\ <= NOT \RAM_inst|memory~2113_combout\;
\RAM_inst|ALT_INV_memory~2112_combout\ <= NOT \RAM_inst|memory~2112_combout\;
\RAM_inst|ALT_INV_memory~46_q\ <= NOT \RAM_inst|memory~46_q\;
\RAM_inst|ALT_INV_memory~38_q\ <= NOT \RAM_inst|memory~38_q\;
\RAM_inst|ALT_INV_memory~30_q\ <= NOT \RAM_inst|memory~30_q\;
\RAM_inst|ALT_INV_memory~22_q\ <= NOT \RAM_inst|memory~22_q\;
\RAM_inst|ALT_INV_memory~2111_combout\ <= NOT \RAM_inst|memory~2111_combout\;
\RAM_inst|ALT_INV_memory~174_q\ <= NOT \RAM_inst|memory~174_q\;
\RAM_inst|ALT_INV_memory~166_q\ <= NOT \RAM_inst|memory~166_q\;
\RAM_inst|ALT_INV_memory~158_q\ <= NOT \RAM_inst|memory~158_q\;
\RAM_inst|ALT_INV_memory~150_q\ <= NOT \RAM_inst|memory~150_q\;
\MuxULA_inst|ALT_INV_Mux8~1_combout\ <= NOT \MuxULA_inst|Mux8~1_combout\;
\RegBank_inst|ALT_INV_Mux0~0_combout\ <= NOT \RegBank_inst|Mux0~0_combout\;
\MuxULA_inst|ALT_INV_Mux9~0_combout\ <= NOT \MuxULA_inst|Mux9~0_combout\;
\RegBank_inst|ALT_INV_Mux1~0_combout\ <= NOT \RegBank_inst|Mux1~0_combout\;
\MuxULA_inst|ALT_INV_Mux10~0_combout\ <= NOT \MuxULA_inst|Mux10~0_combout\;
\ALT_INV_raddr2[0]~4_combout\ <= NOT \raddr2[0]~4_combout\;
\ALT_INV_raddr2[1]~3_combout\ <= NOT \raddr2[1]~3_combout\;
\RegBank_inst|ALT_INV_Mux2~0_combout\ <= NOT \RegBank_inst|Mux2~0_combout\;
\ALT_INV_raddr2~2_combout\ <= NOT \raddr2~2_combout\;
\MuxULA_inst|ALT_INV_Mux6~2_combout\ <= NOT \MuxULA_inst|Mux6~2_combout\;
\RegBank_inst|ALT_INV_Mux3~0_combout\ <= NOT \RegBank_inst|Mux3~0_combout\;
\RAM_inst|ALT_INV_memory~2110_combout\ <= NOT \RAM_inst|memory~2110_combout\;
\RAM_inst|ALT_INV_memory~2109_combout\ <= NOT \RAM_inst|memory~2109_combout\;
\RAM_inst|ALT_INV_memory~141_q\ <= NOT \RAM_inst|memory~141_q\;
\RAM_inst|ALT_INV_memory~109_q\ <= NOT \RAM_inst|memory~109_q\;
\RAM_inst|ALT_INV_memory~77_q\ <= NOT \RAM_inst|memory~77_q\;
\RAM_inst|ALT_INV_memory~45_q\ <= NOT \RAM_inst|memory~45_q\;
\RAM_inst|ALT_INV_memory~2108_combout\ <= NOT \RAM_inst|memory~2108_combout\;
\RAM_inst|ALT_INV_memory~133_q\ <= NOT \RAM_inst|memory~133_q\;
\RAM_inst|ALT_INV_memory~101_q\ <= NOT \RAM_inst|memory~101_q\;
\RAM_inst|ALT_INV_memory~69_q\ <= NOT \RAM_inst|memory~69_q\;
\RAM_inst|ALT_INV_memory~37_q\ <= NOT \RAM_inst|memory~37_q\;
\RAM_inst|ALT_INV_memory~2107_combout\ <= NOT \RAM_inst|memory~2107_combout\;
\RAM_inst|ALT_INV_memory~125_q\ <= NOT \RAM_inst|memory~125_q\;
\RAM_inst|ALT_INV_memory~93_q\ <= NOT \RAM_inst|memory~93_q\;
\RAM_inst|ALT_INV_memory~61_q\ <= NOT \RAM_inst|memory~61_q\;
\RAM_inst|ALT_INV_memory~29_q\ <= NOT \RAM_inst|memory~29_q\;
\RAM_inst|ALT_INV_memory~2106_combout\ <= NOT \RAM_inst|memory~2106_combout\;
\RAM_inst|ALT_INV_memory~117_q\ <= NOT \RAM_inst|memory~117_q\;
\RAM_inst|ALT_INV_memory~85_q\ <= NOT \RAM_inst|memory~85_q\;
\RAM_inst|ALT_INV_memory~53_q\ <= NOT \RAM_inst|memory~53_q\;
\RAM_inst|ALT_INV_memory~21_q\ <= NOT \RAM_inst|memory~21_q\;
\RAM_inst|ALT_INV_memory~2105_combout\ <= NOT \RAM_inst|memory~2105_combout\;
\RAM_inst|ALT_INV_memory~2104_combout\ <= NOT \RAM_inst|memory~2104_combout\;
\RAM_inst|ALT_INV_memory~269_q\ <= NOT \RAM_inst|memory~269_q\;
\RAM_inst|ALT_INV_memory~237_q\ <= NOT \RAM_inst|memory~237_q\;
\RAM_inst|ALT_INV_memory~205_q\ <= NOT \RAM_inst|memory~205_q\;
\RAM_inst|ALT_INV_memory~173_q\ <= NOT \RAM_inst|memory~173_q\;
\RAM_inst|ALT_INV_memory~2103_combout\ <= NOT \RAM_inst|memory~2103_combout\;
\RAM_inst|ALT_INV_memory~261_q\ <= NOT \RAM_inst|memory~261_q\;
\RAM_inst|ALT_INV_memory~229_q\ <= NOT \RAM_inst|memory~229_q\;
\RAM_inst|ALT_INV_memory~197_q\ <= NOT \RAM_inst|memory~197_q\;
\RAM_inst|ALT_INV_memory~165_q\ <= NOT \RAM_inst|memory~165_q\;
\RAM_inst|ALT_INV_memory~2102_combout\ <= NOT \RAM_inst|memory~2102_combout\;
\RAM_inst|ALT_INV_memory~253_q\ <= NOT \RAM_inst|memory~253_q\;
\RAM_inst|ALT_INV_memory~221_q\ <= NOT \RAM_inst|memory~221_q\;
\RAM_inst|ALT_INV_memory~189_q\ <= NOT \RAM_inst|memory~189_q\;
\RAM_inst|ALT_INV_memory~157_q\ <= NOT \RAM_inst|memory~157_q\;
\RAM_inst|ALT_INV_memory~2101_combout\ <= NOT \RAM_inst|memory~2101_combout\;
\RAM_inst|ALT_INV_memory~245_q\ <= NOT \RAM_inst|memory~245_q\;
\RAM_inst|ALT_INV_memory~213_q\ <= NOT \RAM_inst|memory~213_q\;
\RAM_inst|ALT_INV_memory~181_q\ <= NOT \RAM_inst|memory~181_q\;
\RAM_inst|ALT_INV_memory~149_q\ <= NOT \RAM_inst|memory~149_q\;
\RegBank_inst|ALT_INV_Mux4~0_combout\ <= NOT \RegBank_inst|Mux4~0_combout\;
\RAM_inst|ALT_INV_memory~2100_combout\ <= NOT \RAM_inst|memory~2100_combout\;
\RAM_inst|ALT_INV_memory~2099_combout\ <= NOT \RAM_inst|memory~2099_combout\;
\RAM_inst|ALT_INV_memory~2098_combout\ <= NOT \RAM_inst|memory~2098_combout\;
\RAM_inst|ALT_INV_memory~140_q\ <= NOT \RAM_inst|memory~140_q\;
\RAM_inst|ALT_INV_memory~108_q\ <= NOT \RAM_inst|memory~108_q\;
\RAM_inst|ALT_INV_memory~76_q\ <= NOT \RAM_inst|memory~76_q\;
\RAM_inst|ALT_INV_memory~44_q\ <= NOT \RAM_inst|memory~44_q\;
\RAM_inst|ALT_INV_memory~2097_combout\ <= NOT \RAM_inst|memory~2097_combout\;
\RAM_inst|ALT_INV_memory~268_q\ <= NOT \RAM_inst|memory~268_q\;
\RAM_inst|ALT_INV_memory~236_q\ <= NOT \RAM_inst|memory~236_q\;
\RAM_inst|ALT_INV_memory~204_q\ <= NOT \RAM_inst|memory~204_q\;
\RAM_inst|ALT_INV_memory~172_q\ <= NOT \RAM_inst|memory~172_q\;
\RAM_inst|ALT_INV_memory~2096_combout\ <= NOT \RAM_inst|memory~2096_combout\;
\RAM_inst|ALT_INV_memory~132_q\ <= NOT \RAM_inst|memory~132_q\;
\RAM_inst|ALT_INV_memory~260_q\ <= NOT \RAM_inst|memory~260_q\;
\RAM_inst|ALT_INV_memory~100_q\ <= NOT \RAM_inst|memory~100_q\;
\RAM_inst|ALT_INV_memory~228_q\ <= NOT \RAM_inst|memory~228_q\;
\RAM_inst|ALT_INV_memory~68_q\ <= NOT \RAM_inst|memory~68_q\;
\RAM_inst|ALT_INV_memory~196_q\ <= NOT \RAM_inst|memory~196_q\;
\RAM_inst|ALT_INV_memory~36_q\ <= NOT \RAM_inst|memory~36_q\;
\RAM_inst|ALT_INV_memory~164_q\ <= NOT \RAM_inst|memory~164_q\;
\RAM_inst|ALT_INV_memory~2095_combout\ <= NOT \RAM_inst|memory~2095_combout\;
\RAM_inst|ALT_INV_memory~124_q\ <= NOT \RAM_inst|memory~124_q\;
\RAM_inst|ALT_INV_memory~252_q\ <= NOT \RAM_inst|memory~252_q\;
\RAM_inst|ALT_INV_memory~92_q\ <= NOT \RAM_inst|memory~92_q\;
\RAM_inst|ALT_INV_memory~220_q\ <= NOT \RAM_inst|memory~220_q\;
\RAM_inst|ALT_INV_memory~60_q\ <= NOT \RAM_inst|memory~60_q\;
\RAM_inst|ALT_INV_memory~2178_combout\ <= NOT \RAM_inst|memory~2178_combout\;
\RAM_inst|ALT_INV_memory~2176_combout\ <= NOT \RAM_inst|memory~2176_combout\;
\RAM_inst|ALT_INV_memory~2174_combout\ <= NOT \RAM_inst|memory~2174_combout\;
\RAM_inst|ALT_INV_memory~2172_combout\ <= NOT \RAM_inst|memory~2172_combout\;
\RAM_inst|ALT_INV_memory~2170_combout\ <= NOT \RAM_inst|memory~2170_combout\;
\RAM_inst|ALT_INV_memory~2168_combout\ <= NOT \RAM_inst|memory~2168_combout\;
\RAM_inst|ALT_INV_memory~2166_combout\ <= NOT \RAM_inst|memory~2166_combout\;
\RAM_inst|ALT_INV_memory~2164_combout\ <= NOT \RAM_inst|memory~2164_combout\;
\RAM_inst|ALT_INV_memory~2162_combout\ <= NOT \RAM_inst|memory~2162_combout\;
\RAM_inst|ALT_INV_memory~2160_combout\ <= NOT \RAM_inst|memory~2160_combout\;
\RAM_inst|ALT_INV_memory~2158_combout\ <= NOT \RAM_inst|memory~2158_combout\;
\RAM_inst|ALT_INV_memory~2156_combout\ <= NOT \RAM_inst|memory~2156_combout\;
\RAM_inst|ALT_INV_memory~2154_combout\ <= NOT \RAM_inst|memory~2154_combout\;
\RAM_inst|ALT_INV_memory~2152_combout\ <= NOT \RAM_inst|memory~2152_combout\;
\RAM_inst|ALT_INV_memory~2150_combout\ <= NOT \RAM_inst|memory~2150_combout\;
\RAM_inst|ALT_INV_memory~2148_combout\ <= NOT \RAM_inst|memory~2148_combout\;
\RAM_inst|ALT_INV_memory~2146_combout\ <= NOT \RAM_inst|memory~2146_combout\;
\RAM_inst|ALT_INV_memory~2144_combout\ <= NOT \RAM_inst|memory~2144_combout\;
\RAM_inst|ALT_INV_memory~2142_combout\ <= NOT \RAM_inst|memory~2142_combout\;
\RAM_inst|ALT_INV_memory~2140_combout\ <= NOT \RAM_inst|memory~2140_combout\;
\ROM_inst|ALT_INV_rom~17_combout\ <= NOT \ROM_inst|rom~17_combout\;
\ROM_inst|ALT_INV_rom~16_combout\ <= NOT \ROM_inst|rom~16_combout\;
\ROM_inst|ALT_INV_rom~15_combout\ <= NOT \ROM_inst|rom~15_combout\;
\RAM_inst|ALT_INV_memory~2139_combout\ <= NOT \RAM_inst|memory~2139_combout\;
\RAM_inst|ALT_INV_memory~2138_combout\ <= NOT \RAM_inst|memory~2138_combout\;
\RAM_inst|ALT_INV_memory~2137_combout\ <= NOT \RAM_inst|memory~2137_combout\;
\RAM_inst|ALT_INV_memory~144_q\ <= NOT \RAM_inst|memory~144_q\;
\RAM_inst|ALT_INV_memory~136_q\ <= NOT \RAM_inst|memory~136_q\;
\RAM_inst|ALT_INV_memory~128_q\ <= NOT \RAM_inst|memory~128_q\;
\RAM_inst|ALT_INV_memory~120_q\ <= NOT \RAM_inst|memory~120_q\;
\RAM_inst|ALT_INV_memory~2136_combout\ <= NOT \RAM_inst|memory~2136_combout\;
\RAM_inst|ALT_INV_memory~112_q\ <= NOT \RAM_inst|memory~112_q\;
\RAM_inst|ALT_INV_memory~104_q\ <= NOT \RAM_inst|memory~104_q\;
\RAM_inst|ALT_INV_memory~96_q\ <= NOT \RAM_inst|memory~96_q\;
\RAM_inst|ALT_INV_memory~88_q\ <= NOT \RAM_inst|memory~88_q\;
\RAM_inst|ALT_INV_memory~2135_combout\ <= NOT \RAM_inst|memory~2135_combout\;
\RAM_inst|ALT_INV_memory~80_q\ <= NOT \RAM_inst|memory~80_q\;
\RAM_inst|ALT_INV_memory~72_q\ <= NOT \RAM_inst|memory~72_q\;
\RAM_inst|ALT_INV_memory~64_q\ <= NOT \RAM_inst|memory~64_q\;
\RAM_inst|ALT_INV_memory~56_q\ <= NOT \RAM_inst|memory~56_q\;
\RAM_inst|ALT_INV_memory~2134_combout\ <= NOT \RAM_inst|memory~2134_combout\;
\RAM_inst|ALT_INV_memory~48_q\ <= NOT \RAM_inst|memory~48_q\;
\RAM_inst|ALT_INV_memory~40_q\ <= NOT \RAM_inst|memory~40_q\;
\RAM_inst|ALT_INV_memory~32_q\ <= NOT \RAM_inst|memory~32_q\;
\RAM_inst|ALT_INV_memory~24_q\ <= NOT \RAM_inst|memory~24_q\;
\RAM_inst|ALT_INV_memory~2133_combout\ <= NOT \RAM_inst|memory~2133_combout\;
\RAM_inst|ALT_INV_memory~2132_combout\ <= NOT \RAM_inst|memory~2132_combout\;
\RAM_inst|ALT_INV_memory~272_q\ <= NOT \RAM_inst|memory~272_q\;
\RAM_inst|ALT_INV_memory~264_q\ <= NOT \RAM_inst|memory~264_q\;
\RAM_inst|ALT_INV_memory~256_q\ <= NOT \RAM_inst|memory~256_q\;
\RAM_inst|ALT_INV_memory~248_q\ <= NOT \RAM_inst|memory~248_q\;
\RAM_inst|ALT_INV_memory~2131_combout\ <= NOT \RAM_inst|memory~2131_combout\;
\RAM_inst|ALT_INV_memory~240_q\ <= NOT \RAM_inst|memory~240_q\;
\RAM_inst|ALT_INV_memory~232_q\ <= NOT \RAM_inst|memory~232_q\;
\RAM_inst|ALT_INV_memory~224_q\ <= NOT \RAM_inst|memory~224_q\;
\RAM_inst|ALT_INV_memory~216_q\ <= NOT \RAM_inst|memory~216_q\;
\RAM_inst|ALT_INV_memory~2130_combout\ <= NOT \RAM_inst|memory~2130_combout\;
\RAM_inst|ALT_INV_memory~208_q\ <= NOT \RAM_inst|memory~208_q\;
\RAM_inst|ALT_INV_memory~200_q\ <= NOT \RAM_inst|memory~200_q\;
\RAM_inst|ALT_INV_memory~192_q\ <= NOT \RAM_inst|memory~192_q\;
\RAM_inst|ALT_INV_memory~184_q\ <= NOT \RAM_inst|memory~184_q\;
\RAM_inst|ALT_INV_memory~2129_combout\ <= NOT \RAM_inst|memory~2129_combout\;
\RAM_inst|ALT_INV_memory~176_q\ <= NOT \RAM_inst|memory~176_q\;
\RAM_inst|ALT_INV_memory~168_q\ <= NOT \RAM_inst|memory~168_q\;
\RAM_inst|ALT_INV_memory~160_q\ <= NOT \RAM_inst|memory~160_q\;
\RAM_inst|ALT_INV_memory~152_q\ <= NOT \RAM_inst|memory~152_q\;
\RAM_inst|ALT_INV_memory~2128_combout\ <= NOT \RAM_inst|memory~2128_combout\;
\RAM_inst|ALT_INV_memory~2127_combout\ <= NOT \RAM_inst|memory~2127_combout\;
\RAM_inst|ALT_INV_memory~2126_combout\ <= NOT \RAM_inst|memory~2126_combout\;
\RAM_inst|ALT_INV_memory~143_q\ <= NOT \RAM_inst|memory~143_q\;
\RAM_inst|ALT_INV_memory~111_q\ <= NOT \RAM_inst|memory~111_q\;
\RAM_inst|ALT_INV_memory~79_q\ <= NOT \RAM_inst|memory~79_q\;
\RAM_inst|ALT_INV_memory~47_q\ <= NOT \RAM_inst|memory~47_q\;
\RAM_inst|ALT_INV_memory~2125_combout\ <= NOT \RAM_inst|memory~2125_combout\;
\RAM_inst|ALT_INV_memory~271_q\ <= NOT \RAM_inst|memory~271_q\;
\RAM_inst|ALT_INV_memory~239_q\ <= NOT \RAM_inst|memory~239_q\;
\RAM_inst|ALT_INV_memory~207_q\ <= NOT \RAM_inst|memory~207_q\;
\RAM_inst|ALT_INV_memory~175_q\ <= NOT \RAM_inst|memory~175_q\;
\RAM_inst|ALT_INV_memory~2124_combout\ <= NOT \RAM_inst|memory~2124_combout\;
\RAM_inst|ALT_INV_memory~135_q\ <= NOT \RAM_inst|memory~135_q\;
\RAM_inst|ALT_INV_memory~263_q\ <= NOT \RAM_inst|memory~263_q\;
\RAM_inst|ALT_INV_memory~103_q\ <= NOT \RAM_inst|memory~103_q\;
\RAM_inst|ALT_INV_memory~231_q\ <= NOT \RAM_inst|memory~231_q\;
\RAM_inst|ALT_INV_memory~71_q\ <= NOT \RAM_inst|memory~71_q\;
\RAM_inst|ALT_INV_memory~199_q\ <= NOT \RAM_inst|memory~199_q\;
\RAM_inst|ALT_INV_memory~39_q\ <= NOT \RAM_inst|memory~39_q\;
\RAM_inst|ALT_INV_memory~167_q\ <= NOT \RAM_inst|memory~167_q\;
\RAM_inst|ALT_INV_memory~2123_combout\ <= NOT \RAM_inst|memory~2123_combout\;
\RAM_inst|ALT_INV_memory~127_q\ <= NOT \RAM_inst|memory~127_q\;
\RAM_inst|ALT_INV_memory~255_q\ <= NOT \RAM_inst|memory~255_q\;
\RAM_inst|ALT_INV_memory~95_q\ <= NOT \RAM_inst|memory~95_q\;
\RAM_inst|ALT_INV_memory~223_q\ <= NOT \RAM_inst|memory~223_q\;
\RAM_inst|ALT_INV_memory~63_q\ <= NOT \RAM_inst|memory~63_q\;
\RAM_inst|ALT_INV_memory~191_q\ <= NOT \RAM_inst|memory~191_q\;
\RAM_inst|ALT_INV_memory~31_q\ <= NOT \RAM_inst|memory~31_q\;
\RAM_inst|ALT_INV_memory~159_q\ <= NOT \RAM_inst|memory~159_q\;
\RAM_inst|ALT_INV_memory~2122_combout\ <= NOT \RAM_inst|memory~2122_combout\;
\RAM_inst|ALT_INV_memory~119_q\ <= NOT \RAM_inst|memory~119_q\;
\RAM_inst|ALT_INV_memory~247_q\ <= NOT \RAM_inst|memory~247_q\;
\RAM_inst|ALT_INV_memory~87_q\ <= NOT \RAM_inst|memory~87_q\;
\RAM_inst|ALT_INV_memory~215_q\ <= NOT \RAM_inst|memory~215_q\;
\RAM_inst|ALT_INV_memory~55_q\ <= NOT \RAM_inst|memory~55_q\;
\RAM_inst|ALT_INV_memory~183_q\ <= NOT \RAM_inst|memory~183_q\;
\RAM_inst|ALT_INV_memory~23_q\ <= NOT \RAM_inst|memory~23_q\;
\RAM_inst|ALT_INV_memory~151_q\ <= NOT \RAM_inst|memory~151_q\;
\ALT_INV_ram_addr[0]~4_combout\ <= NOT \ram_addr[0]~4_combout\;
\ALT_INV_ram_addr[1]~3_combout\ <= NOT \ram_addr[1]~3_combout\;
\ALT_INV_ram_addr[2]~2_combout\ <= NOT \ram_addr[2]~2_combout\;
\ALT_INV_ram_addr[3]~1_combout\ <= NOT \ram_addr[3]~1_combout\;
\ALT_INV_ram_addr[4]~0_combout\ <= NOT \ram_addr[4]~0_combout\;
\RAM_inst|ALT_INV_memory~2236_combout\ <= NOT \RAM_inst|memory~2236_combout\;
\RAM_inst|ALT_INV_memory~2235_combout\ <= NOT \RAM_inst|memory~2235_combout\;
\RAM_inst|ALT_INV_memory~2234_combout\ <= NOT \RAM_inst|memory~2234_combout\;
\RAM_inst|ALT_INV_memory~2233_combout\ <= NOT \RAM_inst|memory~2233_combout\;
\RAM_inst|ALT_INV_memory~2232_combout\ <= NOT \RAM_inst|memory~2232_combout\;
\RAM_inst|ALT_INV_memory~2231_combout\ <= NOT \RAM_inst|memory~2231_combout\;
\RAM_inst|ALT_INV_memory~2230_combout\ <= NOT \RAM_inst|memory~2230_combout\;
\RAM_inst|ALT_INV_memory~2229_combout\ <= NOT \RAM_inst|memory~2229_combout\;
\RAM_inst|ALT_INV_memory~2228_combout\ <= NOT \RAM_inst|memory~2228_combout\;
\RAM_inst|ALT_INV_memory~2227_combout\ <= NOT \RAM_inst|memory~2227_combout\;
\RAM_inst|ALT_INV_memory~2226_combout\ <= NOT \RAM_inst|memory~2226_combout\;
\RAM_inst|ALT_INV_memory~2225_combout\ <= NOT \RAM_inst|memory~2225_combout\;
\RAM_inst|ALT_INV_memory~2224_combout\ <= NOT \RAM_inst|memory~2224_combout\;
\RAM_inst|ALT_INV_memory~2223_combout\ <= NOT \RAM_inst|memory~2223_combout\;
\RAM_inst|ALT_INV_memory~2222_combout\ <= NOT \RAM_inst|memory~2222_combout\;
\RAM_inst|ALT_INV_memory~2221_combout\ <= NOT \RAM_inst|memory~2221_combout\;
\RAM_inst|ALT_INV_memory~2220_combout\ <= NOT \RAM_inst|memory~2220_combout\;
\RAM_inst|ALT_INV_memory~2219_combout\ <= NOT \RAM_inst|memory~2219_combout\;
\RAM_inst|ALT_INV_memory~2218_combout\ <= NOT \RAM_inst|memory~2218_combout\;
\RAM_inst|ALT_INV_memory~2217_combout\ <= NOT \RAM_inst|memory~2217_combout\;
\RAM_inst|ALT_INV_memory~2216_combout\ <= NOT \RAM_inst|memory~2216_combout\;
\RAM_inst|ALT_INV_memory~2215_combout\ <= NOT \RAM_inst|memory~2215_combout\;
\RAM_inst|ALT_INV_memory~2214_combout\ <= NOT \RAM_inst|memory~2214_combout\;
\RAM_inst|ALT_INV_memory~2213_combout\ <= NOT \RAM_inst|memory~2213_combout\;
\RAM_inst|ALT_INV_memory~2212_combout\ <= NOT \RAM_inst|memory~2212_combout\;
\RAM_inst|ALT_INV_memory~2211_combout\ <= NOT \RAM_inst|memory~2211_combout\;
\RAM_inst|ALT_INV_memory~2210_combout\ <= NOT \RAM_inst|memory~2210_combout\;
\RAM_inst|ALT_INV_memory~2209_combout\ <= NOT \RAM_inst|memory~2209_combout\;
\RAM_inst|ALT_INV_memory~2208_combout\ <= NOT \RAM_inst|memory~2208_combout\;
\RAM_inst|ALT_INV_memory~2207_combout\ <= NOT \RAM_inst|memory~2207_combout\;
\RAM_inst|ALT_INV_memory~2206_combout\ <= NOT \RAM_inst|memory~2206_combout\;
\RAM_inst|ALT_INV_memory~2205_combout\ <= NOT \RAM_inst|memory~2205_combout\;
\RAM_inst|ALT_INV_memory~2204_combout\ <= NOT \RAM_inst|memory~2204_combout\;
\RAM_inst|ALT_INV_memory~2202_combout\ <= NOT \RAM_inst|memory~2202_combout\;
\RAM_inst|ALT_INV_memory~2200_combout\ <= NOT \RAM_inst|memory~2200_combout\;
\RAM_inst|ALT_INV_memory~2198_combout\ <= NOT \RAM_inst|memory~2198_combout\;
\RAM_inst|ALT_INV_memory~2196_combout\ <= NOT \RAM_inst|memory~2196_combout\;
\RAM_inst|ALT_INV_memory~2194_combout\ <= NOT \RAM_inst|memory~2194_combout\;
\RAM_inst|ALT_INV_memory~2192_combout\ <= NOT \RAM_inst|memory~2192_combout\;
\RAM_inst|ALT_INV_memory~2190_combout\ <= NOT \RAM_inst|memory~2190_combout\;
\RAM_inst|ALT_INV_memory~2188_combout\ <= NOT \RAM_inst|memory~2188_combout\;
\RAM_inst|ALT_INV_memory~2186_combout\ <= NOT \RAM_inst|memory~2186_combout\;
\RAM_inst|ALT_INV_memory~2184_combout\ <= NOT \RAM_inst|memory~2184_combout\;
\RAM_inst|ALT_INV_memory~2182_combout\ <= NOT \RAM_inst|memory~2182_combout\;
\RAM_inst|ALT_INV_memory~2180_combout\ <= NOT \RAM_inst|memory~2180_combout\;

\pc_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(0),
	devoe => ww_devoe,
	o => \pc_out[0]~output_o\);

\pc_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(1),
	devoe => ww_devoe,
	o => \pc_out[1]~output_o\);

\pc_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(2),
	devoe => ww_devoe,
	o => \pc_out[2]~output_o\);

\pc_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(3),
	devoe => ww_devoe,
	o => \pc_out[3]~output_o\);

\pc_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(4),
	devoe => ww_devoe,
	o => \pc_out[4]~output_o\);

\pc_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(5),
	devoe => ww_devoe,
	o => \pc_out[5]~output_o\);

\pc_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(6),
	devoe => ww_devoe,
	o => \pc_out[6]~output_o\);

\pc_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|pc_reg\(7),
	devoe => ww_devoe,
	o => \pc_out[7]~output_o\);

\instr_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|ALT_INV_rom~1_combout\,
	devoe => ww_devoe,
	o => \instr_out[0]~output_o\);

\instr_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|rom~3_combout\,
	devoe => ww_devoe,
	o => \instr_out[1]~output_o\);

\instr_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|rom~5_combout\,
	devoe => ww_devoe,
	o => \instr_out[2]~output_o\);

\instr_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|ALT_INV_rom~7_combout\,
	devoe => ww_devoe,
	o => \instr_out[3]~output_o\);

\instr_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|rom~9_combout\,
	devoe => ww_devoe,
	o => \instr_out[4]~output_o\);

\instr_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|rom~11_combout\,
	devoe => ww_devoe,
	o => \instr_out[5]~output_o\);

\instr_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULA_inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \instr_out[6]~output_o\);

\instr_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_inst|ALT_INV_rom~14_combout\,
	devoe => ww_devoe,
	o => \instr_out[7]~output_o\);

\alu_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[0]~output_o\);

\alu_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[1]~output_o\);

\alu_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \alu_out[2]~output_o\);

\alu_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[3]~output_o\);

\alu_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[4]~output_o\);

\alu_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[5]~output_o\);

\alu_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[6]~output_o\);

\alu_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[7]~output_o\);

\ram_addr_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_addr[0]~4_combout\,
	devoe => ww_devoe,
	o => \ram_addr_out[0]~output_o\);

\ram_addr_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_addr[1]~3_combout\,
	devoe => ww_devoe,
	o => \ram_addr_out[1]~output_o\);

\ram_addr_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_addr[2]~2_combout\,
	devoe => ww_devoe,
	o => \ram_addr_out[2]~output_o\);

\ram_addr_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_addr[3]~1_combout\,
	devoe => ww_devoe,
	o => \ram_addr_out[3]~output_o\);

\ram_addr_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_addr[4]~0_combout\,
	devoe => ww_devoe,
	o => \ram_addr_out[4]~output_o\);

\ram_addr_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ram_addr_out[5]~output_o\);

\ram_addr_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ram_addr_out[6]~output_o\);

\ram_addr_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ram_addr_out[7]~output_o\);

\r0_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][0]~q\,
	devoe => ww_devoe,
	o => \r0_out[0]~output_o\);

\r0_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][1]~q\,
	devoe => ww_devoe,
	o => \r0_out[1]~output_o\);

\r0_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][2]~q\,
	devoe => ww_devoe,
	o => \r0_out[2]~output_o\);

\r0_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][3]~q\,
	devoe => ww_devoe,
	o => \r0_out[3]~output_o\);

\r0_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][4]~q\,
	devoe => ww_devoe,
	o => \r0_out[4]~output_o\);

\r0_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][5]~q\,
	devoe => ww_devoe,
	o => \r0_out[5]~output_o\);

\r0_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][6]~q\,
	devoe => ww_devoe,
	o => \r0_out[6]~output_o\);

\r0_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[0][7]~q\,
	devoe => ww_devoe,
	o => \r0_out[7]~output_o\);

\r1_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][0]~q\,
	devoe => ww_devoe,
	o => \r1_out[0]~output_o\);

\r1_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][1]~q\,
	devoe => ww_devoe,
	o => \r1_out[1]~output_o\);

\r1_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][2]~q\,
	devoe => ww_devoe,
	o => \r1_out[2]~output_o\);

\r1_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][3]~q\,
	devoe => ww_devoe,
	o => \r1_out[3]~output_o\);

\r1_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][4]~q\,
	devoe => ww_devoe,
	o => \r1_out[4]~output_o\);

\r1_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][5]~q\,
	devoe => ww_devoe,
	o => \r1_out[5]~output_o\);

\r1_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][6]~q\,
	devoe => ww_devoe,
	o => \r1_out[6]~output_o\);

\r1_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[1][7]~q\,
	devoe => ww_devoe,
	o => \r1_out[7]~output_o\);

\r2_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][0]~q\,
	devoe => ww_devoe,
	o => \r2_out[0]~output_o\);

\r2_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][1]~q\,
	devoe => ww_devoe,
	o => \r2_out[1]~output_o\);

\r2_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][2]~q\,
	devoe => ww_devoe,
	o => \r2_out[2]~output_o\);

\r2_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][3]~q\,
	devoe => ww_devoe,
	o => \r2_out[3]~output_o\);

\r2_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][4]~q\,
	devoe => ww_devoe,
	o => \r2_out[4]~output_o\);

\r2_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][5]~q\,
	devoe => ww_devoe,
	o => \r2_out[5]~output_o\);

\r2_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][6]~q\,
	devoe => ww_devoe,
	o => \r2_out[6]~output_o\);

\r2_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[2][7]~q\,
	devoe => ww_devoe,
	o => \r2_out[7]~output_o\);

\r3_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][0]~q\,
	devoe => ww_devoe,
	o => \r3_out[0]~output_o\);

\r3_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][1]~q\,
	devoe => ww_devoe,
	o => \r3_out[1]~output_o\);

\r3_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][2]~q\,
	devoe => ww_devoe,
	o => \r3_out[2]~output_o\);

\r3_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][3]~q\,
	devoe => ww_devoe,
	o => \r3_out[3]~output_o\);

\r3_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][4]~q\,
	devoe => ww_devoe,
	o => \r3_out[4]~output_o\);

\r3_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][5]~q\,
	devoe => ww_devoe,
	o => \r3_out[5]~output_o\);

\r3_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][6]~q\,
	devoe => ww_devoe,
	o => \r3_out[6]~output_o\);

\r3_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegBank_inst|regs[3][7]~q\,
	devoe => ww_devoe,
	o => \r3_out[7]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\ROM_inst|rom~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~6_combout\ = (!\PC_inst|pc_reg\(3) & (!\PC_inst|pc_reg\(4) & ((!\PC_inst|pc_reg\(0)) # (\PC_inst|pc_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001000000110000000100000011000000010000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(2),
	datab => \PC_inst|ALT_INV_pc_reg\(3),
	datac => \PC_inst|ALT_INV_pc_reg\(4),
	datad => \PC_inst|ALT_INV_pc_reg\(0),
	combout => \ROM_inst|rom~6_combout\);

\ROM_inst|rom~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~7_combout\ = (((!\ROM_inst|rom~6_combout\) # (\PC_inst|pc_reg\(7))) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(5),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \PC_inst|ALT_INV_pc_reg\(7),
	datad => \ROM_inst|ALT_INV_rom~6_combout\,
	combout => \ROM_inst|rom~7_combout\);

\ROM_inst|rom~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~13_combout\ = (!\PC_inst|pc_reg\(3) & ((!\PC_inst|pc_reg\(1) $ (\PC_inst|pc_reg\(2))))) # (\PC_inst|pc_reg\(3) & (!\PC_inst|pc_reg\(0) & (\PC_inst|pc_reg\(1) & !\PC_inst|pc_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100100000110000110010000011000011001000001100001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~13_combout\);

\ROM_inst|rom~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~14_combout\ = (!\ROM_inst|rom~8_combout\) # (!\ROM_inst|rom~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~8_combout\,
	datab => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \ROM_inst|rom~14_combout\);

\raddr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2~0_combout\ = (!\PC_inst|pc_reg\(4) & (!\PC_inst|pc_reg\(5) & !\PC_inst|pc_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \PC_inst|ALT_INV_pc_reg\(5),
	datac => \PC_inst|ALT_INV_pc_reg\(6),
	combout => \raddr2~0_combout\);

\raddr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2~1_combout\ = (!\PC_inst|pc_reg\(7) & (\raddr2~0_combout\ & ((\ROM_inst|rom~13_combout\) # (\ROM_inst|rom~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000000100000101000000010000010100000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ALT_INV_raddr2~0_combout\,
	datad => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \raddr2~1_combout\);

\MuxULA_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux8~0_combout\ = (!\ROM_inst|rom~3_combout\ & (\ROM_inst|rom~5_combout\ & !\raddr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ALT_INV_raddr2~1_combout\,
	combout => \MuxULA_inst|Mux8~0_combout\);

\wdata[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[0]~0_combout\ = (!\ROM_inst|rom~11_combout\ & (\MuxULA_inst|Mux13~0_combout\ & \ROM_inst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \wdata[0]~0_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\MuxULA_inst|Mux13~0_combout\ & \ROM_inst|rom~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \Equal0~0_combout\);

\CU_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CU_inst|Mux0~0_combout\ = (\ROM_inst|rom~8_combout\ & (\ROM_inst|rom~12_combout\ & \raddr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~8_combout\,
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ALT_INV_raddr2~0_combout\,
	combout => \CU_inst|Mux0~0_combout\);

\RegBank_inst|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~1_combout\ = ( \CU_inst|Mux0~0_combout\ & ( (!\ROM_inst|rom~7_combout\ & (!\ROM_inst|rom~9_combout\ & (!\ROM_inst|rom~10_combout\ & !\ROM_inst|rom~13_combout\))) ) ) # ( !\CU_inst|Mux0~0_combout\ & ( (!\ROM_inst|rom~7_combout\ & 
-- !\ROM_inst|rom~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100000000000000010001000100010001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~7_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~13_combout\,
	datae => \CU_inst|ALT_INV_Mux0~0_combout\,
	combout => \RegBank_inst|Decoder0~1_combout\);

\RegBank_inst|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[3]~4_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][3]~q\);

\RegBank_inst|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~2_combout\ = ( \CU_inst|Mux0~0_combout\ & ( (\ROM_inst|rom~7_combout\ & (!\ROM_inst|rom~9_combout\ & (!\ROM_inst|rom~10_combout\ & !\ROM_inst|rom~13_combout\))) ) ) # ( !\CU_inst|Mux0~0_combout\ & ( (\ROM_inst|rom~7_combout\ & 
-- !\ROM_inst|rom~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010000000000000001000100010001000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~7_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~13_combout\,
	datae => \CU_inst|ALT_INV_Mux0~0_combout\,
	combout => \RegBank_inst|Decoder0~2_combout\);

\RegBank_inst|regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[3]~4_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][3]~q\);

\RegBank_inst|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~3_combout\ = ( \CU_inst|Mux0~0_combout\ & ( (!\ROM_inst|rom~7_combout\ & (\ROM_inst|rom~9_combout\ & (!\ROM_inst|rom~10_combout\ & !\ROM_inst|rom~13_combout\))) ) ) # ( !\CU_inst|Mux0~0_combout\ & ( (!\ROM_inst|rom~7_combout\ & 
-- \ROM_inst|rom~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000000000000000100010001000100010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~7_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~13_combout\,
	datae => \CU_inst|ALT_INV_Mux0~0_combout\,
	combout => \RegBank_inst|Decoder0~3_combout\);

\RegBank_inst|regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[3]~4_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][3]~q\);

\RegBank_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux4~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][3]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][3]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][3]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][3]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][3]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][3]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][3]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux4~0_combout\);

\MuxULA_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux6~0_combout\ = (!\PC_inst|pc_reg\(4) & !\PC_inst|pc_reg\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \PC_inst|ALT_INV_pc_reg\(5),
	combout => \MuxULA_inst|Mux6~0_combout\);

\MuxULA_inst|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux6~1_combout\ = ( \ROM_inst|rom~13_combout\ & ( (!\MuxULA_inst|Mux6~0_combout\) # ((!\ROM_inst|rom~8_combout\ & ((!\ROM_inst|rom~12_combout\))) # (\ROM_inst|rom~8_combout\ & (!\ROM_inst|rom~10_combout\))) ) ) # ( !\ROM_inst|rom~13_combout\ 
-- & ( (!\ROM_inst|rom~12_combout\) # (!\MuxULA_inst|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111110010011111111111100001111111111100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~8_combout\,
	datab => \ROM_inst|ALT_INV_rom~10_combout\,
	datac => \ROM_inst|ALT_INV_rom~12_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \MuxULA_inst|Mux6~1_combout\);

\RAM_inst|memory~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~146_q\);

\ROM_inst|rom~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~0_combout\ = (!\PC_inst|pc_reg\(2) & ((!\PC_inst|pc_reg\(3)) # ((!\PC_inst|pc_reg\(0) & \PC_inst|pc_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111100000010000011110000001000001111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~0_combout\);

\ROM_inst|rom~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~1_combout\ = ( \ROM_inst|rom~0_combout\ & ( (((\PC_inst|pc_reg\(7)) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(5))) # (\PC_inst|pc_reg\(4)) ) ) # ( !\ROM_inst|rom~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \PC_inst|ALT_INV_pc_reg\(5),
	datac => \PC_inst|ALT_INV_pc_reg\(6),
	datad => \PC_inst|ALT_INV_pc_reg\(7),
	datae => \ROM_inst|ALT_INV_rom~0_combout\,
	combout => \ROM_inst|rom~1_combout\);

\RegBank_inst|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~0_combout\ = ( \CU_inst|Mux0~0_combout\ & ( (\ROM_inst|rom~7_combout\ & (\ROM_inst|rom~9_combout\ & (!\ROM_inst|rom~10_combout\ & !\ROM_inst|rom~13_combout\))) ) ) # ( !\CU_inst|Mux0~0_combout\ & ( (\ROM_inst|rom~7_combout\ & 
-- \ROM_inst|rom~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100000000000000010001000100010001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~7_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~13_combout\,
	datae => \CU_inst|ALT_INV_Mux0~0_combout\,
	combout => \RegBank_inst|Decoder0~0_combout\);

\RegBank_inst|regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[0]~1_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][0]~q\);

\RegBank_inst|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[0]~1_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][0]~q\);

\RegBank_inst|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[0]~1_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][0]~q\);

\MuxULA_inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux15~0_combout\ = ( \RegBank_inst|regs[3][0]~q\ & ( \raddr2~1_combout\ & ( \RegBank_inst|regs[0][0]~q\ ) ) ) # ( !\RegBank_inst|regs[3][0]~q\ & ( \raddr2~1_combout\ & ( \RegBank_inst|regs[0][0]~q\ ) ) ) # ( \RegBank_inst|regs[3][0]~q\ & ( 
-- !\raddr2~1_combout\ & ( ((!\ROM_inst|rom~3_combout\ & ((\RegBank_inst|regs[0][0]~q\))) # (\ROM_inst|rom~3_combout\ & (\RegBank_inst|regs[1][0]~q\))) # (\ROM_inst|rom~5_combout\) ) ) ) # ( !\RegBank_inst|regs[3][0]~q\ & ( !\raddr2~1_combout\ & ( 
-- (!\ROM_inst|rom~5_combout\ & ((!\ROM_inst|rom~3_combout\ & ((\RegBank_inst|regs[0][0]~q\))) # (\ROM_inst|rom~3_combout\ & (\RegBank_inst|regs[1][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][0]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][0]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][0]~q\,
	dataf => \ALT_INV_raddr2~1_combout\,
	combout => \MuxULA_inst|Mux15~0_combout\);

\MuxULA_inst|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~1_combout\ = ( \ROM_inst|rom~14_combout\ & ( \raddr2~1_combout\ & ( !\MuxULA_inst|Mux13~0_combout\ ) ) ) # ( !\ROM_inst|rom~14_combout\ & ( \raddr2~1_combout\ & ( (!\ROM_inst|rom~11_combout\ & \MuxULA_inst|Mux13~0_combout\) ) ) ) # ( 
-- \ROM_inst|rom~14_combout\ & ( !\raddr2~1_combout\ & ( (!\MuxULA_inst|Mux13~0_combout\ & ((!\ROM_inst|rom~5_combout\) # (\ROM_inst|rom~3_combout\))) ) ) ) # ( !\ROM_inst|rom~14_combout\ & ( !\raddr2~1_combout\ & ( (!\ROM_inst|rom~11_combout\ & 
-- \MuxULA_inst|Mux13~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000110111010000000000000000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ROM_inst|ALT_INV_rom~11_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~14_combout\,
	dataf => \ALT_INV_raddr2~1_combout\,
	combout => \MuxULA_inst|Mux13~1_combout\);

\MuxULA_inst|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~2_combout\ = ( !\ROM_inst|rom~14_combout\ & ( \raddr2~1_combout\ & ( (!\ROM_inst|rom~11_combout\ & \MuxULA_inst|Mux13~0_combout\) ) ) ) # ( \ROM_inst|rom~14_combout\ & ( !\raddr2~1_combout\ & ( (!\ROM_inst|rom~3_combout\ & 
-- (\ROM_inst|rom~5_combout\ & !\MuxULA_inst|Mux13~0_combout\)) ) ) ) # ( !\ROM_inst|rom~14_combout\ & ( !\raddr2~1_combout\ & ( (!\ROM_inst|rom~11_combout\ & \MuxULA_inst|Mux13~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001000100000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ROM_inst|ALT_INV_rom~11_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~14_combout\,
	dataf => \ALT_INV_raddr2~1_combout\,
	combout => \MuxULA_inst|Mux13~2_combout\);

\MuxULA_inst|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux15~1_combout\ = ( \MuxULA_inst|Mux13~2_combout\ & ( (\RegBank_inst|regs[2][0]~q\ & !\MuxULA_inst|Mux13~1_combout\) ) ) # ( !\MuxULA_inst|Mux13~2_combout\ & ( (!\MuxULA_inst|Mux13~1_combout\ & (!\ROM_inst|rom~1_combout\)) # 
-- (\MuxULA_inst|Mux13~1_combout\ & ((\MuxULA_inst|Mux15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001111001100110000000010101010000011110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~1_combout\,
	datab => \RegBank_inst|ALT_INV_regs[2][0]~q\,
	datac => \MuxULA_inst|ALT_INV_Mux15~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
	datae => \MuxULA_inst|ALT_INV_Mux13~2_combout\,
	combout => \MuxULA_inst|Mux15~1_combout\);

\ALU_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~1_sumout\ = SUM(( \MuxULA_inst|Mux15~1_combout\ ) + ( (\RegBank_inst|Mux7~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( !VCC ))
-- \ALU_inst|Add0~2\ = CARRY(( \MuxULA_inst|Mux15~1_combout\ ) + ( (\RegBank_inst|Mux7~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux7~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => GND,
	sumout => \ALU_inst|Add0~1_sumout\,
	cout => \ALU_inst|Add0~2\);

\ALU_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~5_sumout\ = SUM(( \MuxULA_inst|Mux14~1_combout\ ) + ( (\RegBank_inst|Mux6~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~2\ ))
-- \ALU_inst|Add0~6\ = CARRY(( \MuxULA_inst|Mux14~1_combout\ ) + ( (\RegBank_inst|Mux6~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux6~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux14~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add0~2\,
	sumout => \ALU_inst|Add0~5_sumout\,
	cout => \ALU_inst|Add0~6\);

\ram_addr[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[1]~3_combout\ = ( \ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & \MuxULA_inst|Mux14~1_combout\)) ) ) # ( !\ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & 
-- \ALU_inst|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000001000100000001000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~14_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ALU_inst|ALT_INV_Add0~5_sumout\,
	datad => \MuxULA_inst|ALT_INV_Mux14~1_combout\,
	datae => \ALU_inst|ALT_INV_Mux5~1_combout\,
	combout => \ram_addr[1]~3_combout\);

\RAM_inst|memory~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~149_q\);

\RAM_inst|memory~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~181_q\);

\RAM_inst|memory~2148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2148_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2148_combout\);

\RAM_inst|memory~2149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2149_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2148_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2148_combout\,
	combout => \RAM_inst|memory~2149_combout\);

\RAM_inst|memory~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~213_q\);

\RAM_inst|memory~2152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2152_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2152_combout\);

\RAM_inst|memory~2153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2153_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2152_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2152_combout\,
	combout => \RAM_inst|memory~2153_combout\);

\RAM_inst|memory~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~245_q\);

\RAM_inst|memory~2101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2101_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~245_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~213_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~181_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~149_q\,
	datab => \RAM_inst|ALT_INV_memory~181_q\,
	datac => \RAM_inst|ALT_INV_memory~213_q\,
	datad => \RAM_inst|ALT_INV_memory~245_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2101_combout\);

\RAM_inst|memory~2156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2156_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2156_combout\);

\RAM_inst|memory~2157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2157_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2156_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2156_combout\,
	combout => \RAM_inst|memory~2157_combout\);

\RAM_inst|memory~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~157_q\);

\RAM_inst|memory~2160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2160_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2160_combout\);

\RAM_inst|memory~2161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2161_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2160_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2160_combout\,
	combout => \RAM_inst|memory~2161_combout\);

\RAM_inst|memory~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~189_q\);

\RAM_inst|memory~2164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2164_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2164_combout\);

\RAM_inst|memory~2165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2165_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2164_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2164_combout\,
	combout => \RAM_inst|memory~2165_combout\);

\RAM_inst|memory~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~221_q\);

\RAM_inst|memory~2168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2168_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2168_combout\);

\RAM_inst|memory~2169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2169_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2168_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2168_combout\,
	combout => \RAM_inst|memory~2169_combout\);

\RAM_inst|memory~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~253_q\);

\RAM_inst|memory~2102\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2102_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~253_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~221_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~189_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~157_q\,
	datab => \RAM_inst|ALT_INV_memory~189_q\,
	datac => \RAM_inst|ALT_INV_memory~221_q\,
	datad => \RAM_inst|ALT_INV_memory~253_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2102_combout\);

\RAM_inst|memory~2172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2172_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2172_combout\);

\RAM_inst|memory~2173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2173_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2172_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2172_combout\,
	combout => \RAM_inst|memory~2173_combout\);

\RAM_inst|memory~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~165_q\);

\RAM_inst|memory~2176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2176_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2176_combout\);

\RAM_inst|memory~2177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2177_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2176_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2176_combout\,
	combout => \RAM_inst|memory~2177_combout\);

\RAM_inst|memory~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~197_q\);

\RAM_inst|memory~2180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2180_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2180_combout\);

\RAM_inst|memory~2181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2181_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2180_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2180_combout\,
	combout => \RAM_inst|memory~2181_combout\);

\RAM_inst|memory~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~229_q\);

\RAM_inst|memory~2184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2184_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2184_combout\);

\RAM_inst|memory~2185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2185_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2184_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2184_combout\,
	combout => \RAM_inst|memory~2185_combout\);

\RAM_inst|memory~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~261_q\);

\RAM_inst|memory~2103\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2103_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~261_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~229_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~197_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~165_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~165_q\,
	datab => \RAM_inst|ALT_INV_memory~197_q\,
	datac => \RAM_inst|ALT_INV_memory~229_q\,
	datad => \RAM_inst|ALT_INV_memory~261_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2103_combout\);

\RAM_inst|memory~2188\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2188_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2188_combout\);

\RAM_inst|memory~2189\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2189_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2188_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2188_combout\,
	combout => \RAM_inst|memory~2189_combout\);

\RAM_inst|memory~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~173_q\);

\RAM_inst|memory~2190\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2190_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2190_combout\);

\RAM_inst|memory~2191\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2191_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2190_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2190_combout\,
	combout => \RAM_inst|memory~2191_combout\);

\RAM_inst|memory~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~205_q\);

\RAM_inst|memory~2192\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2192_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2192_combout\);

\RAM_inst|memory~2193\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2193_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2192_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2192_combout\,
	combout => \RAM_inst|memory~2193_combout\);

\RAM_inst|memory~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~237_q\);

\RAM_inst|memory~2194\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2194_combout\ = ( \ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2194_combout\);

\RAM_inst|memory~2195\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2195_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2194_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2194_combout\,
	combout => \RAM_inst|memory~2195_combout\);

\RAM_inst|memory~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~269_q\);

\RAM_inst|memory~2104\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2104_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~269_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~237_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~205_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~173_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~173_q\,
	datab => \RAM_inst|ALT_INV_memory~205_q\,
	datac => \RAM_inst|ALT_INV_memory~237_q\,
	datad => \RAM_inst|ALT_INV_memory~269_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2104_combout\);

\RAM_inst|memory~2105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2105_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2104_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2103_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2102_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2101_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2101_combout\,
	datab => \RAM_inst|ALT_INV_memory~2102_combout\,
	datac => \RAM_inst|ALT_INV_memory~2103_combout\,
	datad => \RAM_inst|ALT_INV_memory~2104_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2105_combout\);

\RAM_inst|memory~2142\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2142_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2142_combout\);

\RAM_inst|memory~2143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2143_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2142_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2142_combout\,
	combout => \RAM_inst|memory~2143_combout\);

\RAM_inst|memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~21_q\);

\RAM_inst|memory~2146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2146_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2146_combout\);

\RAM_inst|memory~2147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2147_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2146_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2146_combout\,
	combout => \RAM_inst|memory~2147_combout\);

\RAM_inst|memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~53_q\);

\RAM_inst|memory~2150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2150_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2150_combout\);

\RAM_inst|memory~2151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2151_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2150_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2150_combout\,
	combout => \RAM_inst|memory~2151_combout\);

\RAM_inst|memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~85_q\);

\RAM_inst|memory~2154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2154_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2154_combout\);

\RAM_inst|memory~2155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2155_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2154_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2154_combout\,
	combout => \RAM_inst|memory~2155_combout\);

\RAM_inst|memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~117_q\);

\RAM_inst|memory~2106\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2106_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~117_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~85_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~53_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~21_q\,
	datab => \RAM_inst|ALT_INV_memory~53_q\,
	datac => \RAM_inst|ALT_INV_memory~85_q\,
	datad => \RAM_inst|ALT_INV_memory~117_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2106_combout\);

\RAM_inst|memory~2158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2158_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2158_combout\);

\RAM_inst|memory~2159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2159_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2158_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2158_combout\,
	combout => \RAM_inst|memory~2159_combout\);

\RAM_inst|memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~29_q\);

\RAM_inst|memory~2162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2162_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2162_combout\);

\RAM_inst|memory~2163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2163_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2162_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2162_combout\,
	combout => \RAM_inst|memory~2163_combout\);

\RAM_inst|memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~61_q\);

\RAM_inst|memory~2166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2166_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2166_combout\);

\RAM_inst|memory~2167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2167_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2166_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2166_combout\,
	combout => \RAM_inst|memory~2167_combout\);

\RAM_inst|memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~93_q\);

\RAM_inst|memory~2170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2170_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2170_combout\);

\RAM_inst|memory~2171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2171_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2170_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2170_combout\,
	combout => \RAM_inst|memory~2171_combout\);

\RAM_inst|memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~125_q\);

\RAM_inst|memory~2107\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2107_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~125_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~93_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~61_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~29_q\,
	datab => \RAM_inst|ALT_INV_memory~61_q\,
	datac => \RAM_inst|ALT_INV_memory~93_q\,
	datad => \RAM_inst|ALT_INV_memory~125_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2107_combout\);

\RAM_inst|memory~2174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2174_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2174_combout\);

\RAM_inst|memory~2175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2175_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2174_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2174_combout\,
	combout => \RAM_inst|memory~2175_combout\);

\RAM_inst|memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~37_q\);

\RAM_inst|memory~2178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2178_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2178_combout\);

\RAM_inst|memory~2179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2179_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2178_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2178_combout\,
	combout => \RAM_inst|memory~2179_combout\);

\RAM_inst|memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~69_q\);

\RAM_inst|memory~2182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2182_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2182_combout\);

\RAM_inst|memory~2183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2183_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2182_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2182_combout\,
	combout => \RAM_inst|memory~2183_combout\);

\RAM_inst|memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~101_q\);

\RAM_inst|memory~2186\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2186_combout\ = ( !\ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2186_combout\);

\RAM_inst|memory~2187\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2187_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2186_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2186_combout\,
	combout => \RAM_inst|memory~2187_combout\);

\RAM_inst|memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~133_q\);

\RAM_inst|memory~2108\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2108_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~133_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~101_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~69_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~37_q\,
	datab => \RAM_inst|ALT_INV_memory~69_q\,
	datac => \RAM_inst|ALT_INV_memory~101_q\,
	datad => \RAM_inst|ALT_INV_memory~133_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2108_combout\);

\RAM_inst|memory~2196\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2196_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2196_combout\);

\RAM_inst|memory~2197\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2197_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2196_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2196_combout\,
	combout => \RAM_inst|memory~2197_combout\);

\RAM_inst|memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~45_q\);

\RAM_inst|memory~2198\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2198_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2198_combout\);

\RAM_inst|memory~2199\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2199_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2198_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2198_combout\,
	combout => \RAM_inst|memory~2199_combout\);

\RAM_inst|memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~77_q\);

\RAM_inst|memory~2200\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2200_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2200_combout\);

\RAM_inst|memory~2201\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2201_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2200_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2200_combout\,
	combout => \RAM_inst|memory~2201_combout\);

\RAM_inst|memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~109_q\);

\RAM_inst|memory~2202\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2202_combout\ = ( !\ram_addr[4]~0_combout\ & ( (\ram_addr[0]~4_combout\ & (\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & \ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2202_combout\);

\RAM_inst|memory~2203\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2203_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2202_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2202_combout\,
	combout => \RAM_inst|memory~2203_combout\);

\RAM_inst|memory~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~141_q\);

\RAM_inst|memory~2109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2109_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~141_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~109_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~77_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~45_q\,
	datab => \RAM_inst|ALT_INV_memory~77_q\,
	datac => \RAM_inst|ALT_INV_memory~109_q\,
	datad => \RAM_inst|ALT_INV_memory~141_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2109_combout\);

\RAM_inst|memory~2110\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2110_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2109_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2108_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2107_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2106_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2106_combout\,
	datab => \RAM_inst|ALT_INV_memory~2107_combout\,
	datac => \RAM_inst|ALT_INV_memory~2108_combout\,
	datad => \RAM_inst|ALT_INV_memory~2109_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2110_combout\);

\wdata[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[4]~5_combout\ = ( \MuxULA_inst|Mux13~0_combout\ & ( \wdata[0]~0_combout\ & ( (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2110_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2110_combout\))) # 
-- (\Equal0~0_combout\ & (\RAM_inst|memory~2105_combout\)))) ) ) ) # ( !\MuxULA_inst|Mux13~0_combout\ & ( \wdata[0]~0_combout\ & ( (\RAM_inst|memory~2110_combout\) # (\ALU_inst|Mux3~0_combout\) ) ) ) # ( !\MuxULA_inst|Mux13~0_combout\ & ( 
-- !\wdata[0]~0_combout\ & ( \ALU_inst|Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101111111110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2105_combout\,
	datad => \RAM_inst|ALT_INV_memory~2110_combout\,
	datae => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_wdata[0]~0_combout\,
	combout => \wdata[4]~5_combout\);

\RegBank_inst|regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[4]~5_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][4]~q\);

\RegBank_inst|regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[4]~5_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][4]~q\);

\RegBank_inst|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[4]~5_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][4]~q\);

\RegBank_inst|regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[4]~5_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][4]~q\);

\RegBank_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux3~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][4]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][4]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][4]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][4]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][4]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][4]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][4]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux3~0_combout\);

\MuxULA_inst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux6~2_combout\ = ( \MuxULA_inst|Mux6~0_combout\ & ( \ROM_inst|rom~13_combout\ & ( ((!\ROM_inst|rom~8_combout\ & ((!\ROM_inst|rom~12_combout\))) # (\ROM_inst|rom~8_combout\ & (!\ROM_inst|rom~10_combout\))) # (\PC_inst|pc_reg\(6)) ) ) ) # ( 
-- !\MuxULA_inst|Mux6~0_combout\ & ( \ROM_inst|rom~13_combout\ ) ) # ( \MuxULA_inst|Mux6~0_combout\ & ( !\ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~12_combout\) # (\PC_inst|pc_reg\(6)) ) ) ) # ( !\MuxULA_inst|Mux6~0_combout\ & ( !\ROM_inst|rom~13_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110101010111111111111111111111110101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(6),
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~12_combout\,
	datae => \MuxULA_inst|ALT_INV_Mux6~0_combout\,
	dataf => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \MuxULA_inst|Mux6~2_combout\);

\ALU_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~13_sumout\ = SUM(( \MuxULA_inst|Mux12~1_combout\ ) + ( (\RegBank_inst|Mux4~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~10\ ))
-- \ALU_inst|Add0~14\ = CARRY(( \MuxULA_inst|Mux12~1_combout\ ) + ( (\RegBank_inst|Mux4~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux4~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux12~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add0~10\,
	sumout => \ALU_inst|Add0~13_sumout\,
	cout => \ALU_inst|Add0~14\);

\ALU_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~17_sumout\ = SUM(( \MuxULA_inst|Mux11~2_combout\ ) + ( (\RegBank_inst|Mux3~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~14\ ))
-- \ALU_inst|Add0~18\ = CARRY(( \MuxULA_inst|Mux11~2_combout\ ) + ( (\RegBank_inst|Mux3~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datac => \RegBank_inst|ALT_INV_Mux3~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	cin => \ALU_inst|Add0~14\,
	sumout => \ALU_inst|Add0~17_sumout\,
	cout => \ALU_inst|Add0~18\);

\ram_addr[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[4]~0_combout\ = ( \ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & \MuxULA_inst|Mux11~2_combout\)) ) ) # ( !\ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & 
-- \ALU_inst|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000001000100000001000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~14_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ALU_inst|ALT_INV_Add0~17_sumout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	datae => \ALU_inst|ALT_INV_Mux5~1_combout\,
	combout => \ram_addr[4]~0_combout\);

\RAM_inst|memory~2144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2144_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2144_combout\);

\RAM_inst|memory~2145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2145_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2144_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2144_combout\,
	combout => \RAM_inst|memory~2145_combout\);

\RAM_inst|memory~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~178_q\);

\RAM_inst|memory~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~210_q\);

\RAM_inst|memory~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~242_q\);

\RAM_inst|memory~2072\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2072_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~242_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~210_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~178_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~146_q\,
	datab => \RAM_inst|ALT_INV_memory~178_q\,
	datac => \RAM_inst|ALT_INV_memory~210_q\,
	datad => \RAM_inst|ALT_INV_memory~242_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2072_combout\);

\RAM_inst|memory~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~154_q\);

\RAM_inst|memory~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~186_q\);

\RAM_inst|memory~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~218_q\);

\RAM_inst|memory~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~250_q\);

\RAM_inst|memory~2073\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2073_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~250_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~218_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~186_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~154_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~154_q\,
	datab => \RAM_inst|ALT_INV_memory~186_q\,
	datac => \RAM_inst|ALT_INV_memory~218_q\,
	datad => \RAM_inst|ALT_INV_memory~250_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2073_combout\);

\RAM_inst|memory~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~162_q\);

\RAM_inst|memory~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~194_q\);

\RAM_inst|memory~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~226_q\);

\RAM_inst|memory~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~258_q\);

\RAM_inst|memory~2074\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2074_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~258_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~226_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~194_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~162_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~162_q\,
	datab => \RAM_inst|ALT_INV_memory~194_q\,
	datac => \RAM_inst|ALT_INV_memory~226_q\,
	datad => \RAM_inst|ALT_INV_memory~258_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2074_combout\);

\RAM_inst|memory~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~170_q\);

\RAM_inst|memory~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~202_q\);

\RAM_inst|memory~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~234_q\);

\RAM_inst|memory~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~266_q\);

\RAM_inst|memory~2075\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2075_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~266_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~234_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~202_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~170_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~170_q\,
	datab => \RAM_inst|ALT_INV_memory~202_q\,
	datac => \RAM_inst|ALT_INV_memory~234_q\,
	datad => \RAM_inst|ALT_INV_memory~266_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2075_combout\);

\RAM_inst|memory~2076\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2076_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2075_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2074_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2073_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2072_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2072_combout\,
	datab => \RAM_inst|ALT_INV_memory~2073_combout\,
	datac => \RAM_inst|ALT_INV_memory~2074_combout\,
	datad => \RAM_inst|ALT_INV_memory~2075_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2076_combout\);

\RAM_inst|memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~18_q\);

\RAM_inst|memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~50_q\);

\RAM_inst|memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~82_q\);

\RAM_inst|memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~114_q\);

\RAM_inst|memory~2077\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2077_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~114_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~82_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~50_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~18_q\,
	datab => \RAM_inst|ALT_INV_memory~50_q\,
	datac => \RAM_inst|ALT_INV_memory~82_q\,
	datad => \RAM_inst|ALT_INV_memory~114_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2077_combout\);

\RAM_inst|memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~26_q\);

\RAM_inst|memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~58_q\);

\RAM_inst|memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~90_q\);

\RAM_inst|memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~122_q\);

\RAM_inst|memory~2078\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2078_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~122_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~90_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~58_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~26_q\,
	datab => \RAM_inst|ALT_INV_memory~58_q\,
	datac => \RAM_inst|ALT_INV_memory~90_q\,
	datad => \RAM_inst|ALT_INV_memory~122_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2078_combout\);

\RAM_inst|memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~34_q\);

\RAM_inst|memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~66_q\);

\RAM_inst|memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~98_q\);

\RAM_inst|memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~130_q\);

\RAM_inst|memory~2079\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2079_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~130_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~98_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~66_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~34_q\,
	datab => \RAM_inst|ALT_INV_memory~66_q\,
	datac => \RAM_inst|ALT_INV_memory~98_q\,
	datad => \RAM_inst|ALT_INV_memory~130_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2079_combout\);

\RAM_inst|memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~42_q\);

\RAM_inst|memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~74_q\);

\RAM_inst|memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~106_q\);

\RAM_inst|memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~138_q\);

\RAM_inst|memory~2080\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2080_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~138_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~106_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~74_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~42_q\,
	datab => \RAM_inst|ALT_INV_memory~74_q\,
	datac => \RAM_inst|ALT_INV_memory~106_q\,
	datad => \RAM_inst|ALT_INV_memory~138_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2080_combout\);

\RAM_inst|memory~2081\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2081_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2080_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2079_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2078_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2077_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2077_combout\,
	datab => \RAM_inst|ALT_INV_memory~2078_combout\,
	datac => \RAM_inst|ALT_INV_memory~2079_combout\,
	datad => \RAM_inst|ALT_INV_memory~2080_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2081_combout\);

\RAM_inst|memory~2082\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2082_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2081_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2081_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2076_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2076_combout\,
	datad => \RAM_inst|ALT_INV_memory~2081_combout\,
	combout => \RAM_inst|memory~2082_combout\);

\wdata[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[1]~2_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2082_combout\)) # (\ALU_inst|Mux6~0_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2082_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2082_combout\,
	combout => \wdata[1]~2_combout\);

\RegBank_inst|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[1]~2_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][1]~q\);

\RegBank_inst|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[1]~2_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][1]~q\);

\RegBank_inst|regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[1]~2_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][1]~q\);

\RegBank_inst|regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[1]~2_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][1]~q\);

\RegBank_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux6~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][1]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][1]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][1]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][1]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][1]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][1]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][1]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux6~0_combout\);

\ALU_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~9_sumout\ = SUM(( \MuxULA_inst|Mux13~4_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~6\ ))
-- \ALU_inst|Add0~10\ = CARRY(( \MuxULA_inst|Mux13~4_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux5~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~4_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add0~6\,
	sumout => \ALU_inst|Add0~9_sumout\,
	cout => \ALU_inst|Add0~10\);

\ram_addr[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[3]~1_combout\ = ( \ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & \MuxULA_inst|Mux12~1_combout\)) ) ) # ( !\ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & 
-- \ALU_inst|Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000001000100000001000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~14_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ALU_inst|ALT_INV_Add0~13_sumout\,
	datad => \MuxULA_inst|ALT_INV_Mux12~1_combout\,
	datae => \ALU_inst|ALT_INV_Mux5~1_combout\,
	combout => \ram_addr[3]~1_combout\);

\RAM_inst|memory~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~177_q\);

\RAM_inst|memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~49_q\);

\RAM_inst|memory~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~241_q\);

\RAM_inst|memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~113_q\);

\RAM_inst|memory~2228\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2228_combout\ = ( \RAM_inst|memory~241_q\ & ( \RAM_inst|memory~113_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~49_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~177_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~241_q\ & ( \RAM_inst|memory~113_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~49_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~177_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~241_q\ & ( !\RAM_inst|memory~113_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~49_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~177_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~241_q\ & ( !\RAM_inst|memory~113_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~49_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~177_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~177_q\,
	datad => \RAM_inst|ALT_INV_memory~49_q\,
	datae => \RAM_inst|ALT_INV_memory~241_q\,
	dataf => \RAM_inst|ALT_INV_memory~113_q\,
	combout => \RAM_inst|memory~2228_combout\);

\RAM_inst|memory~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~145_q\);

\RAM_inst|memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~17_q\);

\RAM_inst|memory~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~209_q\);

\RAM_inst|memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~81_q\);

\RAM_inst|memory~2229\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2229_combout\ = ( \RAM_inst|memory~209_q\ & ( \RAM_inst|memory~81_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~17_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~145_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~209_q\ & ( \RAM_inst|memory~81_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~17_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~145_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~209_q\ & ( !\RAM_inst|memory~81_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~17_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~145_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~209_q\ & ( !\RAM_inst|memory~81_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~17_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~145_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~145_q\,
	datad => \RAM_inst|ALT_INV_memory~17_q\,
	datae => \RAM_inst|ALT_INV_memory~209_q\,
	dataf => \RAM_inst|ALT_INV_memory~81_q\,
	combout => \RAM_inst|memory~2229_combout\);

\RAM_inst|memory~2230\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2230_combout\ = ( \RAM_inst|memory~81_q\ & ( \RAM_inst|memory~113_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~17_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~49_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~81_q\ & ( \RAM_inst|memory~113_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~17_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~49_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~81_q\ & ( !\RAM_inst|memory~113_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~17_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~49_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~81_q\ & ( !\RAM_inst|memory~113_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~17_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~49_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~17_q\,
	datad => \RAM_inst|ALT_INV_memory~49_q\,
	datae => \RAM_inst|ALT_INV_memory~81_q\,
	dataf => \RAM_inst|ALT_INV_memory~113_q\,
	combout => \RAM_inst|memory~2230_combout\);

\RAM_inst|memory~2065\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2065_combout\ = ( \RAM_inst|memory~2230_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2229_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2228_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2230_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2229_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2228_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2228_combout\,
	datad => \RAM_inst|ALT_INV_memory~2229_combout\,
	datae => \RAM_inst|ALT_INV_memory~2230_combout\,
	combout => \RAM_inst|memory~2065_combout\);

\RAM_inst|memory~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~185_q\);

\RAM_inst|memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~57_q\);

\RAM_inst|memory~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~249_q\);

\RAM_inst|memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~121_q\);

\RAM_inst|memory~2231\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2231_combout\ = ( \RAM_inst|memory~249_q\ & ( \RAM_inst|memory~121_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~57_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~185_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~249_q\ & ( \RAM_inst|memory~121_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~57_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~185_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~249_q\ & ( !\RAM_inst|memory~121_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~57_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~185_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~249_q\ & ( !\RAM_inst|memory~121_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~57_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~185_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~185_q\,
	datad => \RAM_inst|ALT_INV_memory~57_q\,
	datae => \RAM_inst|ALT_INV_memory~249_q\,
	dataf => \RAM_inst|ALT_INV_memory~121_q\,
	combout => \RAM_inst|memory~2231_combout\);

\RAM_inst|memory~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~153_q\);

\RAM_inst|memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~25_q\);

\RAM_inst|memory~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~217_q\);

\RAM_inst|memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~89_q\);

\RAM_inst|memory~2232\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2232_combout\ = ( \RAM_inst|memory~217_q\ & ( \RAM_inst|memory~89_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~25_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~153_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~217_q\ & ( \RAM_inst|memory~89_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~25_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~153_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~217_q\ & ( !\RAM_inst|memory~89_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~25_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~153_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~217_q\ & ( !\RAM_inst|memory~89_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~25_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~153_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~153_q\,
	datad => \RAM_inst|ALT_INV_memory~25_q\,
	datae => \RAM_inst|ALT_INV_memory~217_q\,
	dataf => \RAM_inst|ALT_INV_memory~89_q\,
	combout => \RAM_inst|memory~2232_combout\);

\RAM_inst|memory~2233\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2233_combout\ = ( \RAM_inst|memory~89_q\ & ( \RAM_inst|memory~121_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~25_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~57_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~89_q\ & ( \RAM_inst|memory~121_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~25_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~57_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~89_q\ & ( !\RAM_inst|memory~121_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~25_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~57_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~89_q\ & ( !\RAM_inst|memory~121_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~25_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~57_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~25_q\,
	datad => \RAM_inst|ALT_INV_memory~57_q\,
	datae => \RAM_inst|ALT_INV_memory~89_q\,
	dataf => \RAM_inst|ALT_INV_memory~121_q\,
	combout => \RAM_inst|memory~2233_combout\);

\RAM_inst|memory~2066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2066_combout\ = ( \RAM_inst|memory~2233_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2232_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2231_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2233_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2232_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2231_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2231_combout\,
	datad => \RAM_inst|ALT_INV_memory~2232_combout\,
	datae => \RAM_inst|ALT_INV_memory~2233_combout\,
	combout => \RAM_inst|memory~2066_combout\);

\RAM_inst|memory~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~193_q\);

\RAM_inst|memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~65_q\);

\RAM_inst|memory~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~257_q\);

\RAM_inst|memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~129_q\);

\RAM_inst|memory~2234\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2234_combout\ = ( \RAM_inst|memory~257_q\ & ( \RAM_inst|memory~129_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~65_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~193_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~257_q\ & ( \RAM_inst|memory~129_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~65_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~193_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~257_q\ & ( !\RAM_inst|memory~129_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~65_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~193_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~257_q\ & ( !\RAM_inst|memory~129_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~65_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~193_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~193_q\,
	datad => \RAM_inst|ALT_INV_memory~65_q\,
	datae => \RAM_inst|ALT_INV_memory~257_q\,
	dataf => \RAM_inst|ALT_INV_memory~129_q\,
	combout => \RAM_inst|memory~2234_combout\);

\RAM_inst|memory~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~161_q\);

\RAM_inst|memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~33_q\);

\RAM_inst|memory~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~225_q\);

\RAM_inst|memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~97_q\);

\RAM_inst|memory~2235\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2235_combout\ = ( \RAM_inst|memory~225_q\ & ( \RAM_inst|memory~97_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~33_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~161_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~225_q\ & ( \RAM_inst|memory~97_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~33_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~161_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~225_q\ & ( !\RAM_inst|memory~97_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~33_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~161_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~225_q\ & ( !\RAM_inst|memory~97_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~33_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~161_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~161_q\,
	datad => \RAM_inst|ALT_INV_memory~33_q\,
	datae => \RAM_inst|ALT_INV_memory~225_q\,
	dataf => \RAM_inst|ALT_INV_memory~97_q\,
	combout => \RAM_inst|memory~2235_combout\);

\RAM_inst|memory~2236\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2236_combout\ = ( \RAM_inst|memory~97_q\ & ( \RAM_inst|memory~129_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~33_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~65_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~97_q\ & ( \RAM_inst|memory~129_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~33_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~65_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~97_q\ & ( !\RAM_inst|memory~129_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~33_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~65_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~97_q\ & ( !\RAM_inst|memory~129_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~33_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~65_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~33_q\,
	datad => \RAM_inst|ALT_INV_memory~65_q\,
	datae => \RAM_inst|ALT_INV_memory~97_q\,
	dataf => \RAM_inst|ALT_INV_memory~129_q\,
	combout => \RAM_inst|memory~2236_combout\);

\RAM_inst|memory~2067\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2067_combout\ = ( \RAM_inst|memory~2236_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2235_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2234_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2236_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2235_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2234_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2234_combout\,
	datad => \RAM_inst|ALT_INV_memory~2235_combout\,
	datae => \RAM_inst|ALT_INV_memory~2236_combout\,
	combout => \RAM_inst|memory~2067_combout\);

\RAM_inst|memory~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~169_q\);

\RAM_inst|memory~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~201_q\);

\RAM_inst|memory~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~233_q\);

\RAM_inst|memory~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~265_q\);

\RAM_inst|memory~2068\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2068_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~265_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~233_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~201_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~169_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~169_q\,
	datab => \RAM_inst|ALT_INV_memory~201_q\,
	datac => \RAM_inst|ALT_INV_memory~233_q\,
	datad => \RAM_inst|ALT_INV_memory~265_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2068_combout\);

\RAM_inst|memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~41_q\);

\RAM_inst|memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~73_q\);

\RAM_inst|memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~105_q\);

\RAM_inst|memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~137_q\);

\RAM_inst|memory~2069\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2069_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~137_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~105_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~73_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~41_q\,
	datab => \RAM_inst|ALT_INV_memory~73_q\,
	datac => \RAM_inst|ALT_INV_memory~105_q\,
	datad => \RAM_inst|ALT_INV_memory~137_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2069_combout\);

\RAM_inst|memory~2070\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2070_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2069_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2069_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2068_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2068_combout\,
	datad => \RAM_inst|ALT_INV_memory~2069_combout\,
	combout => \RAM_inst|memory~2070_combout\);

\RAM_inst|memory~2071\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2071_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2070_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2067_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2066_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2065_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2065_combout\,
	datab => \RAM_inst|ALT_INV_memory~2066_combout\,
	datac => \RAM_inst|ALT_INV_memory~2067_combout\,
	datad => \RAM_inst|ALT_INV_memory~2070_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2071_combout\);

\wdata[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[0]~1_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\RAM_inst|memory~2071_combout\ & \wdata[0]~0_combout\)) # (\ALU_inst|Mux7~0_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\RAM_inst|memory~2071_combout\ & \wdata[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux7~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2071_combout\,
	datad => \ALT_INV_wdata[0]~0_combout\,
	combout => \wdata[0]~1_combout\);

\RegBank_inst|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[0]~1_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][0]~q\);

\RegBank_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux7~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][0]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][0]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][0]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][0]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][0]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][0]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][0]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux7~0_combout\);

\ram_addr[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[0]~4_combout\ = ( \MuxULA_inst|Mux15~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & ((\ALU_inst|Mux5~1_combout\) # (\ALU_inst|Add0~1_sumout\)))) ) ) # ( !\MuxULA_inst|Mux15~1_combout\ & ( (\ROM_inst|rom~14_combout\ 
-- & (\MuxULA_inst|Mux13~0_combout\ & (\ALU_inst|Add0~1_sumout\ & !\ALU_inst|Mux5~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010001000100000001000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~14_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ALU_inst|ALT_INV_Add0~1_sumout\,
	datad => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datae => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	combout => \ram_addr[0]~4_combout\);

\RAM_inst|memory~2140\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2140_combout\ = ( \ram_addr[4]~0_combout\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (!\ram_addr[2]~2_combout\ & !\ram_addr[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \ALT_INV_ram_addr[2]~2_combout\,
	datad => \ALT_INV_ram_addr[3]~1_combout\,
	datae => \ALT_INV_ram_addr[4]~0_combout\,
	combout => \RAM_inst|memory~2140_combout\);

\RAM_inst|memory~2141\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2141_combout\ = (\ROM_inst|rom~11_combout\ & (\Equal0~0_combout\ & \RAM_inst|memory~2140_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2140_combout\,
	combout => \RAM_inst|memory~2141_combout\);

\RAM_inst|memory~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~147_q\);

\RAM_inst|memory~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~155_q\);

\RAM_inst|memory~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~163_q\);

\RAM_inst|memory~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~171_q\);

\RAM_inst|memory~2083\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2083_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~171_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~163_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~155_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~147_q\,
	datab => \RAM_inst|ALT_INV_memory~155_q\,
	datac => \RAM_inst|ALT_INV_memory~163_q\,
	datad => \RAM_inst|ALT_INV_memory~171_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2083_combout\);

\RAM_inst|memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~19_q\);

\RAM_inst|memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~27_q\);

\RAM_inst|memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~35_q\);

\RAM_inst|memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~43_q\);

\RAM_inst|memory~2084\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2084_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~43_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~35_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~27_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~19_q\,
	datab => \RAM_inst|ALT_INV_memory~27_q\,
	datac => \RAM_inst|ALT_INV_memory~35_q\,
	datad => \RAM_inst|ALT_INV_memory~43_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2084_combout\);

\RAM_inst|memory~2085\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2085_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2084_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2084_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2083_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2083_combout\,
	datad => \RAM_inst|ALT_INV_memory~2084_combout\,
	combout => \RAM_inst|memory~2085_combout\);

\RAM_inst|memory~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~179_q\);

\RAM_inst|memory~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~187_q\);

\RAM_inst|memory~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~195_q\);

\RAM_inst|memory~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~203_q\);

\RAM_inst|memory~2086\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2086_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~203_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~195_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~187_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~179_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~179_q\,
	datab => \RAM_inst|ALT_INV_memory~187_q\,
	datac => \RAM_inst|ALT_INV_memory~195_q\,
	datad => \RAM_inst|ALT_INV_memory~203_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2086_combout\);

\RAM_inst|memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~51_q\);

\RAM_inst|memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~59_q\);

\RAM_inst|memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~67_q\);

\RAM_inst|memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~75_q\);

\RAM_inst|memory~2087\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2087_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~75_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~67_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~59_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~51_q\,
	datab => \RAM_inst|ALT_INV_memory~59_q\,
	datac => \RAM_inst|ALT_INV_memory~67_q\,
	datad => \RAM_inst|ALT_INV_memory~75_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2087_combout\);

\RAM_inst|memory~2088\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2088_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2087_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2087_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2086_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2086_combout\,
	datad => \RAM_inst|ALT_INV_memory~2087_combout\,
	combout => \RAM_inst|memory~2088_combout\);

\RAM_inst|memory~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~211_q\);

\RAM_inst|memory~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~219_q\);

\RAM_inst|memory~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~227_q\);

\RAM_inst|memory~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~235_q\);

\RAM_inst|memory~2089\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2089_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~235_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~227_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~219_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~211_q\,
	datab => \RAM_inst|ALT_INV_memory~219_q\,
	datac => \RAM_inst|ALT_INV_memory~227_q\,
	datad => \RAM_inst|ALT_INV_memory~235_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2089_combout\);

\RAM_inst|memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~83_q\);

\RAM_inst|memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~91_q\);

\RAM_inst|memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~99_q\);

\RAM_inst|memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~107_q\);

\RAM_inst|memory~2090\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2090_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~107_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~99_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~91_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~83_q\,
	datab => \RAM_inst|ALT_INV_memory~91_q\,
	datac => \RAM_inst|ALT_INV_memory~99_q\,
	datad => \RAM_inst|ALT_INV_memory~107_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2090_combout\);

\RAM_inst|memory~2091\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2091_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2090_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2090_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2089_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2089_combout\,
	datad => \RAM_inst|ALT_INV_memory~2090_combout\,
	combout => \RAM_inst|memory~2091_combout\);

\RAM_inst|memory~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~259_q\);

\RAM_inst|memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~131_q\);

\RAM_inst|memory~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~267_q\);

\RAM_inst|memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~139_q\);

\RAM_inst|memory~2225\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2225_combout\ = ( \RAM_inst|memory~267_q\ & ( \RAM_inst|memory~139_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~131_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~259_q\))) # (\ram_addr[0]~4_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~267_q\ & ( \RAM_inst|memory~139_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~131_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~259_q\)))) # (\ram_addr[0]~4_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~267_q\ & ( !\RAM_inst|memory~139_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~131_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~259_q\)))) # (\ram_addr[0]~4_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~267_q\ & ( !\RAM_inst|memory~139_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~131_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~259_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~259_q\,
	datad => \RAM_inst|ALT_INV_memory~131_q\,
	datae => \RAM_inst|ALT_INV_memory~267_q\,
	dataf => \RAM_inst|ALT_INV_memory~139_q\,
	combout => \RAM_inst|memory~2225_combout\);

\RAM_inst|memory~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~243_q\);

\RAM_inst|memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~115_q\);

\RAM_inst|memory~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~251_q\);

\RAM_inst|memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~123_q\);

\RAM_inst|memory~2226\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2226_combout\ = ( \RAM_inst|memory~251_q\ & ( \RAM_inst|memory~123_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~115_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~243_q\))) # (\ram_addr[0]~4_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~251_q\ & ( \RAM_inst|memory~123_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~115_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~243_q\)))) # (\ram_addr[0]~4_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~251_q\ & ( !\RAM_inst|memory~123_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~115_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~243_q\)))) # (\ram_addr[0]~4_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~251_q\ & ( !\RAM_inst|memory~123_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~115_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~243_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~243_q\,
	datad => \RAM_inst|ALT_INV_memory~115_q\,
	datae => \RAM_inst|ALT_INV_memory~251_q\,
	dataf => \RAM_inst|ALT_INV_memory~123_q\,
	combout => \RAM_inst|memory~2226_combout\);

\RAM_inst|memory~2227\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2227_combout\ = ( \RAM_inst|memory~131_q\ & ( \RAM_inst|memory~139_q\ & ( ((!\ram_addr[0]~4_combout\ & (\RAM_inst|memory~115_q\)) # (\ram_addr[0]~4_combout\ & ((\RAM_inst|memory~123_q\)))) # (\ram_addr[1]~3_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~131_q\ & ( \RAM_inst|memory~139_q\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\RAM_inst|memory~115_q\))) # (\ram_addr[0]~4_combout\ & (((\RAM_inst|memory~123_q\)) # (\ram_addr[1]~3_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~131_q\ & ( !\RAM_inst|memory~139_q\ & ( (!\ram_addr[0]~4_combout\ & (((\RAM_inst|memory~115_q\)) # (\ram_addr[1]~3_combout\))) # (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & ((\RAM_inst|memory~123_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~131_q\ & ( !\RAM_inst|memory~139_q\ & ( (!\ram_addr[1]~3_combout\ & ((!\ram_addr[0]~4_combout\ & (\RAM_inst|memory~115_q\)) # (\ram_addr[0]~4_combout\ & ((\RAM_inst|memory~123_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \RAM_inst|ALT_INV_memory~115_q\,
	datad => \RAM_inst|ALT_INV_memory~123_q\,
	datae => \RAM_inst|ALT_INV_memory~131_q\,
	dataf => \RAM_inst|ALT_INV_memory~139_q\,
	combout => \RAM_inst|memory~2227_combout\);

\RAM_inst|memory~2092\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2092_combout\ = ( \RAM_inst|memory~2227_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[1]~3_combout\ & ((\RAM_inst|memory~2226_combout\))) # (\ram_addr[1]~3_combout\ & (\RAM_inst|memory~2225_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2227_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[1]~3_combout\ & ((\RAM_inst|memory~2226_combout\))) # (\ram_addr[1]~3_combout\ & (\RAM_inst|memory~2225_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[1]~3_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2225_combout\,
	datad => \RAM_inst|ALT_INV_memory~2226_combout\,
	datae => \RAM_inst|ALT_INV_memory~2227_combout\,
	combout => \RAM_inst|memory~2092_combout\);

\RAM_inst|memory~2093\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2093_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2092_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2091_combout\ ) ) ) # ( \ram_addr[2]~2_combout\ & 
-- ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2088_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2085_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2085_combout\,
	datab => \RAM_inst|ALT_INV_memory~2088_combout\,
	datac => \RAM_inst|ALT_INV_memory~2091_combout\,
	datad => \RAM_inst|ALT_INV_memory~2092_combout\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2093_combout\);

\wdata[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[2]~3_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2093_combout\)) # (\ALU_inst|Mux5~2_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2093_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2093_combout\,
	combout => \wdata[2]~3_combout\);

\RegBank_inst|regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[2]~3_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][2]~q\);

\RegBank_inst|regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[2]~3_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][2]~q\);

\RegBank_inst|regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[2]~3_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][2]~q\);

\RegBank_inst|regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[2]~3_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][2]~q\);

\RegBank_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux5~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][2]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][2]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][2]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][2]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][2]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][2]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][2]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux5~0_combout\);

\ram_addr[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[2]~2_combout\ = ( \ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & \MuxULA_inst|Mux13~4_combout\)) ) ) # ( !\ALU_inst|Mux5~1_combout\ & ( (\ROM_inst|rom~14_combout\ & (\MuxULA_inst|Mux13~0_combout\ & 
-- \ALU_inst|Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000001000100000001000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~14_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ALU_inst|ALT_INV_Add0~9_sumout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~4_combout\,
	datae => \ALU_inst|ALT_INV_Mux5~1_combout\,
	combout => \ram_addr[2]~2_combout\);

\RAM_inst|memory~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~180_q\);

\RAM_inst|memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~52_q\);

\RAM_inst|memory~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~244_q\);

\RAM_inst|memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~116_q\);

\RAM_inst|memory~2216\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2216_combout\ = ( \RAM_inst|memory~244_q\ & ( \RAM_inst|memory~116_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~52_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~180_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~244_q\ & ( \RAM_inst|memory~116_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~52_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~180_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~244_q\ & ( !\RAM_inst|memory~116_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~52_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~180_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~244_q\ & ( !\RAM_inst|memory~116_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~52_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~180_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~180_q\,
	datad => \RAM_inst|ALT_INV_memory~52_q\,
	datae => \RAM_inst|ALT_INV_memory~244_q\,
	dataf => \RAM_inst|ALT_INV_memory~116_q\,
	combout => \RAM_inst|memory~2216_combout\);

\RAM_inst|memory~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~148_q\);

\RAM_inst|memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~20_q\);

\RAM_inst|memory~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~212_q\);

\RAM_inst|memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~84_q\);

\RAM_inst|memory~2217\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2217_combout\ = ( \RAM_inst|memory~212_q\ & ( \RAM_inst|memory~84_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~20_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~148_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~212_q\ & ( \RAM_inst|memory~84_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~20_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~148_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~212_q\ & ( !\RAM_inst|memory~84_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~20_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~148_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~212_q\ & ( !\RAM_inst|memory~84_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~20_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~148_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~148_q\,
	datad => \RAM_inst|ALT_INV_memory~20_q\,
	datae => \RAM_inst|ALT_INV_memory~212_q\,
	dataf => \RAM_inst|ALT_INV_memory~84_q\,
	combout => \RAM_inst|memory~2217_combout\);

\RAM_inst|memory~2218\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2218_combout\ = ( \RAM_inst|memory~84_q\ & ( \RAM_inst|memory~116_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~20_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~52_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~84_q\ & ( \RAM_inst|memory~116_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~20_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~52_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~84_q\ & ( !\RAM_inst|memory~116_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~20_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~52_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~84_q\ & ( !\RAM_inst|memory~116_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~20_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~52_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~20_q\,
	datad => \RAM_inst|ALT_INV_memory~52_q\,
	datae => \RAM_inst|ALT_INV_memory~84_q\,
	dataf => \RAM_inst|ALT_INV_memory~116_q\,
	combout => \RAM_inst|memory~2218_combout\);

\RAM_inst|memory~2094\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2094_combout\ = ( \RAM_inst|memory~2218_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2217_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2216_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2218_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2217_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2216_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2216_combout\,
	datad => \RAM_inst|ALT_INV_memory~2217_combout\,
	datae => \RAM_inst|ALT_INV_memory~2218_combout\,
	combout => \RAM_inst|memory~2094_combout\);

\RAM_inst|memory~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~188_q\);

\RAM_inst|memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~60_q\);

\RAM_inst|memory~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~252_q\);

\RAM_inst|memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~124_q\);

\RAM_inst|memory~2219\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2219_combout\ = ( \RAM_inst|memory~252_q\ & ( \RAM_inst|memory~124_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~60_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~188_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~252_q\ & ( \RAM_inst|memory~124_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~60_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~188_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~252_q\ & ( !\RAM_inst|memory~124_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~60_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~188_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~252_q\ & ( !\RAM_inst|memory~124_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~60_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~188_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~188_q\,
	datad => \RAM_inst|ALT_INV_memory~60_q\,
	datae => \RAM_inst|ALT_INV_memory~252_q\,
	dataf => \RAM_inst|ALT_INV_memory~124_q\,
	combout => \RAM_inst|memory~2219_combout\);

\RAM_inst|memory~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~156_q\);

\RAM_inst|memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~28_q\);

\RAM_inst|memory~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~220_q\);

\RAM_inst|memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~92_q\);

\RAM_inst|memory~2220\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2220_combout\ = ( \RAM_inst|memory~220_q\ & ( \RAM_inst|memory~92_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~28_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~156_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~220_q\ & ( \RAM_inst|memory~92_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~28_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~156_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~220_q\ & ( !\RAM_inst|memory~92_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~28_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~156_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~220_q\ & ( !\RAM_inst|memory~92_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~28_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~156_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~156_q\,
	datad => \RAM_inst|ALT_INV_memory~28_q\,
	datae => \RAM_inst|ALT_INV_memory~220_q\,
	dataf => \RAM_inst|ALT_INV_memory~92_q\,
	combout => \RAM_inst|memory~2220_combout\);

\RAM_inst|memory~2221\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2221_combout\ = ( \RAM_inst|memory~92_q\ & ( \RAM_inst|memory~124_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~28_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~60_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~92_q\ & ( \RAM_inst|memory~124_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~28_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~60_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~92_q\ & ( !\RAM_inst|memory~124_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~28_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~60_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~92_q\ & ( !\RAM_inst|memory~124_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~28_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~60_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~28_q\,
	datad => \RAM_inst|ALT_INV_memory~60_q\,
	datae => \RAM_inst|ALT_INV_memory~92_q\,
	dataf => \RAM_inst|ALT_INV_memory~124_q\,
	combout => \RAM_inst|memory~2221_combout\);

\RAM_inst|memory~2095\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2095_combout\ = ( \RAM_inst|memory~2221_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2220_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2219_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2221_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2220_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2219_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2219_combout\,
	datad => \RAM_inst|ALT_INV_memory~2220_combout\,
	datae => \RAM_inst|ALT_INV_memory~2221_combout\,
	combout => \RAM_inst|memory~2095_combout\);

\RAM_inst|memory~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~196_q\);

\RAM_inst|memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~68_q\);

\RAM_inst|memory~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~260_q\);

\RAM_inst|memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~132_q\);

\RAM_inst|memory~2222\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2222_combout\ = ( \RAM_inst|memory~260_q\ & ( \RAM_inst|memory~132_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~68_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~196_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~260_q\ & ( \RAM_inst|memory~132_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~68_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~196_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~260_q\ & ( !\RAM_inst|memory~132_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~68_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~196_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~260_q\ & ( !\RAM_inst|memory~132_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~68_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~196_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~196_q\,
	datad => \RAM_inst|ALT_INV_memory~68_q\,
	datae => \RAM_inst|ALT_INV_memory~260_q\,
	dataf => \RAM_inst|ALT_INV_memory~132_q\,
	combout => \RAM_inst|memory~2222_combout\);

\RAM_inst|memory~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~164_q\);

\RAM_inst|memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~36_q\);

\RAM_inst|memory~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~228_q\);

\RAM_inst|memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~100_q\);

\RAM_inst|memory~2223\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2223_combout\ = ( \RAM_inst|memory~228_q\ & ( \RAM_inst|memory~100_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~36_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~164_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~228_q\ & ( \RAM_inst|memory~100_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~36_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~164_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~228_q\ & ( !\RAM_inst|memory~100_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~36_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~164_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~228_q\ & ( !\RAM_inst|memory~100_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~36_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~164_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~164_q\,
	datad => \RAM_inst|ALT_INV_memory~36_q\,
	datae => \RAM_inst|ALT_INV_memory~228_q\,
	dataf => \RAM_inst|ALT_INV_memory~100_q\,
	combout => \RAM_inst|memory~2223_combout\);

\RAM_inst|memory~2224\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2224_combout\ = ( \RAM_inst|memory~100_q\ & ( \RAM_inst|memory~132_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~36_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~68_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~100_q\ & ( \RAM_inst|memory~132_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~36_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~68_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~100_q\ & ( !\RAM_inst|memory~132_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~36_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~68_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~100_q\ & ( !\RAM_inst|memory~132_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~36_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~68_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~36_q\,
	datad => \RAM_inst|ALT_INV_memory~68_q\,
	datae => \RAM_inst|ALT_INV_memory~100_q\,
	dataf => \RAM_inst|ALT_INV_memory~132_q\,
	combout => \RAM_inst|memory~2224_combout\);

\RAM_inst|memory~2096\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2096_combout\ = ( \RAM_inst|memory~2224_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2223_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2222_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2224_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2223_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2222_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2222_combout\,
	datad => \RAM_inst|ALT_INV_memory~2223_combout\,
	datae => \RAM_inst|ALT_INV_memory~2224_combout\,
	combout => \RAM_inst|memory~2096_combout\);

\RAM_inst|memory~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~172_q\);

\RAM_inst|memory~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~204_q\);

\RAM_inst|memory~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~236_q\);

\RAM_inst|memory~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~268_q\);

\RAM_inst|memory~2097\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2097_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~268_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~236_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~204_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~172_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~172_q\,
	datab => \RAM_inst|ALT_INV_memory~204_q\,
	datac => \RAM_inst|ALT_INV_memory~236_q\,
	datad => \RAM_inst|ALT_INV_memory~268_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2097_combout\);

\RAM_inst|memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~44_q\);

\RAM_inst|memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~76_q\);

\RAM_inst|memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~108_q\);

\RAM_inst|memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~140_q\);

\RAM_inst|memory~2098\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2098_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~140_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~108_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~76_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~44_q\,
	datab => \RAM_inst|ALT_INV_memory~76_q\,
	datac => \RAM_inst|ALT_INV_memory~108_q\,
	datad => \RAM_inst|ALT_INV_memory~140_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2098_combout\);

\RAM_inst|memory~2099\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2099_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2098_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2098_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2097_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2097_combout\,
	datad => \RAM_inst|ALT_INV_memory~2098_combout\,
	combout => \RAM_inst|memory~2099_combout\);

\RAM_inst|memory~2100\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2100_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2099_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2096_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2095_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2094_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2094_combout\,
	datab => \RAM_inst|ALT_INV_memory~2095_combout\,
	datac => \RAM_inst|ALT_INV_memory~2096_combout\,
	datad => \RAM_inst|ALT_INV_memory~2099_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2100_combout\);

\wdata[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[3]~4_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2100_combout\)) # (\ALU_inst|Mux4~0_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2100_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2100_combout\,
	combout => \wdata[3]~4_combout\);

\RegBank_inst|regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[3]~4_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][3]~q\);

\MuxULA_inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux12~0_combout\ = ( \RegBank_inst|regs[0][3]~q\ & ( \RegBank_inst|regs[3][3]~q\ & ( (!\ROM_inst|rom~3_combout\) # (((\RegBank_inst|regs[1][3]~q\) # (\raddr2~1_combout\)) # (\ROM_inst|rom~5_combout\)) ) ) ) # ( !\RegBank_inst|regs[0][3]~q\ & 
-- ( \RegBank_inst|regs[3][3]~q\ & ( (!\raddr2~1_combout\ & (((\ROM_inst|rom~3_combout\ & \RegBank_inst|regs[1][3]~q\)) # (\ROM_inst|rom~5_combout\))) ) ) ) # ( \RegBank_inst|regs[0][3]~q\ & ( !\RegBank_inst|regs[3][3]~q\ & ( ((!\ROM_inst|rom~5_combout\ & 
-- ((!\ROM_inst|rom~3_combout\) # (\RegBank_inst|regs[1][3]~q\)))) # (\raddr2~1_combout\) ) ) ) # ( !\RegBank_inst|regs[0][3]~q\ & ( !\RegBank_inst|regs[3][3]~q\ & ( (\ROM_inst|rom~3_combout\ & (!\ROM_inst|rom~5_combout\ & (!\raddr2~1_combout\ & 
-- \RegBank_inst|regs[1][3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100011111100111100110000011100001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ALT_INV_raddr2~1_combout\,
	datad => \RegBank_inst|ALT_INV_regs[1][3]~q\,
	datae => \RegBank_inst|ALT_INV_regs[0][3]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[3][3]~q\,
	combout => \MuxULA_inst|Mux12~0_combout\);

\MuxULA_inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux11~0_combout\ = ( \raddr2~0_combout\ & ( \ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~8_combout\ & (!\PC_inst|pc_reg\(7) & ((\ROM_inst|rom~12_combout\)))) # (\ROM_inst|rom~8_combout\ & (((!\ROM_inst|rom~10_combout\) # 
-- (!\ROM_inst|rom~12_combout\)))) ) ) ) # ( !\raddr2~0_combout\ & ( \ROM_inst|rom~13_combout\ & ( \ROM_inst|rom~8_combout\ ) ) ) # ( \raddr2~0_combout\ & ( !\ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(7) & \ROM_inst|rom~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000110011001100110011001110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~12_combout\,
	datae => \ALT_INV_raddr2~0_combout\,
	dataf => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \MuxULA_inst|Mux11~0_combout\);

\MuxULA_inst|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux12~1_combout\ = ( \MuxULA_inst|Mux12~0_combout\ & ( !\MuxULA_inst|Mux11~0_combout\ & ( (!\MuxULA_inst|Mux8~0_combout\ & ((!\ROM_inst|rom~7_combout\) # ((\ROM_inst|rom~14_combout\)))) # (\MuxULA_inst|Mux8~0_combout\ & 
-- (((\RegBank_inst|regs[2][3]~q\)))) ) ) ) # ( !\MuxULA_inst|Mux12~0_combout\ & ( !\MuxULA_inst|Mux11~0_combout\ & ( (!\MuxULA_inst|Mux8~0_combout\ & (!\ROM_inst|rom~7_combout\ & (!\ROM_inst|rom~14_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & 
-- (((\RegBank_inst|regs[2][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001111101100001011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~7_combout\,
	datab => \ROM_inst|ALT_INV_rom~14_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datad => \RegBank_inst|ALT_INV_regs[2][3]~q\,
	datae => \MuxULA_inst|ALT_INV_Mux12~0_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux11~0_combout\,
	combout => \MuxULA_inst|Mux12~1_combout\);

\ALU_inst|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ALU_inst|Add1~34_cout\);

\ALU_inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~1_sumout\ = SUM(( !\MuxULA_inst|Mux15~1_combout\ ) + ( (\RegBank_inst|Mux7~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~34_cout\ ))
-- \ALU_inst|Add1~2\ = CARRY(( !\MuxULA_inst|Mux15~1_combout\ ) + ( (\RegBank_inst|Mux7~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux7~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add1~34_cout\,
	sumout => \ALU_inst|Add1~1_sumout\,
	cout => \ALU_inst|Add1~2\);

\ALU_inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~5_sumout\ = SUM(( !\MuxULA_inst|Mux14~1_combout\ ) + ( (\RegBank_inst|Mux6~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~2\ ))
-- \ALU_inst|Add1~6\ = CARRY(( !\MuxULA_inst|Mux14~1_combout\ ) + ( (\RegBank_inst|Mux6~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux6~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux14~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add1~2\,
	sumout => \ALU_inst|Add1~5_sumout\,
	cout => \ALU_inst|Add1~6\);

\ALU_inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~9_sumout\ = SUM(( !\MuxULA_inst|Mux13~4_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~6\ ))
-- \ALU_inst|Add1~10\ = CARRY(( !\MuxULA_inst|Mux13~4_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux5~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~4_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add1~6\,
	sumout => \ALU_inst|Add1~9_sumout\,
	cout => \ALU_inst|Add1~10\);

\ALU_inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~13_sumout\ = SUM(( !\MuxULA_inst|Mux12~1_combout\ ) + ( (\RegBank_inst|Mux4~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~10\ ))
-- \ALU_inst|Add1~14\ = CARRY(( !\MuxULA_inst|Mux12~1_combout\ ) + ( (\RegBank_inst|Mux4~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux4~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux12~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add1~10\,
	sumout => \ALU_inst|Add1~13_sumout\,
	cout => \ALU_inst|Add1~14\);

\ALU_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux4~0_combout\ = ( \ALU_inst|Add0~13_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((\MuxULA_inst|Mux12~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~13_sumout\)))) ) ) # ( 
-- !\ALU_inst|Add0~13_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & (\MuxULA_inst|Mux12~1_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111100010101101111100000010010101111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux12~1_combout\,
	datad => \ALU_inst|ALT_INV_Add1~13_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~13_sumout\,
	combout => \ALU_inst|Mux4~0_combout\);

\RAM_inst|memory~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~150_q\);

\RAM_inst|memory~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~158_q\);

\RAM_inst|memory~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~166_q\);

\RAM_inst|memory~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~174_q\);

\RAM_inst|memory~2111\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2111_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~174_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~166_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~158_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~150_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~150_q\,
	datab => \RAM_inst|ALT_INV_memory~158_q\,
	datac => \RAM_inst|ALT_INV_memory~166_q\,
	datad => \RAM_inst|ALT_INV_memory~174_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2111_combout\);

\RAM_inst|memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~22_q\);

\RAM_inst|memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~30_q\);

\RAM_inst|memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~38_q\);

\RAM_inst|memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~46_q\);

\RAM_inst|memory~2112\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2112_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~46_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~38_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~30_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~22_q\,
	datab => \RAM_inst|ALT_INV_memory~30_q\,
	datac => \RAM_inst|ALT_INV_memory~38_q\,
	datad => \RAM_inst|ALT_INV_memory~46_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2112_combout\);

\RAM_inst|memory~2113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2113_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2112_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2112_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2111_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2111_combout\,
	datad => \RAM_inst|ALT_INV_memory~2112_combout\,
	combout => \RAM_inst|memory~2113_combout\);

\RAM_inst|memory~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~182_q\);

\RAM_inst|memory~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~190_q\);

\RAM_inst|memory~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~198_q\);

\RAM_inst|memory~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~206_q\);

\RAM_inst|memory~2114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2114_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~206_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~198_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~190_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~182_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~182_q\,
	datab => \RAM_inst|ALT_INV_memory~190_q\,
	datac => \RAM_inst|ALT_INV_memory~198_q\,
	datad => \RAM_inst|ALT_INV_memory~206_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2114_combout\);

\RAM_inst|memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~54_q\);

\RAM_inst|memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~62_q\);

\RAM_inst|memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~70_q\);

\RAM_inst|memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~78_q\);

\RAM_inst|memory~2115\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2115_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~78_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~70_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~62_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~54_q\,
	datab => \RAM_inst|ALT_INV_memory~62_q\,
	datac => \RAM_inst|ALT_INV_memory~70_q\,
	datad => \RAM_inst|ALT_INV_memory~78_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2115_combout\);

\RAM_inst|memory~2116\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2116_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2115_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2115_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2114_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2114_combout\,
	datad => \RAM_inst|ALT_INV_memory~2115_combout\,
	combout => \RAM_inst|memory~2116_combout\);

\RAM_inst|memory~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~214_q\);

\RAM_inst|memory~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~222_q\);

\RAM_inst|memory~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~230_q\);

\RAM_inst|memory~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~238_q\);

\RAM_inst|memory~2117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2117_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~238_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~230_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~222_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~214_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~214_q\,
	datab => \RAM_inst|ALT_INV_memory~222_q\,
	datac => \RAM_inst|ALT_INV_memory~230_q\,
	datad => \RAM_inst|ALT_INV_memory~238_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2117_combout\);

\RAM_inst|memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~86_q\);

\RAM_inst|memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~94_q\);

\RAM_inst|memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~102_q\);

\RAM_inst|memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~110_q\);

\RAM_inst|memory~2118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2118_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~110_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~102_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~94_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~86_q\,
	datab => \RAM_inst|ALT_INV_memory~94_q\,
	datac => \RAM_inst|ALT_INV_memory~102_q\,
	datad => \RAM_inst|ALT_INV_memory~110_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2118_combout\);

\RAM_inst|memory~2119\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2119_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2118_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2118_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2117_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2117_combout\,
	datad => \RAM_inst|ALT_INV_memory~2118_combout\,
	combout => \RAM_inst|memory~2119_combout\);

\RAM_inst|memory~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~262_q\);

\RAM_inst|memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~134_q\);

\RAM_inst|memory~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~270_q\);

\RAM_inst|memory~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~142_q\);

\RAM_inst|memory~2213\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2213_combout\ = ( \RAM_inst|memory~270_q\ & ( \RAM_inst|memory~142_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~134_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~262_q\))) # (\ram_addr[0]~4_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~270_q\ & ( \RAM_inst|memory~142_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~134_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~262_q\)))) # (\ram_addr[0]~4_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~270_q\ & ( !\RAM_inst|memory~142_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~134_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~262_q\)))) # (\ram_addr[0]~4_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~270_q\ & ( !\RAM_inst|memory~142_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~134_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~262_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~262_q\,
	datad => \RAM_inst|ALT_INV_memory~134_q\,
	datae => \RAM_inst|ALT_INV_memory~270_q\,
	dataf => \RAM_inst|ALT_INV_memory~142_q\,
	combout => \RAM_inst|memory~2213_combout\);

\RAM_inst|memory~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~246_q\);

\RAM_inst|memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~118_q\);

\RAM_inst|memory~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~254_q\);

\RAM_inst|memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~126_q\);

\RAM_inst|memory~2214\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2214_combout\ = ( \RAM_inst|memory~254_q\ & ( \RAM_inst|memory~126_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~118_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~246_q\))) # (\ram_addr[0]~4_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~254_q\ & ( \RAM_inst|memory~126_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~118_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~246_q\)))) # (\ram_addr[0]~4_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~254_q\ & ( !\RAM_inst|memory~126_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~118_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~246_q\)))) # (\ram_addr[0]~4_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~254_q\ & ( !\RAM_inst|memory~126_q\ & ( (!\ram_addr[0]~4_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~118_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~246_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~246_q\,
	datad => \RAM_inst|ALT_INV_memory~118_q\,
	datae => \RAM_inst|ALT_INV_memory~254_q\,
	dataf => \RAM_inst|ALT_INV_memory~126_q\,
	combout => \RAM_inst|memory~2214_combout\);

\RAM_inst|memory~2215\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2215_combout\ = ( \RAM_inst|memory~134_q\ & ( \RAM_inst|memory~142_q\ & ( ((!\ram_addr[0]~4_combout\ & (\RAM_inst|memory~118_q\)) # (\ram_addr[0]~4_combout\ & ((\RAM_inst|memory~126_q\)))) # (\ram_addr[1]~3_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~134_q\ & ( \RAM_inst|memory~142_q\ & ( (!\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & (\RAM_inst|memory~118_q\))) # (\ram_addr[0]~4_combout\ & (((\RAM_inst|memory~126_q\)) # (\ram_addr[1]~3_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~134_q\ & ( !\RAM_inst|memory~142_q\ & ( (!\ram_addr[0]~4_combout\ & (((\RAM_inst|memory~118_q\)) # (\ram_addr[1]~3_combout\))) # (\ram_addr[0]~4_combout\ & (!\ram_addr[1]~3_combout\ & ((\RAM_inst|memory~126_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~134_q\ & ( !\RAM_inst|memory~142_q\ & ( (!\ram_addr[1]~3_combout\ & ((!\ram_addr[0]~4_combout\ & (\RAM_inst|memory~118_q\)) # (\ram_addr[0]~4_combout\ & ((\RAM_inst|memory~126_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~4_combout\,
	datab => \ALT_INV_ram_addr[1]~3_combout\,
	datac => \RAM_inst|ALT_INV_memory~118_q\,
	datad => \RAM_inst|ALT_INV_memory~126_q\,
	datae => \RAM_inst|ALT_INV_memory~134_q\,
	dataf => \RAM_inst|ALT_INV_memory~142_q\,
	combout => \RAM_inst|memory~2215_combout\);

\RAM_inst|memory~2120\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2120_combout\ = ( \RAM_inst|memory~2215_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[1]~3_combout\ & ((\RAM_inst|memory~2214_combout\))) # (\ram_addr[1]~3_combout\ & (\RAM_inst|memory~2213_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2215_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[1]~3_combout\ & ((\RAM_inst|memory~2214_combout\))) # (\ram_addr[1]~3_combout\ & (\RAM_inst|memory~2213_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[1]~3_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2213_combout\,
	datad => \RAM_inst|ALT_INV_memory~2214_combout\,
	datae => \RAM_inst|ALT_INV_memory~2215_combout\,
	combout => \RAM_inst|memory~2120_combout\);

\RAM_inst|memory~2121\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2121_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2120_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2119_combout\ ) ) ) # ( \ram_addr[2]~2_combout\ & 
-- ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2116_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2113_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2113_combout\,
	datab => \RAM_inst|ALT_INV_memory~2116_combout\,
	datac => \RAM_inst|ALT_INV_memory~2119_combout\,
	datad => \RAM_inst|ALT_INV_memory~2120_combout\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2121_combout\);

\wdata[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[5]~6_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2121_combout\)) # (\ALU_inst|Mux2~0_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2121_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2121_combout\,
	combout => \wdata[5]~6_combout\);

\RegBank_inst|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[5]~6_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][5]~q\);

\RegBank_inst|regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[5]~6_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][5]~q\);

\RegBank_inst|regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[5]~6_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][5]~q\);

\RegBank_inst|regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[5]~6_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][5]~q\);

\RegBank_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux2~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][5]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][5]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][5]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][5]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][5]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][5]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][5]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux2~0_combout\);

\raddr2[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2[1]~3_combout\ = (\ROM_inst|rom~5_combout\ & !\raddr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~5_combout\,
	datab => \ALT_INV_raddr2~1_combout\,
	combout => \raddr2[1]~3_combout\);

\raddr2[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2[0]~4_combout\ = (\ROM_inst|rom~3_combout\ & !\raddr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ALT_INV_raddr2~1_combout\,
	combout => \raddr2[0]~4_combout\);

\MuxULA_inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux10~0_combout\ = ( \RegBank_inst|regs[3][5]~q\ & ( \RegBank_inst|regs[2][5]~q\ & ( ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][5]~q\))) # (\raddr2[1]~3_combout\) ) ) ) # ( 
-- !\RegBank_inst|regs[3][5]~q\ & ( \RegBank_inst|regs[2][5]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][5]~q\)))) # (\raddr2[1]~3_combout\ & 
-- (!\raddr2[0]~4_combout\)) ) ) ) # ( \RegBank_inst|regs[3][5]~q\ & ( !\RegBank_inst|regs[2][5]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][5]~q\)))) # 
-- (\raddr2[1]~3_combout\ & (\raddr2[0]~4_combout\)) ) ) ) # ( !\RegBank_inst|regs[3][5]~q\ & ( !\RegBank_inst|regs[2][5]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~4_combout\ & 
-- (\RegBank_inst|regs[1][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~3_combout\,
	datab => \ALT_INV_raddr2[0]~4_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][5]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][5]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][5]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[2][5]~q\,
	combout => \MuxULA_inst|Mux10~0_combout\);

\ALU_inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~17_sumout\ = SUM(( !\MuxULA_inst|Mux11~2_combout\ ) + ( (\RegBank_inst|Mux3~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~14\ ))
-- \ALU_inst|Add1~18\ = CARRY(( !\MuxULA_inst|Mux11~2_combout\ ) + ( (\RegBank_inst|Mux3~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux3~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add1~14\,
	sumout => \ALU_inst|Add1~17_sumout\,
	cout => \ALU_inst|Add1~18\);

\ALU_inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~21_sumout\ = SUM(( (\RegBank_inst|Mux2~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux10~0_combout\) # ((!\PC_inst|pc_reg\(7) & \raddr2~2_combout\)) ) + ( \ALU_inst|Add1~18\ ))
-- \ALU_inst|Add1~22\ = CARRY(( (\RegBank_inst|Mux2~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux10~0_combout\) # ((!\PC_inst|pc_reg\(7) & \raddr2~2_combout\)) ) + ( \ALU_inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101110100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ALT_INV_raddr2~2_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	datad => \RegBank_inst|ALT_INV_Mux2~0_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux10~0_combout\,
	cin => \ALU_inst|Add1~18\,
	sumout => \ALU_inst|Add1~21_sumout\,
	cout => \ALU_inst|Add1~22\);

\ALU_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~21_sumout\ = SUM(( (\RegBank_inst|Mux2~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux10~0_combout\ & ((!\raddr2~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~18\ ))
-- \ALU_inst|Add0~22\ = CARRY(( (\RegBank_inst|Mux2~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux10~0_combout\ & ((!\raddr2~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \RegBank_inst|ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_raddr2~2_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux10~0_combout\,
	cin => \ALU_inst|Add0~18\,
	sumout => \ALU_inst|Add0~21_sumout\,
	cout => \ALU_inst|Add0~22\);

\ALU_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux2~0_combout\ = (!\ALU_inst|Mux5~0_combout\ & (!\ALU_inst|Mux5~1_combout\ & ((\ALU_inst|Add0~21_sumout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~21_sumout\,
	datad => \ALU_inst|ALT_INV_Add0~21_sumout\,
	combout => \ALU_inst|Mux2~0_combout\);

\RAM_inst|memory~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~183_q\);

\RAM_inst|memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~55_q\);

\RAM_inst|memory~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~247_q\);

\RAM_inst|memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~119_q\);

\RAM_inst|memory~2204\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2204_combout\ = ( \RAM_inst|memory~247_q\ & ( \RAM_inst|memory~119_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~55_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~183_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~247_q\ & ( \RAM_inst|memory~119_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~55_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~183_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~247_q\ & ( !\RAM_inst|memory~119_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~55_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~183_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~247_q\ & ( !\RAM_inst|memory~119_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~55_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~183_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~183_q\,
	datad => \RAM_inst|ALT_INV_memory~55_q\,
	datae => \RAM_inst|ALT_INV_memory~247_q\,
	dataf => \RAM_inst|ALT_INV_memory~119_q\,
	combout => \RAM_inst|memory~2204_combout\);

\RAM_inst|memory~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~151_q\);

\RAM_inst|memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~23_q\);

\RAM_inst|memory~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~215_q\);

\RAM_inst|memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~87_q\);

\RAM_inst|memory~2205\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2205_combout\ = ( \RAM_inst|memory~215_q\ & ( \RAM_inst|memory~87_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~23_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~151_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~215_q\ & ( \RAM_inst|memory~87_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~23_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~151_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~215_q\ & ( !\RAM_inst|memory~87_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~23_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~151_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~215_q\ & ( !\RAM_inst|memory~87_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~23_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~151_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~151_q\,
	datad => \RAM_inst|ALT_INV_memory~23_q\,
	datae => \RAM_inst|ALT_INV_memory~215_q\,
	dataf => \RAM_inst|ALT_INV_memory~87_q\,
	combout => \RAM_inst|memory~2205_combout\);

\RAM_inst|memory~2206\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2206_combout\ = ( \RAM_inst|memory~87_q\ & ( \RAM_inst|memory~119_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~23_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~55_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~87_q\ & ( \RAM_inst|memory~119_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~23_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~55_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~87_q\ & ( !\RAM_inst|memory~119_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~23_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~55_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~87_q\ & ( !\RAM_inst|memory~119_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~23_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~55_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~23_q\,
	datad => \RAM_inst|ALT_INV_memory~55_q\,
	datae => \RAM_inst|ALT_INV_memory~87_q\,
	dataf => \RAM_inst|ALT_INV_memory~119_q\,
	combout => \RAM_inst|memory~2206_combout\);

\RAM_inst|memory~2122\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2122_combout\ = ( \RAM_inst|memory~2206_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2205_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2204_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2206_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2205_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2204_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2204_combout\,
	datad => \RAM_inst|ALT_INV_memory~2205_combout\,
	datae => \RAM_inst|ALT_INV_memory~2206_combout\,
	combout => \RAM_inst|memory~2122_combout\);

\RAM_inst|memory~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~191_q\);

\RAM_inst|memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~63_q\);

\RAM_inst|memory~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~255_q\);

\RAM_inst|memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~127_q\);

\RAM_inst|memory~2207\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2207_combout\ = ( \RAM_inst|memory~255_q\ & ( \RAM_inst|memory~127_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~63_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~191_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~255_q\ & ( \RAM_inst|memory~127_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~63_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~191_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~255_q\ & ( !\RAM_inst|memory~127_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~63_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~191_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~255_q\ & ( !\RAM_inst|memory~127_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~63_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~191_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~191_q\,
	datad => \RAM_inst|ALT_INV_memory~63_q\,
	datae => \RAM_inst|ALT_INV_memory~255_q\,
	dataf => \RAM_inst|ALT_INV_memory~127_q\,
	combout => \RAM_inst|memory~2207_combout\);

\RAM_inst|memory~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~159_q\);

\RAM_inst|memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~31_q\);

\RAM_inst|memory~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~223_q\);

\RAM_inst|memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~95_q\);

\RAM_inst|memory~2208\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2208_combout\ = ( \RAM_inst|memory~223_q\ & ( \RAM_inst|memory~95_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~31_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~159_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~223_q\ & ( \RAM_inst|memory~95_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~31_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~159_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~223_q\ & ( !\RAM_inst|memory~95_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~31_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~159_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~223_q\ & ( !\RAM_inst|memory~95_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~31_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~159_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~159_q\,
	datad => \RAM_inst|ALT_INV_memory~31_q\,
	datae => \RAM_inst|ALT_INV_memory~223_q\,
	dataf => \RAM_inst|ALT_INV_memory~95_q\,
	combout => \RAM_inst|memory~2208_combout\);

\RAM_inst|memory~2209\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2209_combout\ = ( \RAM_inst|memory~95_q\ & ( \RAM_inst|memory~127_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~31_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~63_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~95_q\ & ( \RAM_inst|memory~127_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~31_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~63_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~95_q\ & ( !\RAM_inst|memory~127_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~31_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~63_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~95_q\ & ( !\RAM_inst|memory~127_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~31_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~63_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~31_q\,
	datad => \RAM_inst|ALT_INV_memory~63_q\,
	datae => \RAM_inst|ALT_INV_memory~95_q\,
	dataf => \RAM_inst|ALT_INV_memory~127_q\,
	combout => \RAM_inst|memory~2209_combout\);

\RAM_inst|memory~2123\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2123_combout\ = ( \RAM_inst|memory~2209_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2208_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2207_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2209_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2208_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2207_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2207_combout\,
	datad => \RAM_inst|ALT_INV_memory~2208_combout\,
	datae => \RAM_inst|ALT_INV_memory~2209_combout\,
	combout => \RAM_inst|memory~2123_combout\);

\RAM_inst|memory~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~199_q\);

\RAM_inst|memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~71_q\);

\RAM_inst|memory~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~263_q\);

\RAM_inst|memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~135_q\);

\RAM_inst|memory~2210\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2210_combout\ = ( \RAM_inst|memory~263_q\ & ( \RAM_inst|memory~135_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~71_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~199_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~263_q\ & ( \RAM_inst|memory~135_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~71_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~199_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~263_q\ & ( !\RAM_inst|memory~135_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~71_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~199_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~263_q\ & ( !\RAM_inst|memory~135_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~71_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~199_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~199_q\,
	datad => \RAM_inst|ALT_INV_memory~71_q\,
	datae => \RAM_inst|ALT_INV_memory~263_q\,
	dataf => \RAM_inst|ALT_INV_memory~135_q\,
	combout => \RAM_inst|memory~2210_combout\);

\RAM_inst|memory~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~167_q\);

\RAM_inst|memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~39_q\);

\RAM_inst|memory~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~231_q\);

\RAM_inst|memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~103_q\);

\RAM_inst|memory~2211\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2211_combout\ = ( \RAM_inst|memory~231_q\ & ( \RAM_inst|memory~103_q\ & ( ((!\Equal0~0_combout\ & ((\RAM_inst|memory~39_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~167_q\))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~231_q\ & ( \RAM_inst|memory~103_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~39_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~167_q\)))) # (\ram_addr[3]~1_combout\ & (!\Equal0~0_combout\)) ) ) ) # ( 
-- \RAM_inst|memory~231_q\ & ( !\RAM_inst|memory~103_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~39_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~167_q\)))) # (\ram_addr[3]~1_combout\ & (\Equal0~0_combout\)) ) ) ) # ( 
-- !\RAM_inst|memory~231_q\ & ( !\RAM_inst|memory~103_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~39_q\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~167_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[3]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~167_q\,
	datad => \RAM_inst|ALT_INV_memory~39_q\,
	datae => \RAM_inst|ALT_INV_memory~231_q\,
	dataf => \RAM_inst|ALT_INV_memory~103_q\,
	combout => \RAM_inst|memory~2211_combout\);

\RAM_inst|memory~2212\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2212_combout\ = ( \RAM_inst|memory~103_q\ & ( \RAM_inst|memory~135_q\ & ( ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~39_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~71_q\)))) # (\ram_addr[3]~1_combout\) ) ) ) # ( 
-- !\RAM_inst|memory~103_q\ & ( \RAM_inst|memory~135_q\ & ( (!\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & (\RAM_inst|memory~39_q\))) # (\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~71_q\)) # (\ram_addr[3]~1_combout\))) ) ) ) # ( 
-- \RAM_inst|memory~103_q\ & ( !\RAM_inst|memory~135_q\ & ( (!\ram_addr[2]~2_combout\ & (((\RAM_inst|memory~39_q\)) # (\ram_addr[3]~1_combout\))) # (\ram_addr[2]~2_combout\ & (!\ram_addr[3]~1_combout\ & ((\RAM_inst|memory~71_q\)))) ) ) ) # ( 
-- !\RAM_inst|memory~103_q\ & ( !\RAM_inst|memory~135_q\ & ( (!\ram_addr[3]~1_combout\ & ((!\ram_addr[2]~2_combout\ & (\RAM_inst|memory~39_q\)) # (\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~71_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALT_INV_ram_addr[3]~1_combout\,
	datac => \RAM_inst|ALT_INV_memory~39_q\,
	datad => \RAM_inst|ALT_INV_memory~71_q\,
	datae => \RAM_inst|ALT_INV_memory~103_q\,
	dataf => \RAM_inst|ALT_INV_memory~135_q\,
	combout => \RAM_inst|memory~2212_combout\);

\RAM_inst|memory~2124\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2124_combout\ = ( \RAM_inst|memory~2212_combout\ & ( (!\ALU_inst|Mux3~0_combout\) # ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2211_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2210_combout\))) ) ) # ( 
-- !\RAM_inst|memory~2212_combout\ & ( (\ALU_inst|Mux3~0_combout\ & ((!\ram_addr[2]~2_combout\ & ((\RAM_inst|memory~2211_combout\))) # (\ram_addr[2]~2_combout\ & (\RAM_inst|memory~2210_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[2]~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2210_combout\,
	datad => \RAM_inst|ALT_INV_memory~2211_combout\,
	datae => \RAM_inst|ALT_INV_memory~2212_combout\,
	combout => \RAM_inst|memory~2124_combout\);

\RAM_inst|memory~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~175_q\);

\RAM_inst|memory~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~207_q\);

\RAM_inst|memory~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~239_q\);

\RAM_inst|memory~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~271_q\);

\RAM_inst|memory~2125\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2125_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~271_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~239_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~207_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~175_q\,
	datab => \RAM_inst|ALT_INV_memory~207_q\,
	datac => \RAM_inst|ALT_INV_memory~239_q\,
	datad => \RAM_inst|ALT_INV_memory~271_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2125_combout\);

\RAM_inst|memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~47_q\);

\RAM_inst|memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~79_q\);

\RAM_inst|memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~111_q\);

\RAM_inst|memory~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~143_q\);

\RAM_inst|memory~2126\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2126_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~143_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~111_q\ ) ) ) # ( \ram_addr[2]~2_combout\ & ( 
-- !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~79_q\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~47_q\,
	datab => \RAM_inst|ALT_INV_memory~79_q\,
	datac => \RAM_inst|ALT_INV_memory~111_q\,
	datad => \RAM_inst|ALT_INV_memory~143_q\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2126_combout\);

\RAM_inst|memory~2127\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2127_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2126_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2126_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2125_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2125_combout\,
	datad => \RAM_inst|ALT_INV_memory~2126_combout\,
	combout => \RAM_inst|memory~2127_combout\);

\RAM_inst|memory~2128\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2128_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2127_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2124_combout\ ) ) ) # ( \ram_addr[0]~4_combout\ & 
-- ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2123_combout\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~2122_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2122_combout\,
	datab => \RAM_inst|ALT_INV_memory~2123_combout\,
	datac => \RAM_inst|ALT_INV_memory~2124_combout\,
	datad => \RAM_inst|ALT_INV_memory~2127_combout\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2128_combout\);

\wdata[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[6]~7_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2128_combout\)) # (\ALU_inst|Mux1~0_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2128_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2128_combout\,
	combout => \wdata[6]~7_combout\);

\RegBank_inst|regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[6]~7_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][6]~q\);

\RegBank_inst|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[6]~7_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][6]~q\);

\RegBank_inst|regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[6]~7_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][6]~q\);

\RegBank_inst|regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[6]~7_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][6]~q\);

\RegBank_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux1~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][6]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][6]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][6]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][6]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][6]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][6]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][6]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux1~0_combout\);

\MuxULA_inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux9~0_combout\ = ( \RegBank_inst|regs[3][6]~q\ & ( \RegBank_inst|regs[2][6]~q\ & ( ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][6]~q\))) # (\raddr2[1]~3_combout\) ) ) ) # ( 
-- !\RegBank_inst|regs[3][6]~q\ & ( \RegBank_inst|regs[2][6]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][6]~q\)))) # (\raddr2[1]~3_combout\ & 
-- (!\raddr2[0]~4_combout\)) ) ) ) # ( \RegBank_inst|regs[3][6]~q\ & ( !\RegBank_inst|regs[2][6]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][6]~q\)))) # 
-- (\raddr2[1]~3_combout\ & (\raddr2[0]~4_combout\)) ) ) ) # ( !\RegBank_inst|regs[3][6]~q\ & ( !\RegBank_inst|regs[2][6]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~4_combout\ & 
-- (\RegBank_inst|regs[1][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~3_combout\,
	datab => \ALT_INV_raddr2[0]~4_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][6]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][6]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][6]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[2][6]~q\,
	combout => \MuxULA_inst|Mux9~0_combout\);

\ALU_inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~25_sumout\ = SUM(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux9~0_combout\) # ((!\PC_inst|pc_reg\(7) & \raddr2~2_combout\)) ) + ( \ALU_inst|Add1~22\ ))
-- \ALU_inst|Add1~26\ = CARRY(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux9~0_combout\) # ((!\PC_inst|pc_reg\(7) & \raddr2~2_combout\)) ) + ( \ALU_inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101110100000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ALT_INV_raddr2~2_combout\,
	datac => \RegBank_inst|ALT_INV_Mux1~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux9~0_combout\,
	cin => \ALU_inst|Add1~22\,
	sumout => \ALU_inst|Add1~25_sumout\,
	cout => \ALU_inst|Add1~26\);

\ALU_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~25_sumout\ = SUM(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux9~0_combout\ & ((!\raddr2~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~22\ ))
-- \ALU_inst|Add0~26\ = CARRY(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux9~0_combout\ & ((!\raddr2~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110010001000000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ALT_INV_raddr2~2_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	datad => \RegBank_inst|ALT_INV_Mux1~0_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux9~0_combout\,
	cin => \ALU_inst|Add0~22\,
	sumout => \ALU_inst|Add0~25_sumout\,
	cout => \ALU_inst|Add0~26\);

\ALU_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux1~0_combout\ = (!\ALU_inst|Mux5~0_combout\ & (!\ALU_inst|Mux5~1_combout\ & ((\ALU_inst|Add0~25_sumout\)))) # (\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Mux5~1_combout\ & \ALU_inst|Add0~25_sumout\)) # (\ALU_inst|Add1~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~25_sumout\,
	datad => \ALU_inst|ALT_INV_Add0~25_sumout\,
	combout => \ALU_inst|Mux1~0_combout\);

\PC_inst|pc_v~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~3_combout\ = ( !\ALU_inst|Mux3~0_combout\ & ( (!\ALU_inst|Mux2~0_combout\ & (!\ALU_inst|Mux1~0_combout\ & (!\ALU_inst|Mux5~2_combout\ & !\ALU_inst|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux2~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux1~0_combout\,
	datac => \ALU_inst|ALT_INV_Mux5~2_combout\,
	datad => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datae => \ALU_inst|ALT_INV_Mux3~0_combout\,
	combout => \PC_inst|pc_v~3_combout\);

\ROM_inst|rom~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~4_combout\ = (!\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(3) $ (((\PC_inst|pc_reg\(1) & !\PC_inst|pc_reg\(2)))))) # (\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(1) & (\PC_inst|pc_reg\(2) & !\PC_inst|pc_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000100000100011100010000010001110001000001000111000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~4_combout\);

\ROM_inst|rom~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~17_combout\ = (!\ROM_inst|rom~4_combout\) # (\PC_inst|pc_reg\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~4_combout\,
	combout => \ROM_inst|rom~17_combout\);

\ROM_inst|rom~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~2_combout\ = (!\PC_inst|pc_reg\(3) & ((!\PC_inst|pc_reg\(0) & (\PC_inst|pc_reg\(1) & !\PC_inst|pc_reg\(2))) # (\PC_inst|pc_reg\(0) & ((!\PC_inst|pc_reg\(2)) # (\PC_inst|pc_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000011100010000000001110001000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~2_combout\);

\ROM_inst|rom~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~16_combout\ = (!\PC_inst|pc_reg\(4) & \ROM_inst|rom~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~2_combout\,
	combout => \ROM_inst|rom~16_combout\);

\ROM_inst|rom~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~15_combout\ = (!\ROM_inst|rom~0_combout\) # (\PC_inst|pc_reg\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	combout => \ROM_inst|rom~15_combout\);

\PC_inst|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \PC_inst|Add1~34_cout\);

\PC_inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~1_sumout\ = SUM(( (!\PC_inst|pc_reg\(7) & (!\PC_inst|pc_reg\(6) & (!\PC_inst|pc_reg\(5) & !\ROM_inst|rom~15_combout\))) ) + ( \PC_inst|pc_reg\(0) ) + ( \PC_inst|Add1~34_cout\ ))
-- \PC_inst|Add1~2\ = CARRY(( (!\PC_inst|pc_reg\(7) & (!\PC_inst|pc_reg\(6) & (!\PC_inst|pc_reg\(5) & !\ROM_inst|rom~15_combout\))) ) + ( \PC_inst|pc_reg\(0) ) + ( \PC_inst|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \PC_inst|ALT_INV_pc_reg\(5),
	datad => \ROM_inst|ALT_INV_rom~15_combout\,
	dataf => \PC_inst|ALT_INV_pc_reg\(0),
	cin => \PC_inst|Add1~34_cout\,
	sumout => \PC_inst|Add1~1_sumout\,
	cout => \PC_inst|Add1~2\);

\PC_inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~5_sumout\ = SUM(( (!\PC_inst|pc_reg\(7) & (!\PC_inst|pc_reg\(6) & (!\PC_inst|pc_reg\(5) & \ROM_inst|rom~16_combout\))) ) + ( \PC_inst|pc_reg\(1) ) + ( \PC_inst|Add1~2\ ))
-- \PC_inst|Add1~6\ = CARRY(( (!\PC_inst|pc_reg\(7) & (!\PC_inst|pc_reg\(6) & (!\PC_inst|pc_reg\(5) & \ROM_inst|rom~16_combout\))) ) + ( \PC_inst|pc_reg\(1) ) + ( \PC_inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \PC_inst|ALT_INV_pc_reg\(5),
	datad => \ROM_inst|ALT_INV_rom~16_combout\,
	dataf => \PC_inst|ALT_INV_pc_reg\(1),
	cin => \PC_inst|Add1~2\,
	sumout => \PC_inst|Add1~5_sumout\,
	cout => \PC_inst|Add1~6\);

\PC_inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~9_sumout\ = SUM(( (!\PC_inst|pc_reg\(7) & (!\PC_inst|pc_reg\(6) & (!\PC_inst|pc_reg\(5) & !\ROM_inst|rom~17_combout\))) ) + ( \PC_inst|pc_reg\(2) ) + ( \PC_inst|Add1~6\ ))
-- \PC_inst|Add1~10\ = CARRY(( (!\PC_inst|pc_reg\(7) & (!\PC_inst|pc_reg\(6) & (!\PC_inst|pc_reg\(5) & !\ROM_inst|rom~17_combout\))) ) + ( \PC_inst|pc_reg\(2) ) + ( \PC_inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \PC_inst|ALT_INV_pc_reg\(5),
	datad => \ROM_inst|ALT_INV_rom~17_combout\,
	dataf => \PC_inst|ALT_INV_pc_reg\(2),
	cin => \PC_inst|Add1~6\,
	sumout => \PC_inst|Add1~9_sumout\,
	cout => \PC_inst|Add1~10\);

\PC_inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~13_sumout\ = SUM(( \PC_inst|pc_reg\(3) ) + ( GND ) + ( \PC_inst|Add1~10\ ))
-- \PC_inst|Add1~14\ = CARRY(( \PC_inst|pc_reg\(3) ) + ( GND ) + ( \PC_inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	cin => \PC_inst|Add1~10\,
	sumout => \PC_inst|Add1~13_sumout\,
	cout => \PC_inst|Add1~14\);

\PC_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~1_sumout\ = SUM(( \PC_inst|pc_reg\(0) ) + ( VCC ) + ( !VCC ))
-- \PC_inst|Add0~2\ = CARRY(( \PC_inst|pc_reg\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(0),
	cin => GND,
	sumout => \PC_inst|Add0~1_sumout\,
	cout => \PC_inst|Add0~2\);

\PC_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~5_sumout\ = SUM(( \PC_inst|pc_reg\(1) ) + ( GND ) + ( \PC_inst|Add0~2\ ))
-- \PC_inst|Add0~6\ = CARRY(( \PC_inst|pc_reg\(1) ) + ( GND ) + ( \PC_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(1),
	cin => \PC_inst|Add0~2\,
	sumout => \PC_inst|Add0~5_sumout\,
	cout => \PC_inst|Add0~6\);

\PC_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~9_sumout\ = SUM(( \PC_inst|pc_reg\(2) ) + ( GND ) + ( \PC_inst|Add0~6\ ))
-- \PC_inst|Add0~10\ = CARRY(( \PC_inst|pc_reg\(2) ) + ( GND ) + ( \PC_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(2),
	cin => \PC_inst|Add0~6\,
	sumout => \PC_inst|Add0~9_sumout\,
	cout => \PC_inst|Add0~10\);

\PC_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~13_sumout\ = SUM(( \PC_inst|pc_reg\(3) ) + ( GND ) + ( \PC_inst|Add0~10\ ))
-- \PC_inst|Add0~14\ = CARRY(( \PC_inst|pc_reg\(3) ) + ( GND ) + ( \PC_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	cin => \PC_inst|Add0~10\,
	sumout => \PC_inst|Add0~13_sumout\,
	cout => \PC_inst|Add0~14\);

\PC_inst|pc_v~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~7_combout\ = ( \PC_inst|Add1~13_sumout\ & ( \PC_inst|Add0~13_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux4~0_combout\) ) ) ) # ( !\PC_inst|Add1~13_sumout\ & ( \PC_inst|Add0~13_sumout\ & ( (!\Equal0~1_combout\ & 
-- (((!\PC_inst|pc_v~2_combout\) # (!\PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux4~0_combout\)) ) ) ) # ( \PC_inst|Add1~13_sumout\ & ( !\PC_inst|Add0~13_sumout\ & ( (!\Equal0~1_combout\ & (((\PC_inst|pc_v~2_combout\ & 
-- \PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux4~0_combout\)) ) ) ) # ( !\PC_inst|Add1~13_sumout\ & ( !\PC_inst|Add0~13_sumout\ & ( (\ALU_inst|Mux4~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001110111011101110100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_pc_v~2_combout\,
	datad => \PC_inst|ALT_INV_pc_v~3_combout\,
	datae => \PC_inst|ALT_INV_Add1~13_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~13_sumout\,
	combout => \PC_inst|pc_v~7_combout\);

\PC_inst|pc_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(3));

\ROM_inst|rom~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~9_combout\ = ( \ROM_inst|rom~8_combout\ & ( (\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(3) & (!\PC_inst|pc_reg\(1) $ (\PC_inst|pc_reg\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000010000000000000000000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	datae => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \ROM_inst|rom~9_combout\);

\MuxULA_inst|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux11~1_combout\ = ( \RegBank_inst|regs[0][4]~q\ & ( \RegBank_inst|regs[3][4]~q\ & ( (!\ROM_inst|rom~3_combout\) # (((\RegBank_inst|regs[1][4]~q\) # (\raddr2~1_combout\)) # (\ROM_inst|rom~5_combout\)) ) ) ) # ( !\RegBank_inst|regs[0][4]~q\ & 
-- ( \RegBank_inst|regs[3][4]~q\ & ( (!\raddr2~1_combout\ & (((\ROM_inst|rom~3_combout\ & \RegBank_inst|regs[1][4]~q\)) # (\ROM_inst|rom~5_combout\))) ) ) ) # ( \RegBank_inst|regs[0][4]~q\ & ( !\RegBank_inst|regs[3][4]~q\ & ( ((!\ROM_inst|rom~5_combout\ & 
-- ((!\ROM_inst|rom~3_combout\) # (\RegBank_inst|regs[1][4]~q\)))) # (\raddr2~1_combout\) ) ) ) # ( !\RegBank_inst|regs[0][4]~q\ & ( !\RegBank_inst|regs[3][4]~q\ & ( (\ROM_inst|rom~3_combout\ & (!\ROM_inst|rom~5_combout\ & (!\raddr2~1_combout\ & 
-- \RegBank_inst|regs[1][4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100011111100111100110000011100001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ALT_INV_raddr2~1_combout\,
	datad => \RegBank_inst|ALT_INV_regs[1][4]~q\,
	datae => \RegBank_inst|ALT_INV_regs[0][4]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[3][4]~q\,
	combout => \MuxULA_inst|Mux11~1_combout\);

\MuxULA_inst|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux11~2_combout\ = ( \RegBank_inst|regs[2][4]~q\ & ( \MuxULA_inst|Mux11~1_combout\ & ( (!\MuxULA_inst|Mux11~0_combout\ & (((\MuxULA_inst|Mux8~0_combout\) # (\ROM_inst|rom~14_combout\)) # (\ROM_inst|rom~9_combout\))) ) ) ) # ( 
-- !\RegBank_inst|regs[2][4]~q\ & ( \MuxULA_inst|Mux11~1_combout\ & ( (!\MuxULA_inst|Mux8~0_combout\ & (!\MuxULA_inst|Mux11~0_combout\ & ((\ROM_inst|rom~14_combout\) # (\ROM_inst|rom~9_combout\)))) ) ) ) # ( \RegBank_inst|regs[2][4]~q\ & ( 
-- !\MuxULA_inst|Mux11~1_combout\ & ( (!\MuxULA_inst|Mux11~0_combout\ & (((\ROM_inst|rom~9_combout\ & !\ROM_inst|rom~14_combout\)) # (\MuxULA_inst|Mux8~0_combout\))) ) ) ) # ( !\RegBank_inst|regs[2][4]~q\ & ( !\MuxULA_inst|Mux11~1_combout\ & ( 
-- (\ROM_inst|rom~9_combout\ & (!\ROM_inst|rom~14_combout\ & (!\MuxULA_inst|Mux8~0_combout\ & !\MuxULA_inst|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010011110000000001110000000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~9_combout\,
	datab => \ROM_inst|ALT_INV_rom~14_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~0_combout\,
	datae => \RegBank_inst|ALT_INV_regs[2][4]~q\,
	dataf => \MuxULA_inst|ALT_INV_Mux11~1_combout\,
	combout => \MuxULA_inst|Mux11~2_combout\);

\PC_inst|pc_v~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~9_combout\ = ( \ALU_inst|Add0~17_sumout\ & ( !\ALU_inst|Mux5~2_combout\ & ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & (!\MuxULA_inst|Mux11~2_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Add1~17_sumout\)))) ) ) ) 
-- # ( !\ALU_inst|Add0~17_sumout\ & ( !\ALU_inst|Mux5~2_combout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((!\MuxULA_inst|Mux11~2_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Add1~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110101000011101010010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	datad => \ALU_inst|ALT_INV_Add1~17_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ALU_inst|ALT_INV_Mux5~2_combout\,
	combout => \PC_inst|pc_v~9_combout\);

\PC_inst|pc_v~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~10_combout\ = ( \ALU_inst|Add0~25_sumout\ & ( !\ALU_inst|Mux4~0_combout\ & ( (\ALU_inst|Mux5~1_combout\ & (!\ALU_inst|Mux2~0_combout\ & ((!\ALU_inst|Mux5~0_combout\) # (!\ALU_inst|Add1~25_sumout\)))) ) ) ) # ( !\ALU_inst|Add0~25_sumout\ & ( 
-- !\ALU_inst|Mux4~0_combout\ & ( (!\ALU_inst|Mux2~0_combout\ & ((!\ALU_inst|Mux5~0_combout\) # (!\ALU_inst|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000001100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Mux2~0_combout\,
	datad => \ALU_inst|ALT_INV_Add1~25_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ALU_inst|ALT_INV_Mux4~0_combout\,
	combout => \PC_inst|pc_v~10_combout\);

\PC_inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~17_sumout\ = SUM(( \PC_inst|pc_reg\(4) ) + ( GND ) + ( \PC_inst|Add1~14\ ))
-- \PC_inst|Add1~18\ = CARRY(( \PC_inst|pc_reg\(4) ) + ( GND ) + ( \PC_inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(4),
	cin => \PC_inst|Add1~14\,
	sumout => \PC_inst|Add1~17_sumout\,
	cout => \PC_inst|Add1~18\);

\PC_inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~21_sumout\ = SUM(( \PC_inst|pc_reg\(5) ) + ( GND ) + ( \PC_inst|Add1~18\ ))
-- \PC_inst|Add1~22\ = CARRY(( \PC_inst|pc_reg\(5) ) + ( GND ) + ( \PC_inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(5),
	cin => \PC_inst|Add1~18\,
	sumout => \PC_inst|Add1~21_sumout\,
	cout => \PC_inst|Add1~22\);

\PC_inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~25_sumout\ = SUM(( \PC_inst|pc_reg\(6) ) + ( GND ) + ( \PC_inst|Add1~22\ ))
-- \PC_inst|Add1~26\ = CARRY(( \PC_inst|pc_reg\(6) ) + ( GND ) + ( \PC_inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(6),
	cin => \PC_inst|Add1~22\,
	sumout => \PC_inst|Add1~25_sumout\,
	cout => \PC_inst|Add1~26\);

\PC_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~17_sumout\ = SUM(( \PC_inst|pc_reg\(4) ) + ( GND ) + ( \PC_inst|Add0~14\ ))
-- \PC_inst|Add0~18\ = CARRY(( \PC_inst|pc_reg\(4) ) + ( GND ) + ( \PC_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(4),
	cin => \PC_inst|Add0~14\,
	sumout => \PC_inst|Add0~17_sumout\,
	cout => \PC_inst|Add0~18\);

\PC_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~21_sumout\ = SUM(( \PC_inst|pc_reg\(5) ) + ( GND ) + ( \PC_inst|Add0~18\ ))
-- \PC_inst|Add0~22\ = CARRY(( \PC_inst|pc_reg\(5) ) + ( GND ) + ( \PC_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(5),
	cin => \PC_inst|Add0~18\,
	sumout => \PC_inst|Add0~21_sumout\,
	cout => \PC_inst|Add0~22\);

\PC_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~25_sumout\ = SUM(( \PC_inst|pc_reg\(6) ) + ( GND ) + ( \PC_inst|Add0~22\ ))
-- \PC_inst|Add0~26\ = CARRY(( \PC_inst|pc_reg\(6) ) + ( GND ) + ( \PC_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(6),
	cin => \PC_inst|Add0~22\,
	sumout => \PC_inst|Add0~25_sumout\,
	cout => \PC_inst|Add0~26\);

\PC_inst|pc_v~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~12_combout\ = ( \PC_inst|Add1~25_sumout\ & ( \PC_inst|Add0~25_sumout\ & ( !\Equal0~1_combout\ ) ) ) # ( !\PC_inst|Add1~25_sumout\ & ( \PC_inst|Add0~25_sumout\ & ( (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~2_combout\) # 
-- ((!\PC_inst|pc_v~9_combout\) # (!\PC_inst|pc_v~10_combout\)))) ) ) ) # ( \PC_inst|Add1~25_sumout\ & ( !\PC_inst|Add0~25_sumout\ & ( (!\Equal0~1_combout\ & (\PC_inst|pc_v~2_combout\ & (\PC_inst|pc_v~9_combout\ & \PC_inst|pc_v~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001010101010101010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \PC_inst|ALT_INV_pc_v~2_combout\,
	datac => \PC_inst|ALT_INV_pc_v~9_combout\,
	datad => \PC_inst|ALT_INV_pc_v~10_combout\,
	datae => \PC_inst|ALT_INV_Add1~25_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~25_sumout\,
	combout => \PC_inst|pc_v~12_combout\);

\PC_inst|pc_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(6));

\ROM_inst|rom~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~5_combout\ = ( \ROM_inst|rom~4_combout\ & ( (!\PC_inst|pc_reg\(4) & (!\PC_inst|pc_reg\(5) & (!\PC_inst|pc_reg\(6) & !\PC_inst|pc_reg\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \PC_inst|ALT_INV_pc_reg\(5),
	datac => \PC_inst|ALT_INV_pc_reg\(6),
	datad => \PC_inst|ALT_INV_pc_reg\(7),
	datae => \ROM_inst|ALT_INV_rom~4_combout\,
	combout => \ROM_inst|rom~5_combout\);

\MuxULA_inst|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~3_combout\ = ( \RegBank_inst|regs[0][2]~q\ & ( \RegBank_inst|regs[3][2]~q\ & ( (!\ROM_inst|rom~3_combout\) # (((\RegBank_inst|regs[1][2]~q\) # (\raddr2~1_combout\)) # (\ROM_inst|rom~5_combout\)) ) ) ) # ( !\RegBank_inst|regs[0][2]~q\ & 
-- ( \RegBank_inst|regs[3][2]~q\ & ( (!\raddr2~1_combout\ & (((\ROM_inst|rom~3_combout\ & \RegBank_inst|regs[1][2]~q\)) # (\ROM_inst|rom~5_combout\))) ) ) ) # ( \RegBank_inst|regs[0][2]~q\ & ( !\RegBank_inst|regs[3][2]~q\ & ( ((!\ROM_inst|rom~5_combout\ & 
-- ((!\ROM_inst|rom~3_combout\) # (\RegBank_inst|regs[1][2]~q\)))) # (\raddr2~1_combout\) ) ) ) # ( !\RegBank_inst|regs[0][2]~q\ & ( !\RegBank_inst|regs[3][2]~q\ & ( (\ROM_inst|rom~3_combout\ & (!\ROM_inst|rom~5_combout\ & (!\raddr2~1_combout\ & 
-- \RegBank_inst|regs[1][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100011111100111100110000011100001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ALT_INV_raddr2~1_combout\,
	datad => \RegBank_inst|ALT_INV_regs[1][2]~q\,
	datae => \RegBank_inst|ALT_INV_regs[0][2]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[3][2]~q\,
	combout => \MuxULA_inst|Mux13~3_combout\);

\MuxULA_inst|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~4_combout\ = ( \MuxULA_inst|Mux13~3_combout\ & ( (!\MuxULA_inst|Mux13~1_combout\ & ((!\MuxULA_inst|Mux13~2_combout\ & (\ROM_inst|rom~5_combout\)) # (\MuxULA_inst|Mux13~2_combout\ & ((\RegBank_inst|regs[2][2]~q\))))) # 
-- (\MuxULA_inst|Mux13~1_combout\ & (((!\MuxULA_inst|Mux13~2_combout\)))) ) ) # ( !\MuxULA_inst|Mux13~3_combout\ & ( (!\MuxULA_inst|Mux13~1_combout\ & ((!\MuxULA_inst|Mux13~2_combout\ & (\ROM_inst|rom~5_combout\)) # (\MuxULA_inst|Mux13~2_combout\ & 
-- ((\RegBank_inst|regs[2][2]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000000010011000111000001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~5_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux13~2_combout\,
	datad => \RegBank_inst|ALT_INV_regs[2][2]~q\,
	datae => \MuxULA_inst|ALT_INV_Mux13~3_combout\,
	combout => \MuxULA_inst|Mux13~4_combout\);

\ALU_inst|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux5~2_combout\ = ( \ALU_inst|Add0~9_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((\MuxULA_inst|Mux13~4_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~9_sumout\)))) ) ) # ( !\ALU_inst|Add0~9_sumout\ & 
-- ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & (\MuxULA_inst|Mux13~4_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111100010101101111100000010010101111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux13~4_combout\,
	datad => \ALU_inst|ALT_INV_Add1~9_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~9_sumout\,
	combout => \ALU_inst|Mux5~2_combout\);

\PC_inst|pc_v~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~6_combout\ = ( \PC_inst|Add1~9_sumout\ & ( \PC_inst|Add0~9_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux5~2_combout\) ) ) ) # ( !\PC_inst|Add1~9_sumout\ & ( \PC_inst|Add0~9_sumout\ & ( (!\Equal0~1_combout\ & 
-- (((!\PC_inst|pc_v~2_combout\) # (!\PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux5~2_combout\)) ) ) ) # ( \PC_inst|Add1~9_sumout\ & ( !\PC_inst|Add0~9_sumout\ & ( (!\Equal0~1_combout\ & (((\PC_inst|pc_v~2_combout\ & 
-- \PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux5~2_combout\)) ) ) ) # ( !\PC_inst|Add1~9_sumout\ & ( !\PC_inst|Add0~9_sumout\ & ( (\ALU_inst|Mux5~2_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001110111011101110100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~2_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_pc_v~2_combout\,
	datad => \PC_inst|ALT_INV_pc_v~3_combout\,
	datae => \PC_inst|ALT_INV_Add1~9_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~9_sumout\,
	combout => \PC_inst|pc_v~6_combout\);

\PC_inst|pc_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(2));

\ROM_inst|rom~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~12_combout\ = (\PC_inst|pc_reg\(1) & ((!\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(2))) # (\PC_inst|pc_reg\(0) & ((!\PC_inst|pc_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100100000001100010010000000110001001000000011000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~12_combout\);

\raddr2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2~2_combout\ = (\raddr2~0_combout\ & ((\ROM_inst|rom~13_combout\) # (\ROM_inst|rom~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~12_combout\,
	datab => \ALT_INV_raddr2~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \raddr2~2_combout\);

\RegBank_inst|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[7]~8_combout\,
	ena => \RegBank_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[0][7]~q\);

\RegBank_inst|regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[7]~8_combout\,
	ena => \RegBank_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[3][7]~q\);

\RegBank_inst|regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[7]~8_combout\,
	ena => \RegBank_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[2][7]~q\);

\MuxULA_inst|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux8~1_combout\ = ( \RegBank_inst|regs[3][7]~q\ & ( \RegBank_inst|regs[2][7]~q\ & ( ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][7]~q\))) # (\raddr2[1]~3_combout\) ) ) ) # ( 
-- !\RegBank_inst|regs[3][7]~q\ & ( \RegBank_inst|regs[2][7]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][7]~q\)))) # (\raddr2[1]~3_combout\ & 
-- (!\raddr2[0]~4_combout\)) ) ) ) # ( \RegBank_inst|regs[3][7]~q\ & ( !\RegBank_inst|regs[2][7]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~4_combout\ & (\RegBank_inst|regs[1][7]~q\)))) # 
-- (\raddr2[1]~3_combout\ & (\raddr2[0]~4_combout\)) ) ) ) # ( !\RegBank_inst|regs[3][7]~q\ & ( !\RegBank_inst|regs[2][7]~q\ & ( (!\raddr2[1]~3_combout\ & ((!\raddr2[0]~4_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~4_combout\ & 
-- (\RegBank_inst|regs[1][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~3_combout\,
	datab => \ALT_INV_raddr2[0]~4_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][7]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][7]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][7]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[2][7]~q\,
	combout => \MuxULA_inst|Mux8~1_combout\);

\ALU_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~29_sumout\ = SUM(( (\RegBank_inst|Mux0~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux8~1_combout\ & ((!\raddr2~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110010001000000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ALT_INV_raddr2~2_combout\,
	datac => \RegBank_inst|ALT_INV_Mux0~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	cin => \ALU_inst|Add0~26\,
	sumout => \ALU_inst|Add0~29_sumout\);

\ALU_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux0~0_combout\ = (!\ALU_inst|Mux5~0_combout\ & (!\ALU_inst|Mux5~1_combout\ & ((\ALU_inst|Add0~29_sumout\)))) # (\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Mux5~1_combout\ & \ALU_inst|Add0~29_sumout\)) # (\ALU_inst|Add1~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~29_sumout\,
	datad => \ALU_inst|ALT_INV_Add0~29_sumout\,
	combout => \ALU_inst|Mux0~0_combout\);

\RAM_inst|memory~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~152_q\);

\RAM_inst|memory~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~160_q\);

\RAM_inst|memory~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~168_q\);

\RAM_inst|memory~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~176_q\);

\RAM_inst|memory~2129\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2129_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~176_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~168_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~160_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~152_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~152_q\,
	datab => \RAM_inst|ALT_INV_memory~160_q\,
	datac => \RAM_inst|ALT_INV_memory~168_q\,
	datad => \RAM_inst|ALT_INV_memory~176_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2129_combout\);

\RAM_inst|memory~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~184_q\);

\RAM_inst|memory~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~192_q\);

\RAM_inst|memory~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~200_q\);

\RAM_inst|memory~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~208_q\);

\RAM_inst|memory~2130\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2130_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~208_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~200_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~192_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~184_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~184_q\,
	datab => \RAM_inst|ALT_INV_memory~192_q\,
	datac => \RAM_inst|ALT_INV_memory~200_q\,
	datad => \RAM_inst|ALT_INV_memory~208_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2130_combout\);

\RAM_inst|memory~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~216_q\);

\RAM_inst|memory~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~224_q\);

\RAM_inst|memory~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~232_q\);

\RAM_inst|memory~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~240_q\);

\RAM_inst|memory~2131\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2131_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~240_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~232_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~224_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~216_q\,
	datab => \RAM_inst|ALT_INV_memory~224_q\,
	datac => \RAM_inst|ALT_INV_memory~232_q\,
	datad => \RAM_inst|ALT_INV_memory~240_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2131_combout\);

\RAM_inst|memory~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~248_q\);

\RAM_inst|memory~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~256_q\);

\RAM_inst|memory~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~264_q\);

\RAM_inst|memory~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~272_q\);

\RAM_inst|memory~2132\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2132_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~272_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~264_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~256_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~248_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~248_q\,
	datab => \RAM_inst|ALT_INV_memory~256_q\,
	datac => \RAM_inst|ALT_INV_memory~264_q\,
	datad => \RAM_inst|ALT_INV_memory~272_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2132_combout\);

\RAM_inst|memory~2133\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2133_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2132_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2131_combout\ ) ) ) # ( \ram_addr[2]~2_combout\ & 
-- ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2130_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2129_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2129_combout\,
	datab => \RAM_inst|ALT_INV_memory~2130_combout\,
	datac => \RAM_inst|ALT_INV_memory~2131_combout\,
	datad => \RAM_inst|ALT_INV_memory~2132_combout\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2133_combout\);

\RAM_inst|memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~24_q\);

\RAM_inst|memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~32_q\);

\RAM_inst|memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~40_q\);

\RAM_inst|memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~48_q\);

\RAM_inst|memory~2134\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2134_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~48_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~40_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~32_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~24_q\,
	datab => \RAM_inst|ALT_INV_memory~32_q\,
	datac => \RAM_inst|ALT_INV_memory~40_q\,
	datad => \RAM_inst|ALT_INV_memory~48_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2134_combout\);

\RAM_inst|memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~56_q\);

\RAM_inst|memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~64_q\);

\RAM_inst|memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~72_q\);

\RAM_inst|memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~80_q\);

\RAM_inst|memory~2135\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2135_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~80_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~72_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~64_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~56_q\,
	datab => \RAM_inst|ALT_INV_memory~64_q\,
	datac => \RAM_inst|ALT_INV_memory~72_q\,
	datad => \RAM_inst|ALT_INV_memory~80_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2135_combout\);

\RAM_inst|memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~88_q\);

\RAM_inst|memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~96_q\);

\RAM_inst|memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~104_q\);

\RAM_inst|memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~112_q\);

\RAM_inst|memory~2136\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2136_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~112_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~104_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~96_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~88_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~88_q\,
	datab => \RAM_inst|ALT_INV_memory~96_q\,
	datac => \RAM_inst|ALT_INV_memory~104_q\,
	datad => \RAM_inst|ALT_INV_memory~112_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2136_combout\);

\RAM_inst|memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~120_q\);

\RAM_inst|memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~128_q\);

\RAM_inst|memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~136_q\);

\RAM_inst|memory~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~144_q\);

\RAM_inst|memory~2137\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2137_combout\ = ( \ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~144_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( \ram_addr[1]~3_combout\ & ( \RAM_inst|memory~136_q\ ) ) ) # ( \ram_addr[0]~4_combout\ & ( 
-- !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~128_q\ ) ) ) # ( !\ram_addr[0]~4_combout\ & ( !\ram_addr[1]~3_combout\ & ( \RAM_inst|memory~120_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~120_q\,
	datab => \RAM_inst|ALT_INV_memory~128_q\,
	datac => \RAM_inst|ALT_INV_memory~136_q\,
	datad => \RAM_inst|ALT_INV_memory~144_q\,
	datae => \ALT_INV_ram_addr[0]~4_combout\,
	dataf => \ALT_INV_ram_addr[1]~3_combout\,
	combout => \RAM_inst|memory~2137_combout\);

\RAM_inst|memory~2138\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2138_combout\ = ( \ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2137_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( \ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2136_combout\ ) ) ) # ( \ram_addr[2]~2_combout\ & 
-- ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2135_combout\ ) ) ) # ( !\ram_addr[2]~2_combout\ & ( !\ram_addr[3]~1_combout\ & ( \RAM_inst|memory~2134_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2134_combout\,
	datab => \RAM_inst|ALT_INV_memory~2135_combout\,
	datac => \RAM_inst|ALT_INV_memory~2136_combout\,
	datad => \RAM_inst|ALT_INV_memory~2137_combout\,
	datae => \ALT_INV_ram_addr[2]~2_combout\,
	dataf => \ALT_INV_ram_addr[3]~1_combout\,
	combout => \RAM_inst|memory~2138_combout\);

\RAM_inst|memory~2139\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2139_combout\ = (!\ALU_inst|Mux3~0_combout\ & (((\RAM_inst|memory~2138_combout\)))) # (\ALU_inst|Mux3~0_combout\ & ((!\Equal0~0_combout\ & ((\RAM_inst|memory~2138_combout\))) # (\Equal0~0_combout\ & (\RAM_inst|memory~2133_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2133_combout\,
	datad => \RAM_inst|ALT_INV_memory~2138_combout\,
	combout => \RAM_inst|memory~2139_combout\);

\wdata[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[7]~8_combout\ = (!\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2139_combout\)) # (\ALU_inst|Mux0~0_combout\))) # (\MuxULA_inst|Mux13~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2139_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2139_combout\,
	combout => \wdata[7]~8_combout\);

\RegBank_inst|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \wdata[7]~8_combout\,
	ena => \RegBank_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank_inst|regs[1][7]~q\);

\RegBank_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux0~0_combout\ = ( \ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[2][7]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( \ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[3][7]~q\ ) ) ) # ( \ROM_inst|rom~7_combout\ & ( 
-- !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[0][7]~q\ ) ) ) # ( !\ROM_inst|rom~7_combout\ & ( !\ROM_inst|rom~9_combout\ & ( \RegBank_inst|regs[1][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][7]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][7]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][7]~q\,
	datad => \RegBank_inst|ALT_INV_regs[2][7]~q\,
	datae => \ROM_inst|ALT_INV_rom~7_combout\,
	dataf => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \RegBank_inst|Mux0~0_combout\);

\ALU_inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~29_sumout\ = SUM(( (\RegBank_inst|Mux0~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux8~1_combout\) # ((!\PC_inst|pc_reg\(7) & \raddr2~2_combout\)) ) + ( \ALU_inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111010100000000000000000001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \RegBank_inst|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_raddr2~2_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	cin => \ALU_inst|Add1~26\,
	sumout => \ALU_inst|Add1~29_sumout\);

\PC_inst|pc_v~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~0_combout\ = ( \raddr2~0_combout\ & ( \ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(7) & (\ROM_inst|rom~8_combout\ & (!\ROM_inst|rom~10_combout\ & \ROM_inst|rom~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~10_combout\,
	datad => \ROM_inst|ALT_INV_rom~12_combout\,
	datae => \ALT_INV_raddr2~0_combout\,
	dataf => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \PC_inst|pc_v~0_combout\);

\PC_inst|pc_v~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~1_combout\ = ( \ALU_inst|Mux5~1_combout\ & ( \ALU_inst|Add0~1_sumout\ & ( (\PC_inst|pc_v~0_combout\ & ((!\ALU_inst|Mux5~0_combout\ & (!\MuxULA_inst|Mux15~1_combout\)) # (\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Add1~1_sumout\))))) ) ) ) # ( 
-- !\ALU_inst|Mux5~1_combout\ & ( \ALU_inst|Add0~1_sumout\ & ( (\ALU_inst|Mux5~0_combout\ & (\PC_inst|pc_v~0_combout\ & !\ALU_inst|Add1~1_sumout\)) ) ) ) # ( \ALU_inst|Mux5~1_combout\ & ( !\ALU_inst|Add0~1_sumout\ & ( (\PC_inst|pc_v~0_combout\ & 
-- ((!\ALU_inst|Mux5~0_combout\ & (!\MuxULA_inst|Mux15~1_combout\)) # (\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Add1~1_sumout\))))) ) ) ) # ( !\ALU_inst|Mux5~1_combout\ & ( !\ALU_inst|Add0~1_sumout\ & ( (\PC_inst|pc_v~0_combout\ & 
-- ((!\ALU_inst|Mux5~0_combout\) # (!\ALU_inst|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100010010000000010001000000000011000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \PC_inst|ALT_INV_pc_v~0_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	datad => \ALU_inst|ALT_INV_Add1~1_sumout\,
	datae => \ALU_inst|ALT_INV_Mux5~1_combout\,
	dataf => \ALU_inst|ALT_INV_Add0~1_sumout\,
	combout => \PC_inst|pc_v~1_combout\);

\PC_inst|pc_v~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~2_combout\ = ( !\ALU_inst|Mux6~0_combout\ & ( \PC_inst|pc_v~1_combout\ & ( (!\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Add0~29_sumout\)) # (\ALU_inst|Mux5~1_combout\))) # (\ALU_inst|Mux5~0_combout\ & (!\ALU_inst|Add1~29_sumout\ & 
-- ((!\ALU_inst|Add0~29_sumout\) # (\ALU_inst|Mux5~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~29_sumout\,
	datad => \ALU_inst|ALT_INV_Add0~29_sumout\,
	datae => \ALU_inst|ALT_INV_Mux6~0_combout\,
	dataf => \PC_inst|ALT_INV_pc_v~1_combout\,
	combout => \PC_inst|pc_v~2_combout\);

\PC_inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add1~29_sumout\ = SUM(( \PC_inst|pc_reg\(7) ) + ( GND ) + ( \PC_inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(7),
	cin => \PC_inst|Add1~26\,
	sumout => \PC_inst|Add1~29_sumout\);

\PC_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|Add0~29_sumout\ = SUM(( \PC_inst|pc_reg\(7) ) + ( GND ) + ( \PC_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|ALT_INV_pc_reg\(7),
	cin => \PC_inst|Add0~26\,
	sumout => \PC_inst|Add0~29_sumout\);

\PC_inst|pc_v~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~13_combout\ = ( \PC_inst|Add1~29_sumout\ & ( \PC_inst|Add0~29_sumout\ & ( !\Equal0~1_combout\ ) ) ) # ( !\PC_inst|Add1~29_sumout\ & ( \PC_inst|Add0~29_sumout\ & ( (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~2_combout\) # 
-- ((!\PC_inst|pc_v~9_combout\) # (!\PC_inst|pc_v~10_combout\)))) ) ) ) # ( \PC_inst|Add1~29_sumout\ & ( !\PC_inst|Add0~29_sumout\ & ( (!\Equal0~1_combout\ & (\PC_inst|pc_v~2_combout\ & (\PC_inst|pc_v~9_combout\ & \PC_inst|pc_v~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001010101010101010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \PC_inst|ALT_INV_pc_v~2_combout\,
	datac => \PC_inst|ALT_INV_pc_v~9_combout\,
	datad => \PC_inst|ALT_INV_pc_v~10_combout\,
	datae => \PC_inst|ALT_INV_Add1~29_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~29_sumout\,
	combout => \PC_inst|pc_v~13_combout\);

\PC_inst|pc_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(7));

\MuxULA_inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~0_combout\ = (!\PC_inst|pc_reg\(7) & (\ROM_inst|rom~12_combout\ & \raddr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ALT_INV_raddr2~0_combout\,
	combout => \MuxULA_inst|Mux13~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\ROM_inst|rom~11_combout\ & (\MuxULA_inst|Mux13~0_combout\ & !\ROM_inst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \Equal0~1_combout\);

\PC_inst|pc_v~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~11_combout\ = ( \PC_inst|Add1~21_sumout\ & ( \PC_inst|Add0~21_sumout\ & ( !\Equal0~1_combout\ ) ) ) # ( !\PC_inst|Add1~21_sumout\ & ( \PC_inst|Add0~21_sumout\ & ( (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~2_combout\) # 
-- ((!\PC_inst|pc_v~9_combout\) # (!\PC_inst|pc_v~10_combout\)))) ) ) ) # ( \PC_inst|Add1~21_sumout\ & ( !\PC_inst|Add0~21_sumout\ & ( (!\Equal0~1_combout\ & (\PC_inst|pc_v~2_combout\ & (\PC_inst|pc_v~9_combout\ & \PC_inst|pc_v~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001010101010101010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \PC_inst|ALT_INV_pc_v~2_combout\,
	datac => \PC_inst|ALT_INV_pc_v~9_combout\,
	datad => \PC_inst|ALT_INV_pc_v~10_combout\,
	datae => \PC_inst|ALT_INV_Add1~21_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~21_sumout\,
	combout => \PC_inst|pc_v~11_combout\);

\PC_inst|pc_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(5));

\ROM_inst|rom~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~3_combout\ = ( \ROM_inst|rom~2_combout\ & ( (!\PC_inst|pc_reg\(4) & (!\PC_inst|pc_reg\(5) & (!\PC_inst|pc_reg\(6) & !\PC_inst|pc_reg\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \PC_inst|ALT_INV_pc_reg\(5),
	datac => \PC_inst|ALT_INV_pc_reg\(6),
	datad => \PC_inst|ALT_INV_pc_reg\(7),
	datae => \ROM_inst|ALT_INV_rom~2_combout\,
	combout => \ROM_inst|rom~3_combout\);

\MuxULA_inst|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux14~0_combout\ = ( \RegBank_inst|regs[0][1]~q\ & ( \RegBank_inst|regs[3][1]~q\ & ( (!\ROM_inst|rom~3_combout\) # (((\RegBank_inst|regs[1][1]~q\) # (\raddr2~1_combout\)) # (\ROM_inst|rom~5_combout\)) ) ) ) # ( !\RegBank_inst|regs[0][1]~q\ & 
-- ( \RegBank_inst|regs[3][1]~q\ & ( (!\raddr2~1_combout\ & (((\ROM_inst|rom~3_combout\ & \RegBank_inst|regs[1][1]~q\)) # (\ROM_inst|rom~5_combout\))) ) ) ) # ( \RegBank_inst|regs[0][1]~q\ & ( !\RegBank_inst|regs[3][1]~q\ & ( ((!\ROM_inst|rom~5_combout\ & 
-- ((!\ROM_inst|rom~3_combout\) # (\RegBank_inst|regs[1][1]~q\)))) # (\raddr2~1_combout\) ) ) ) # ( !\RegBank_inst|regs[0][1]~q\ & ( !\RegBank_inst|regs[3][1]~q\ & ( (\ROM_inst|rom~3_combout\ & (!\ROM_inst|rom~5_combout\ & (!\raddr2~1_combout\ & 
-- \RegBank_inst|regs[1][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100011111100111100110000011100001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	datac => \ALT_INV_raddr2~1_combout\,
	datad => \RegBank_inst|ALT_INV_regs[1][1]~q\,
	datae => \RegBank_inst|ALT_INV_regs[0][1]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[3][1]~q\,
	combout => \MuxULA_inst|Mux14~0_combout\);

\MuxULA_inst|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux14~1_combout\ = ( \MuxULA_inst|Mux14~0_combout\ & ( (!\MuxULA_inst|Mux13~1_combout\ & ((!\MuxULA_inst|Mux13~2_combout\ & (\ROM_inst|rom~3_combout\)) # (\MuxULA_inst|Mux13~2_combout\ & ((\RegBank_inst|regs[2][1]~q\))))) # 
-- (\MuxULA_inst|Mux13~1_combout\ & (((!\MuxULA_inst|Mux13~2_combout\)))) ) ) # ( !\MuxULA_inst|Mux14~0_combout\ & ( (!\MuxULA_inst|Mux13~1_combout\ & ((!\MuxULA_inst|Mux13~2_combout\ & (\ROM_inst|rom~3_combout\)) # (\MuxULA_inst|Mux13~2_combout\ & 
-- ((\RegBank_inst|regs[2][1]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000000010011000111000001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~3_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux13~2_combout\,
	datad => \RegBank_inst|ALT_INV_regs[2][1]~q\,
	datae => \MuxULA_inst|ALT_INV_Mux14~0_combout\,
	combout => \MuxULA_inst|Mux14~1_combout\);

\ALU_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux6~0_combout\ = ( \ALU_inst|Add0~5_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((\MuxULA_inst|Mux14~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~5_sumout\)))) ) ) # ( !\ALU_inst|Add0~5_sumout\ & 
-- ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & (\MuxULA_inst|Mux14~1_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111100010101101111100000010010101111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux14~1_combout\,
	datad => \ALU_inst|ALT_INV_Add1~5_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~5_sumout\,
	combout => \ALU_inst|Mux6~0_combout\);

\PC_inst|pc_v~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~5_combout\ = ( \PC_inst|Add1~5_sumout\ & ( \PC_inst|Add0~5_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux6~0_combout\) ) ) ) # ( !\PC_inst|Add1~5_sumout\ & ( \PC_inst|Add0~5_sumout\ & ( (!\Equal0~1_combout\ & 
-- (((!\PC_inst|pc_v~2_combout\) # (!\PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux6~0_combout\)) ) ) ) # ( \PC_inst|Add1~5_sumout\ & ( !\PC_inst|Add0~5_sumout\ & ( (!\Equal0~1_combout\ & (((\PC_inst|pc_v~2_combout\ & 
-- \PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux6~0_combout\)) ) ) ) # ( !\PC_inst|Add1~5_sumout\ & ( !\PC_inst|Add0~5_sumout\ & ( (\ALU_inst|Mux6~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001110111011101110100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_pc_v~2_combout\,
	datad => \PC_inst|ALT_INV_pc_v~3_combout\,
	datae => \PC_inst|ALT_INV_Add1~5_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~5_sumout\,
	combout => \PC_inst|pc_v~5_combout\);

\PC_inst|pc_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(1));

\ROM_inst|rom~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~10_combout\ = (!\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(2) & ((!\PC_inst|pc_reg\(3)) # (\PC_inst|pc_reg\(1))))) # (\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(1) & ((!\PC_inst|pc_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010000100000111001000010000011100100001000001110010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~10_combout\);

\ALU_inst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux5~1_combout\ = (\ROM_inst|rom~8_combout\ & ((\ROM_inst|rom~12_combout\) # (\ROM_inst|rom~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~8_combout\,
	datab => \ROM_inst|ALT_INV_rom~10_combout\,
	datac => \ROM_inst|ALT_INV_rom~12_combout\,
	combout => \ALU_inst|Mux5~1_combout\);

\ALU_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux3~0_combout\ = ( \ALU_inst|Add0~17_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((\MuxULA_inst|Mux11~2_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~17_sumout\)))) ) ) # ( 
-- !\ALU_inst|Add0~17_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & (\MuxULA_inst|Mux11~2_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111100010101101111100000010010101111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	datad => \ALU_inst|ALT_INV_Add1~17_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~17_sumout\,
	combout => \ALU_inst|Mux3~0_combout\);

\PC_inst|pc_v~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~8_combout\ = ( \PC_inst|Add1~17_sumout\ & ( \PC_inst|Add0~17_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux3~0_combout\) ) ) ) # ( !\PC_inst|Add1~17_sumout\ & ( \PC_inst|Add0~17_sumout\ & ( (!\Equal0~1_combout\ & 
-- (((!\PC_inst|pc_v~2_combout\) # (!\PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux3~0_combout\)) ) ) ) # ( \PC_inst|Add1~17_sumout\ & ( !\PC_inst|Add0~17_sumout\ & ( (!\Equal0~1_combout\ & (((\PC_inst|pc_v~2_combout\ & 
-- \PC_inst|pc_v~3_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux3~0_combout\)) ) ) ) # ( !\PC_inst|Add1~17_sumout\ & ( !\PC_inst|Add0~17_sumout\ & ( (\ALU_inst|Mux3~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001110111011101110100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_pc_v~2_combout\,
	datad => \PC_inst|ALT_INV_pc_v~3_combout\,
	datae => \PC_inst|ALT_INV_Add1~17_sumout\,
	dataf => \PC_inst|ALT_INV_Add0~17_sumout\,
	combout => \PC_inst|pc_v~8_combout\);

\PC_inst|pc_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(4));

\ROM_inst|rom~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~8_combout\ = (!\PC_inst|pc_reg\(4) & (!\PC_inst|pc_reg\(5) & (!\PC_inst|pc_reg\(6) & !\PC_inst|pc_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \PC_inst|ALT_INV_pc_reg\(5),
	datac => \PC_inst|ALT_INV_pc_reg\(6),
	datad => \PC_inst|ALT_INV_pc_reg\(7),
	combout => \ROM_inst|rom~8_combout\);

\ROM_inst|rom~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~11_combout\ = (\ROM_inst|rom~8_combout\ & \ROM_inst|rom~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~8_combout\,
	datab => \ROM_inst|ALT_INV_rom~10_combout\,
	combout => \ROM_inst|rom~11_combout\);

\ALU_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux5~0_combout\ = (!\ROM_inst|rom~11_combout\ & (\MuxULA_inst|Mux13~0_combout\ & !\ROM_inst|rom~14_combout\)) # (\ROM_inst|rom~11_combout\ & (!\MuxULA_inst|Mux13~0_combout\ & \ROM_inst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \ALU_inst|Mux5~0_combout\);

\ALU_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux7~0_combout\ = ( \ALU_inst|Add0~1_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Mux5~1_combout\)) # (\MuxULA_inst|Mux15~1_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~1_sumout\)))) ) ) # ( !\ALU_inst|Add0~1_sumout\ & 
-- ( (!\ALU_inst|Mux5~0_combout\ & (\MuxULA_inst|Mux15~1_combout\ & ((\ALU_inst|Mux5~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111101011110010011100000101001001111010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~1_sumout\,
	datad => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datae => \ALU_inst|ALT_INV_Add0~1_sumout\,
	combout => \ALU_inst|Mux7~0_combout\);

\PC_inst|pc_v~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~4_combout\ = ( \PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~1_sumout\ & ( (!\Equal0~1_combout\ & (((!\PC_inst|pc_v~2_combout\) # (\PC_inst|Add1~1_sumout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux7~0_combout\)) ) ) ) # ( 
-- !\PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~1_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux7~0_combout\) ) ) ) # ( \PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~1_sumout\ & ( (!\Equal0~1_combout\ & (((\PC_inst|Add1~1_sumout\ & 
-- \PC_inst|pc_v~2_combout\)))) # (\Equal0~1_combout\ & (\ALU_inst|Mux7~0_combout\)) ) ) ) # ( !\PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~1_sumout\ & ( (\ALU_inst|Mux7~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001110111011101110111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_Add1~1_sumout\,
	datad => \PC_inst|ALT_INV_pc_v~2_combout\,
	datae => \PC_inst|ALT_INV_pc_v~3_combout\,
	dataf => \PC_inst|ALT_INV_Add0~1_sumout\,
	combout => \PC_inst|pc_v~4_combout\);

\PC_inst|pc_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(0));

ww_pc_out(0) <= \pc_out[0]~output_o\;

ww_pc_out(1) <= \pc_out[1]~output_o\;

ww_pc_out(2) <= \pc_out[2]~output_o\;

ww_pc_out(3) <= \pc_out[3]~output_o\;

ww_pc_out(4) <= \pc_out[4]~output_o\;

ww_pc_out(5) <= \pc_out[5]~output_o\;

ww_pc_out(6) <= \pc_out[6]~output_o\;

ww_pc_out(7) <= \pc_out[7]~output_o\;

ww_instr_out(0) <= \instr_out[0]~output_o\;

ww_instr_out(1) <= \instr_out[1]~output_o\;

ww_instr_out(2) <= \instr_out[2]~output_o\;

ww_instr_out(3) <= \instr_out[3]~output_o\;

ww_instr_out(4) <= \instr_out[4]~output_o\;

ww_instr_out(5) <= \instr_out[5]~output_o\;

ww_instr_out(6) <= \instr_out[6]~output_o\;

ww_instr_out(7) <= \instr_out[7]~output_o\;

ww_alu_out(0) <= \alu_out[0]~output_o\;

ww_alu_out(1) <= \alu_out[1]~output_o\;

ww_alu_out(2) <= \alu_out[2]~output_o\;

ww_alu_out(3) <= \alu_out[3]~output_o\;

ww_alu_out(4) <= \alu_out[4]~output_o\;

ww_alu_out(5) <= \alu_out[5]~output_o\;

ww_alu_out(6) <= \alu_out[6]~output_o\;

ww_alu_out(7) <= \alu_out[7]~output_o\;

ww_ram_addr_out(0) <= \ram_addr_out[0]~output_o\;

ww_ram_addr_out(1) <= \ram_addr_out[1]~output_o\;

ww_ram_addr_out(2) <= \ram_addr_out[2]~output_o\;

ww_ram_addr_out(3) <= \ram_addr_out[3]~output_o\;

ww_ram_addr_out(4) <= \ram_addr_out[4]~output_o\;

ww_ram_addr_out(5) <= \ram_addr_out[5]~output_o\;

ww_ram_addr_out(6) <= \ram_addr_out[6]~output_o\;

ww_ram_addr_out(7) <= \ram_addr_out[7]~output_o\;

ww_r0_out(0) <= \r0_out[0]~output_o\;

ww_r0_out(1) <= \r0_out[1]~output_o\;

ww_r0_out(2) <= \r0_out[2]~output_o\;

ww_r0_out(3) <= \r0_out[3]~output_o\;

ww_r0_out(4) <= \r0_out[4]~output_o\;

ww_r0_out(5) <= \r0_out[5]~output_o\;

ww_r0_out(6) <= \r0_out[6]~output_o\;

ww_r0_out(7) <= \r0_out[7]~output_o\;

ww_r1_out(0) <= \r1_out[0]~output_o\;

ww_r1_out(1) <= \r1_out[1]~output_o\;

ww_r1_out(2) <= \r1_out[2]~output_o\;

ww_r1_out(3) <= \r1_out[3]~output_o\;

ww_r1_out(4) <= \r1_out[4]~output_o\;

ww_r1_out(5) <= \r1_out[5]~output_o\;

ww_r1_out(6) <= \r1_out[6]~output_o\;

ww_r1_out(7) <= \r1_out[7]~output_o\;

ww_r2_out(0) <= \r2_out[0]~output_o\;

ww_r2_out(1) <= \r2_out[1]~output_o\;

ww_r2_out(2) <= \r2_out[2]~output_o\;

ww_r2_out(3) <= \r2_out[3]~output_o\;

ww_r2_out(4) <= \r2_out[4]~output_o\;

ww_r2_out(5) <= \r2_out[5]~output_o\;

ww_r2_out(6) <= \r2_out[6]~output_o\;

ww_r2_out(7) <= \r2_out[7]~output_o\;

ww_r3_out(0) <= \r3_out[0]~output_o\;

ww_r3_out(1) <= \r3_out[1]~output_o\;

ww_r3_out(2) <= \r3_out[2]~output_o\;

ww_r3_out(3) <= \r3_out[3]~output_o\;

ww_r3_out(4) <= \r3_out[4]~output_o\;

ww_r3_out(5) <= \r3_out[5]~output_o\;

ww_r3_out(6) <= \r3_out[6]~output_o\;

ww_r3_out(7) <= \r3_out[7]~output_o\;
END structure;


