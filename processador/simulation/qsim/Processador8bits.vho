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

-- DATE "03/07/2025 04:42:36"

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
	pc_out : BUFFER std_logic_vector(7 DOWNTO 0);
	instr_out : BUFFER std_logic_vector(7 DOWNTO 0);
	alu_out : BUFFER std_logic_vector(7 DOWNTO 0);
	ram_addr_out : BUFFER std_logic_vector(7 DOWNTO 0);
	r0_out : BUFFER std_logic_vector(7 DOWNTO 0);
	r1_out : BUFFER std_logic_vector(7 DOWNTO 0);
	r2_out : BUFFER std_logic_vector(7 DOWNTO 0);
	r3_out : BUFFER std_logic_vector(7 DOWNTO 0)
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
SIGNAL \ROM_inst|rom~3_combout\ : std_logic;
SIGNAL \ROM_inst|rom~4_combout\ : std_logic;
SIGNAL \ROM_inst|rom~11_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux8~0_combout\ : std_logic;
SIGNAL \ROM_inst|rom~13_combout\ : std_logic;
SIGNAL \ROM_inst|rom~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux8~2_combout\ : std_logic;
SIGNAL \raddr2[1]~0_combout\ : std_logic;
SIGNAL \raddr2[0]~1_combout\ : std_logic;
SIGNAL \wdata[0]~0_combout\ : std_logic;
SIGNAL \ROM_inst|rom~5_combout\ : std_logic;
SIGNAL \ROM_inst|rom~6_combout\ : std_logic;
SIGNAL \ROM_inst|rom~7_combout\ : std_logic;
SIGNAL \ROM_inst|rom~8_combout\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[0][5]~q\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[3][5]~q\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][5]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux2~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \RegBank_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][0]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][0]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][0]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux7~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux6~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux6~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~34_cout\ : std_logic;
SIGNAL \ALU_inst|Add1~1_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~1_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux7~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~17_q\ : std_logic;
SIGNAL \RegBank_inst|regs[1][1]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][1]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][1]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~2\ : std_logic;
SIGNAL \ALU_inst|Add1~5_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~2\ : std_logic;
SIGNAL \ALU_inst|Add0~5_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux6~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~18_q\ : std_logic;
SIGNAL \ram_addr[2]~3_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][3]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][3]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][3]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux4~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~20_q\ : std_logic;
SIGNAL \RAM_inst|memory~148_q\ : std_logic;
SIGNAL \MuxULA_inst|Mux11~0_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][4]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][4]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][4]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux3~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~21_q\ : std_logic;
SIGNAL \RAM_inst|memory~53_q\ : std_logic;
SIGNAL \ram_addr[5]~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2249_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2250_combout\ : std_logic;
SIGNAL \RAM_inst|memory~85_q\ : std_logic;
SIGNAL \RAM_inst|memory~2257_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2258_combout\ : std_logic;
SIGNAL \RAM_inst|memory~117_q\ : std_logic;
SIGNAL \RAM_inst|memory~2149_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2265_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2266_combout\ : std_logic;
SIGNAL \RAM_inst|memory~29_q\ : std_logic;
SIGNAL \RAM_inst|memory~2273_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2274_combout\ : std_logic;
SIGNAL \RAM_inst|memory~61_q\ : std_logic;
SIGNAL \RAM_inst|memory~2281_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2282_combout\ : std_logic;
SIGNAL \RAM_inst|memory~93_q\ : std_logic;
SIGNAL \RAM_inst|memory~2289_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2290_combout\ : std_logic;
SIGNAL \RAM_inst|memory~125_q\ : std_logic;
SIGNAL \RAM_inst|memory~2150_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2297_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2298_combout\ : std_logic;
SIGNAL \RAM_inst|memory~37_q\ : std_logic;
SIGNAL \RAM_inst|memory~2305_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2306_combout\ : std_logic;
SIGNAL \RAM_inst|memory~69_q\ : std_logic;
SIGNAL \RAM_inst|memory~2313_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2314_combout\ : std_logic;
SIGNAL \RAM_inst|memory~101_q\ : std_logic;
SIGNAL \RAM_inst|memory~2321_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2322_combout\ : std_logic;
SIGNAL \RAM_inst|memory~133_q\ : std_logic;
SIGNAL \RAM_inst|memory~2151_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2329_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2330_combout\ : std_logic;
SIGNAL \RAM_inst|memory~45_q\ : std_logic;
SIGNAL \RAM_inst|memory~2331_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2332_combout\ : std_logic;
SIGNAL \RAM_inst|memory~77_q\ : std_logic;
SIGNAL \RAM_inst|memory~2333_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2334_combout\ : std_logic;
SIGNAL \RAM_inst|memory~109_q\ : std_logic;
SIGNAL \RAM_inst|memory~2335_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2336_combout\ : std_logic;
SIGNAL \RAM_inst|memory~141_q\ : std_logic;
SIGNAL \RAM_inst|memory~2152_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2153_combout\ : std_logic;
SIGNAL \RAM_inst|memory~149_q\ : std_logic;
SIGNAL \RAM_inst|memory~2243_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2244_combout\ : std_logic;
SIGNAL \RAM_inst|memory~181_q\ : std_logic;
SIGNAL \RAM_inst|memory~2251_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2252_combout\ : std_logic;
SIGNAL \RAM_inst|memory~213_q\ : std_logic;
SIGNAL \RAM_inst|memory~2259_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2260_combout\ : std_logic;
SIGNAL \RAM_inst|memory~245_q\ : std_logic;
SIGNAL \RAM_inst|memory~2154_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2267_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2268_combout\ : std_logic;
SIGNAL \RAM_inst|memory~157_q\ : std_logic;
SIGNAL \RAM_inst|memory~2275_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2276_combout\ : std_logic;
SIGNAL \RAM_inst|memory~189_q\ : std_logic;
SIGNAL \RAM_inst|memory~2283_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2284_combout\ : std_logic;
SIGNAL \RAM_inst|memory~221_q\ : std_logic;
SIGNAL \RAM_inst|memory~2291_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2292_combout\ : std_logic;
SIGNAL \RAM_inst|memory~253_q\ : std_logic;
SIGNAL \RAM_inst|memory~2155_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2299_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2300_combout\ : std_logic;
SIGNAL \RAM_inst|memory~165_q\ : std_logic;
SIGNAL \RAM_inst|memory~2307_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2308_combout\ : std_logic;
SIGNAL \RAM_inst|memory~197_q\ : std_logic;
SIGNAL \RAM_inst|memory~2315_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2316_combout\ : std_logic;
SIGNAL \RAM_inst|memory~229_q\ : std_logic;
SIGNAL \RAM_inst|memory~2323_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2324_combout\ : std_logic;
SIGNAL \RAM_inst|memory~261_q\ : std_logic;
SIGNAL \RAM_inst|memory~2156_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2337_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2338_combout\ : std_logic;
SIGNAL \RAM_inst|memory~173_q\ : std_logic;
SIGNAL \RAM_inst|memory~2339_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2340_combout\ : std_logic;
SIGNAL \RAM_inst|memory~205_q\ : std_logic;
SIGNAL \RAM_inst|memory~2341_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2342_combout\ : std_logic;
SIGNAL \RAM_inst|memory~237_q\ : std_logic;
SIGNAL \RAM_inst|memory~2343_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2344_combout\ : std_logic;
SIGNAL \RAM_inst|memory~269_q\ : std_logic;
SIGNAL \RAM_inst|memory~2157_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2158_combout\ : std_logic;
SIGNAL \RAM_inst|memory~277_q\ : std_logic;
SIGNAL \RAM_inst|memory~2269_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2270_combout\ : std_logic;
SIGNAL \RAM_inst|memory~285_q\ : std_logic;
SIGNAL \RAM_inst|memory~2301_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2302_combout\ : std_logic;
SIGNAL \RAM_inst|memory~293_q\ : std_logic;
SIGNAL \RAM_inst|memory~2345_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2346_combout\ : std_logic;
SIGNAL \RAM_inst|memory~301_q\ : std_logic;
SIGNAL \RAM_inst|memory~2159_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2245_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2246_combout\ : std_logic;
SIGNAL \RAM_inst|memory~309_q\ : std_logic;
SIGNAL \RAM_inst|memory~2277_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2278_combout\ : std_logic;
SIGNAL \RAM_inst|memory~317_q\ : std_logic;
SIGNAL \RAM_inst|memory~2309_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2310_combout\ : std_logic;
SIGNAL \RAM_inst|memory~325_q\ : std_logic;
SIGNAL \RAM_inst|memory~2347_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2348_combout\ : std_logic;
SIGNAL \RAM_inst|memory~333_q\ : std_logic;
SIGNAL \RAM_inst|memory~2160_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2253_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2254_combout\ : std_logic;
SIGNAL \RAM_inst|memory~341_q\ : std_logic;
SIGNAL \RAM_inst|memory~2285_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2286_combout\ : std_logic;
SIGNAL \RAM_inst|memory~349_q\ : std_logic;
SIGNAL \RAM_inst|memory~2317_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2318_combout\ : std_logic;
SIGNAL \RAM_inst|memory~357_q\ : std_logic;
SIGNAL \RAM_inst|memory~2349_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2350_combout\ : std_logic;
SIGNAL \RAM_inst|memory~365_q\ : std_logic;
SIGNAL \RAM_inst|memory~2161_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2261_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2262_combout\ : std_logic;
SIGNAL \RAM_inst|memory~373_q\ : std_logic;
SIGNAL \RAM_inst|memory~2293_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2294_combout\ : std_logic;
SIGNAL \RAM_inst|memory~381_q\ : std_logic;
SIGNAL \RAM_inst|memory~2325_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2326_combout\ : std_logic;
SIGNAL \RAM_inst|memory~389_q\ : std_logic;
SIGNAL \RAM_inst|memory~2351_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2352_combout\ : std_logic;
SIGNAL \RAM_inst|memory~397_q\ : std_logic;
SIGNAL \RAM_inst|memory~2162_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2163_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2239_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2240_combout\ : std_logic;
SIGNAL \RAM_inst|memory~405_q\ : std_logic;
SIGNAL \RAM_inst|memory~2247_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2248_combout\ : std_logic;
SIGNAL \RAM_inst|memory~437_q\ : std_logic;
SIGNAL \RAM_inst|memory~2255_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2256_combout\ : std_logic;
SIGNAL \RAM_inst|memory~469_q\ : std_logic;
SIGNAL \RAM_inst|memory~2263_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2264_combout\ : std_logic;
SIGNAL \RAM_inst|memory~501_q\ : std_logic;
SIGNAL \RAM_inst|memory~2164_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2271_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2272_combout\ : std_logic;
SIGNAL \RAM_inst|memory~413_q\ : std_logic;
SIGNAL \RAM_inst|memory~2279_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2280_combout\ : std_logic;
SIGNAL \RAM_inst|memory~445_q\ : std_logic;
SIGNAL \RAM_inst|memory~2287_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2288_combout\ : std_logic;
SIGNAL \RAM_inst|memory~477_q\ : std_logic;
SIGNAL \RAM_inst|memory~2295_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2296_combout\ : std_logic;
SIGNAL \RAM_inst|memory~509_q\ : std_logic;
SIGNAL \RAM_inst|memory~2165_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2303_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2304_combout\ : std_logic;
SIGNAL \RAM_inst|memory~421_q\ : std_logic;
SIGNAL \RAM_inst|memory~2311_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2312_combout\ : std_logic;
SIGNAL \RAM_inst|memory~453_q\ : std_logic;
SIGNAL \RAM_inst|memory~2319_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2320_combout\ : std_logic;
SIGNAL \RAM_inst|memory~485_q\ : std_logic;
SIGNAL \RAM_inst|memory~2327_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2328_combout\ : std_logic;
SIGNAL \RAM_inst|memory~517_q\ : std_logic;
SIGNAL \RAM_inst|memory~2166_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2353_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2354_combout\ : std_logic;
SIGNAL \RAM_inst|memory~429_q\ : std_logic;
SIGNAL \RAM_inst|memory~2355_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2356_combout\ : std_logic;
SIGNAL \RAM_inst|memory~461_q\ : std_logic;
SIGNAL \RAM_inst|memory~2357_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2358_combout\ : std_logic;
SIGNAL \RAM_inst|memory~493_q\ : std_logic;
SIGNAL \RAM_inst|memory~2359_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2360_combout\ : std_logic;
SIGNAL \RAM_inst|memory~525_q\ : std_logic;
SIGNAL \RAM_inst|memory~2167_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2168_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2169_combout\ : std_logic;
SIGNAL \wdata[4]~5_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][4]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux11~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux11~2_combout\ : std_logic;
SIGNAL \ram_addr[4]~1_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2237_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2238_combout\ : std_logic;
SIGNAL \RAM_inst|memory~276_q\ : std_logic;
SIGNAL \RAM_inst|memory~404_q\ : std_logic;
SIGNAL \RAM_inst|memory~2128_combout\ : std_logic;
SIGNAL \RAM_inst|memory~52_q\ : std_logic;
SIGNAL \RAM_inst|memory~180_q\ : std_logic;
SIGNAL \RAM_inst|memory~308_q\ : std_logic;
SIGNAL \RAM_inst|memory~436_q\ : std_logic;
SIGNAL \RAM_inst|memory~2129_combout\ : std_logic;
SIGNAL \RAM_inst|memory~84_q\ : std_logic;
SIGNAL \RAM_inst|memory~212_q\ : std_logic;
SIGNAL \RAM_inst|memory~340_q\ : std_logic;
SIGNAL \RAM_inst|memory~468_q\ : std_logic;
SIGNAL \RAM_inst|memory~2130_combout\ : std_logic;
SIGNAL \RAM_inst|memory~116_q\ : std_logic;
SIGNAL \RAM_inst|memory~244_q\ : std_logic;
SIGNAL \RAM_inst|memory~372_q\ : std_logic;
SIGNAL \RAM_inst|memory~500_q\ : std_logic;
SIGNAL \RAM_inst|memory~2131_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2132_combout\ : std_logic;
SIGNAL \RAM_inst|memory~28_q\ : std_logic;
SIGNAL \RAM_inst|memory~156_q\ : std_logic;
SIGNAL \RAM_inst|memory~284_q\ : std_logic;
SIGNAL \RAM_inst|memory~412_q\ : std_logic;
SIGNAL \RAM_inst|memory~2133_combout\ : std_logic;
SIGNAL \RAM_inst|memory~60_q\ : std_logic;
SIGNAL \RAM_inst|memory~188_q\ : std_logic;
SIGNAL \RAM_inst|memory~316_q\ : std_logic;
SIGNAL \RAM_inst|memory~444_q\ : std_logic;
SIGNAL \RAM_inst|memory~2134_combout\ : std_logic;
SIGNAL \RAM_inst|memory~92_q\ : std_logic;
SIGNAL \RAM_inst|memory~220_q\ : std_logic;
SIGNAL \RAM_inst|memory~348_q\ : std_logic;
SIGNAL \RAM_inst|memory~476_q\ : std_logic;
SIGNAL \RAM_inst|memory~2135_combout\ : std_logic;
SIGNAL \RAM_inst|memory~124_q\ : std_logic;
SIGNAL \RAM_inst|memory~252_q\ : std_logic;
SIGNAL \RAM_inst|memory~380_q\ : std_logic;
SIGNAL \RAM_inst|memory~508_q\ : std_logic;
SIGNAL \RAM_inst|memory~2136_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2137_combout\ : std_logic;
SIGNAL \RAM_inst|memory~36_q\ : std_logic;
SIGNAL \RAM_inst|memory~164_q\ : std_logic;
SIGNAL \RAM_inst|memory~292_q\ : std_logic;
SIGNAL \RAM_inst|memory~420_q\ : std_logic;
SIGNAL \RAM_inst|memory~2138_combout\ : std_logic;
SIGNAL \RAM_inst|memory~68_q\ : std_logic;
SIGNAL \RAM_inst|memory~196_q\ : std_logic;
SIGNAL \RAM_inst|memory~324_q\ : std_logic;
SIGNAL \RAM_inst|memory~452_q\ : std_logic;
SIGNAL \RAM_inst|memory~2139_combout\ : std_logic;
SIGNAL \RAM_inst|memory~100_q\ : std_logic;
SIGNAL \RAM_inst|memory~228_q\ : std_logic;
SIGNAL \RAM_inst|memory~356_q\ : std_logic;
SIGNAL \RAM_inst|memory~484_q\ : std_logic;
SIGNAL \RAM_inst|memory~2140_combout\ : std_logic;
SIGNAL \RAM_inst|memory~132_q\ : std_logic;
SIGNAL \RAM_inst|memory~260_q\ : std_logic;
SIGNAL \RAM_inst|memory~388_q\ : std_logic;
SIGNAL \RAM_inst|memory~516_q\ : std_logic;
SIGNAL \RAM_inst|memory~2141_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2142_combout\ : std_logic;
SIGNAL \RAM_inst|memory~44_q\ : std_logic;
SIGNAL \RAM_inst|memory~76_q\ : std_logic;
SIGNAL \RAM_inst|memory~108_q\ : std_logic;
SIGNAL \RAM_inst|memory~140_q\ : std_logic;
SIGNAL \RAM_inst|memory~2143_combout\ : std_logic;
SIGNAL \RAM_inst|memory~172_q\ : std_logic;
SIGNAL \RAM_inst|memory~204_q\ : std_logic;
SIGNAL \RAM_inst|memory~236_q\ : std_logic;
SIGNAL \RAM_inst|memory~268_q\ : std_logic;
SIGNAL \RAM_inst|memory~2144_combout\ : std_logic;
SIGNAL \RAM_inst|memory~300_q\ : std_logic;
SIGNAL \RAM_inst|memory~332_q\ : std_logic;
SIGNAL \RAM_inst|memory~364_q\ : std_logic;
SIGNAL \RAM_inst|memory~396_q\ : std_logic;
SIGNAL \RAM_inst|memory~2145_combout\ : std_logic;
SIGNAL \RAM_inst|memory~428_q\ : std_logic;
SIGNAL \RAM_inst|memory~460_q\ : std_logic;
SIGNAL \RAM_inst|memory~492_q\ : std_logic;
SIGNAL \RAM_inst|memory~524_q\ : std_logic;
SIGNAL \RAM_inst|memory~2146_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2147_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2148_combout\ : std_logic;
SIGNAL \wdata[3]~4_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][3]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux12~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux12~1_combout\ : std_logic;
SIGNAL \ram_addr[3]~2_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2241_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2242_combout\ : std_logic;
SIGNAL \RAM_inst|memory~50_q\ : std_logic;
SIGNAL \RAM_inst|memory~82_q\ : std_logic;
SIGNAL \RAM_inst|memory~114_q\ : std_logic;
SIGNAL \RAM_inst|memory~2086_combout\ : std_logic;
SIGNAL \RAM_inst|memory~26_q\ : std_logic;
SIGNAL \RAM_inst|memory~58_q\ : std_logic;
SIGNAL \RAM_inst|memory~90_q\ : std_logic;
SIGNAL \RAM_inst|memory~122_q\ : std_logic;
SIGNAL \RAM_inst|memory~2087_combout\ : std_logic;
SIGNAL \RAM_inst|memory~34_q\ : std_logic;
SIGNAL \RAM_inst|memory~66_q\ : std_logic;
SIGNAL \RAM_inst|memory~98_q\ : std_logic;
SIGNAL \RAM_inst|memory~130_q\ : std_logic;
SIGNAL \RAM_inst|memory~2088_combout\ : std_logic;
SIGNAL \RAM_inst|memory~42_q\ : std_logic;
SIGNAL \RAM_inst|memory~74_q\ : std_logic;
SIGNAL \RAM_inst|memory~106_q\ : std_logic;
SIGNAL \RAM_inst|memory~138_q\ : std_logic;
SIGNAL \RAM_inst|memory~2089_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2090_combout\ : std_logic;
SIGNAL \RAM_inst|memory~146_q\ : std_logic;
SIGNAL \RAM_inst|memory~178_q\ : std_logic;
SIGNAL \RAM_inst|memory~210_q\ : std_logic;
SIGNAL \RAM_inst|memory~242_q\ : std_logic;
SIGNAL \RAM_inst|memory~2091_combout\ : std_logic;
SIGNAL \RAM_inst|memory~154_q\ : std_logic;
SIGNAL \RAM_inst|memory~186_q\ : std_logic;
SIGNAL \RAM_inst|memory~218_q\ : std_logic;
SIGNAL \RAM_inst|memory~250_q\ : std_logic;
SIGNAL \RAM_inst|memory~2092_combout\ : std_logic;
SIGNAL \RAM_inst|memory~162_q\ : std_logic;
SIGNAL \RAM_inst|memory~194_q\ : std_logic;
SIGNAL \RAM_inst|memory~226_q\ : std_logic;
SIGNAL \RAM_inst|memory~258_q\ : std_logic;
SIGNAL \RAM_inst|memory~2093_combout\ : std_logic;
SIGNAL \RAM_inst|memory~170_q\ : std_logic;
SIGNAL \RAM_inst|memory~202_q\ : std_logic;
SIGNAL \RAM_inst|memory~234_q\ : std_logic;
SIGNAL \RAM_inst|memory~266_q\ : std_logic;
SIGNAL \RAM_inst|memory~2094_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2095_combout\ : std_logic;
SIGNAL \RAM_inst|memory~274_q\ : std_logic;
SIGNAL \RAM_inst|memory~282_q\ : std_logic;
SIGNAL \RAM_inst|memory~290_q\ : std_logic;
SIGNAL \RAM_inst|memory~298_q\ : std_logic;
SIGNAL \RAM_inst|memory~2096_combout\ : std_logic;
SIGNAL \RAM_inst|memory~306_q\ : std_logic;
SIGNAL \RAM_inst|memory~314_q\ : std_logic;
SIGNAL \RAM_inst|memory~322_q\ : std_logic;
SIGNAL \RAM_inst|memory~330_q\ : std_logic;
SIGNAL \RAM_inst|memory~2097_combout\ : std_logic;
SIGNAL \RAM_inst|memory~338_q\ : std_logic;
SIGNAL \RAM_inst|memory~346_q\ : std_logic;
SIGNAL \RAM_inst|memory~354_q\ : std_logic;
SIGNAL \RAM_inst|memory~362_q\ : std_logic;
SIGNAL \RAM_inst|memory~2098_combout\ : std_logic;
SIGNAL \RAM_inst|memory~370_q\ : std_logic;
SIGNAL \RAM_inst|memory~378_q\ : std_logic;
SIGNAL \RAM_inst|memory~386_q\ : std_logic;
SIGNAL \RAM_inst|memory~394_q\ : std_logic;
SIGNAL \RAM_inst|memory~2099_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2100_combout\ : std_logic;
SIGNAL \RAM_inst|memory~402_q\ : std_logic;
SIGNAL \RAM_inst|memory~434_q\ : std_logic;
SIGNAL \RAM_inst|memory~466_q\ : std_logic;
SIGNAL \RAM_inst|memory~498_q\ : std_logic;
SIGNAL \RAM_inst|memory~2101_combout\ : std_logic;
SIGNAL \RAM_inst|memory~410_q\ : std_logic;
SIGNAL \RAM_inst|memory~442_q\ : std_logic;
SIGNAL \RAM_inst|memory~474_q\ : std_logic;
SIGNAL \RAM_inst|memory~506_q\ : std_logic;
SIGNAL \RAM_inst|memory~2102_combout\ : std_logic;
SIGNAL \RAM_inst|memory~418_q\ : std_logic;
SIGNAL \RAM_inst|memory~450_q\ : std_logic;
SIGNAL \RAM_inst|memory~482_q\ : std_logic;
SIGNAL \RAM_inst|memory~514_q\ : std_logic;
SIGNAL \RAM_inst|memory~2103_combout\ : std_logic;
SIGNAL \RAM_inst|memory~426_q\ : std_logic;
SIGNAL \RAM_inst|memory~458_q\ : std_logic;
SIGNAL \RAM_inst|memory~490_q\ : std_logic;
SIGNAL \RAM_inst|memory~522_q\ : std_logic;
SIGNAL \RAM_inst|memory~2104_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2105_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2106_combout\ : std_logic;
SIGNAL \wdata[1]~2_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][1]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux14~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux14~1_combout\ : std_logic;
SIGNAL \ram_addr[1]~4_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2235_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2236_combout\ : std_logic;
SIGNAL \RAM_inst|memory~145_q\ : std_logic;
SIGNAL \RAM_inst|memory~273_q\ : std_logic;
SIGNAL \RAM_inst|memory~401_q\ : std_logic;
SIGNAL \RAM_inst|memory~2065_combout\ : std_logic;
SIGNAL \RAM_inst|memory~49_q\ : std_logic;
SIGNAL \RAM_inst|memory~177_q\ : std_logic;
SIGNAL \RAM_inst|memory~305_q\ : std_logic;
SIGNAL \RAM_inst|memory~433_q\ : std_logic;
SIGNAL \RAM_inst|memory~2066_combout\ : std_logic;
SIGNAL \RAM_inst|memory~81_q\ : std_logic;
SIGNAL \RAM_inst|memory~209_q\ : std_logic;
SIGNAL \RAM_inst|memory~337_q\ : std_logic;
SIGNAL \RAM_inst|memory~465_q\ : std_logic;
SIGNAL \RAM_inst|memory~2067_combout\ : std_logic;
SIGNAL \RAM_inst|memory~113_q\ : std_logic;
SIGNAL \RAM_inst|memory~241_q\ : std_logic;
SIGNAL \RAM_inst|memory~369_q\ : std_logic;
SIGNAL \RAM_inst|memory~497_q\ : std_logic;
SIGNAL \RAM_inst|memory~2068_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2069_combout\ : std_logic;
SIGNAL \RAM_inst|memory~25_q\ : std_logic;
SIGNAL \RAM_inst|memory~153_q\ : std_logic;
SIGNAL \RAM_inst|memory~281_q\ : std_logic;
SIGNAL \RAM_inst|memory~409_q\ : std_logic;
SIGNAL \RAM_inst|memory~2070_combout\ : std_logic;
SIGNAL \RAM_inst|memory~57_q\ : std_logic;
SIGNAL \RAM_inst|memory~185_q\ : std_logic;
SIGNAL \RAM_inst|memory~313_q\ : std_logic;
SIGNAL \RAM_inst|memory~441_q\ : std_logic;
SIGNAL \RAM_inst|memory~2071_combout\ : std_logic;
SIGNAL \RAM_inst|memory~89_q\ : std_logic;
SIGNAL \RAM_inst|memory~217_q\ : std_logic;
SIGNAL \RAM_inst|memory~345_q\ : std_logic;
SIGNAL \RAM_inst|memory~473_q\ : std_logic;
SIGNAL \RAM_inst|memory~2072_combout\ : std_logic;
SIGNAL \RAM_inst|memory~121_q\ : std_logic;
SIGNAL \RAM_inst|memory~249_q\ : std_logic;
SIGNAL \RAM_inst|memory~377_q\ : std_logic;
SIGNAL \RAM_inst|memory~505_q\ : std_logic;
SIGNAL \RAM_inst|memory~2073_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2074_combout\ : std_logic;
SIGNAL \RAM_inst|memory~33_q\ : std_logic;
SIGNAL \RAM_inst|memory~161_q\ : std_logic;
SIGNAL \RAM_inst|memory~289_q\ : std_logic;
SIGNAL \RAM_inst|memory~417_q\ : std_logic;
SIGNAL \RAM_inst|memory~2075_combout\ : std_logic;
SIGNAL \RAM_inst|memory~65_q\ : std_logic;
SIGNAL \RAM_inst|memory~193_q\ : std_logic;
SIGNAL \RAM_inst|memory~321_q\ : std_logic;
SIGNAL \RAM_inst|memory~449_q\ : std_logic;
SIGNAL \RAM_inst|memory~2076_combout\ : std_logic;
SIGNAL \RAM_inst|memory~97_q\ : std_logic;
SIGNAL \RAM_inst|memory~225_q\ : std_logic;
SIGNAL \RAM_inst|memory~353_q\ : std_logic;
SIGNAL \RAM_inst|memory~481_q\ : std_logic;
SIGNAL \RAM_inst|memory~2077_combout\ : std_logic;
SIGNAL \RAM_inst|memory~129_q\ : std_logic;
SIGNAL \RAM_inst|memory~257_q\ : std_logic;
SIGNAL \RAM_inst|memory~385_q\ : std_logic;
SIGNAL \RAM_inst|memory~513_q\ : std_logic;
SIGNAL \RAM_inst|memory~2078_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2079_combout\ : std_logic;
SIGNAL \RAM_inst|memory~41_q\ : std_logic;
SIGNAL \RAM_inst|memory~73_q\ : std_logic;
SIGNAL \RAM_inst|memory~105_q\ : std_logic;
SIGNAL \RAM_inst|memory~137_q\ : std_logic;
SIGNAL \RAM_inst|memory~2080_combout\ : std_logic;
SIGNAL \RAM_inst|memory~169_q\ : std_logic;
SIGNAL \RAM_inst|memory~201_q\ : std_logic;
SIGNAL \RAM_inst|memory~233_q\ : std_logic;
SIGNAL \RAM_inst|memory~265_q\ : std_logic;
SIGNAL \RAM_inst|memory~2081_combout\ : std_logic;
SIGNAL \RAM_inst|memory~297_q\ : std_logic;
SIGNAL \RAM_inst|memory~329_q\ : std_logic;
SIGNAL \RAM_inst|memory~361_q\ : std_logic;
SIGNAL \RAM_inst|memory~393_q\ : std_logic;
SIGNAL \RAM_inst|memory~2082_combout\ : std_logic;
SIGNAL \RAM_inst|memory~425_q\ : std_logic;
SIGNAL \RAM_inst|memory~457_q\ : std_logic;
SIGNAL \RAM_inst|memory~489_q\ : std_logic;
SIGNAL \RAM_inst|memory~521_q\ : std_logic;
SIGNAL \RAM_inst|memory~2083_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2084_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2085_combout\ : std_logic;
SIGNAL \wdata[0]~1_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[2][0]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux15~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux15~1_combout\ : std_logic;
SIGNAL \ram_addr[0]~5_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2233_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2234_combout\ : std_logic;
SIGNAL \RAM_inst|memory~22_q\ : std_logic;
SIGNAL \RAM_inst|memory~30_q\ : std_logic;
SIGNAL \RAM_inst|memory~38_q\ : std_logic;
SIGNAL \RAM_inst|memory~46_q\ : std_logic;
SIGNAL \RAM_inst|memory~2170_combout\ : std_logic;
SIGNAL \RAM_inst|memory~150_q\ : std_logic;
SIGNAL \RAM_inst|memory~158_q\ : std_logic;
SIGNAL \RAM_inst|memory~166_q\ : std_logic;
SIGNAL \RAM_inst|memory~174_q\ : std_logic;
SIGNAL \RAM_inst|memory~2171_combout\ : std_logic;
SIGNAL \RAM_inst|memory~278_q\ : std_logic;
SIGNAL \RAM_inst|memory~286_q\ : std_logic;
SIGNAL \RAM_inst|memory~294_q\ : std_logic;
SIGNAL \RAM_inst|memory~302_q\ : std_logic;
SIGNAL \RAM_inst|memory~2172_combout\ : std_logic;
SIGNAL \RAM_inst|memory~406_q\ : std_logic;
SIGNAL \RAM_inst|memory~414_q\ : std_logic;
SIGNAL \RAM_inst|memory~422_q\ : std_logic;
SIGNAL \RAM_inst|memory~430_q\ : std_logic;
SIGNAL \RAM_inst|memory~2173_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2174_combout\ : std_logic;
SIGNAL \RAM_inst|memory~54_q\ : std_logic;
SIGNAL \RAM_inst|memory~62_q\ : std_logic;
SIGNAL \RAM_inst|memory~70_q\ : std_logic;
SIGNAL \RAM_inst|memory~78_q\ : std_logic;
SIGNAL \RAM_inst|memory~2175_combout\ : std_logic;
SIGNAL \RAM_inst|memory~182_q\ : std_logic;
SIGNAL \RAM_inst|memory~190_q\ : std_logic;
SIGNAL \RAM_inst|memory~198_q\ : std_logic;
SIGNAL \RAM_inst|memory~206_q\ : std_logic;
SIGNAL \RAM_inst|memory~2176_combout\ : std_logic;
SIGNAL \RAM_inst|memory~310_q\ : std_logic;
SIGNAL \RAM_inst|memory~318_q\ : std_logic;
SIGNAL \RAM_inst|memory~326_q\ : std_logic;
SIGNAL \RAM_inst|memory~334_q\ : std_logic;
SIGNAL \RAM_inst|memory~2177_combout\ : std_logic;
SIGNAL \RAM_inst|memory~438_q\ : std_logic;
SIGNAL \RAM_inst|memory~446_q\ : std_logic;
SIGNAL \RAM_inst|memory~454_q\ : std_logic;
SIGNAL \RAM_inst|memory~462_q\ : std_logic;
SIGNAL \RAM_inst|memory~2178_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2179_combout\ : std_logic;
SIGNAL \RAM_inst|memory~86_q\ : std_logic;
SIGNAL \RAM_inst|memory~94_q\ : std_logic;
SIGNAL \RAM_inst|memory~102_q\ : std_logic;
SIGNAL \RAM_inst|memory~110_q\ : std_logic;
SIGNAL \RAM_inst|memory~2180_combout\ : std_logic;
SIGNAL \RAM_inst|memory~214_q\ : std_logic;
SIGNAL \RAM_inst|memory~222_q\ : std_logic;
SIGNAL \RAM_inst|memory~230_q\ : std_logic;
SIGNAL \RAM_inst|memory~238_q\ : std_logic;
SIGNAL \RAM_inst|memory~2181_combout\ : std_logic;
SIGNAL \RAM_inst|memory~342_q\ : std_logic;
SIGNAL \RAM_inst|memory~350_q\ : std_logic;
SIGNAL \RAM_inst|memory~358_q\ : std_logic;
SIGNAL \RAM_inst|memory~366_q\ : std_logic;
SIGNAL \RAM_inst|memory~2182_combout\ : std_logic;
SIGNAL \RAM_inst|memory~470_q\ : std_logic;
SIGNAL \RAM_inst|memory~478_q\ : std_logic;
SIGNAL \RAM_inst|memory~486_q\ : std_logic;
SIGNAL \RAM_inst|memory~494_q\ : std_logic;
SIGNAL \RAM_inst|memory~2183_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2184_combout\ : std_logic;
SIGNAL \RAM_inst|memory~118_q\ : std_logic;
SIGNAL \RAM_inst|memory~246_q\ : std_logic;
SIGNAL \RAM_inst|memory~374_q\ : std_logic;
SIGNAL \RAM_inst|memory~502_q\ : std_logic;
SIGNAL \RAM_inst|memory~2185_combout\ : std_logic;
SIGNAL \RAM_inst|memory~126_q\ : std_logic;
SIGNAL \RAM_inst|memory~254_q\ : std_logic;
SIGNAL \RAM_inst|memory~382_q\ : std_logic;
SIGNAL \RAM_inst|memory~510_q\ : std_logic;
SIGNAL \RAM_inst|memory~2186_combout\ : std_logic;
SIGNAL \RAM_inst|memory~134_q\ : std_logic;
SIGNAL \RAM_inst|memory~262_q\ : std_logic;
SIGNAL \RAM_inst|memory~390_q\ : std_logic;
SIGNAL \RAM_inst|memory~518_q\ : std_logic;
SIGNAL \RAM_inst|memory~2187_combout\ : std_logic;
SIGNAL \RAM_inst|memory~142_q\ : std_logic;
SIGNAL \RAM_inst|memory~270_q\ : std_logic;
SIGNAL \RAM_inst|memory~398_q\ : std_logic;
SIGNAL \RAM_inst|memory~526_q\ : std_logic;
SIGNAL \RAM_inst|memory~2188_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2189_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2190_combout\ : std_logic;
SIGNAL \wdata[5]~6_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][5]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux10~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux10~1_combout\ : std_logic;
SIGNAL \RAM_inst|memory~19_q\ : std_logic;
SIGNAL \RAM_inst|memory~27_q\ : std_logic;
SIGNAL \RAM_inst|memory~35_q\ : std_logic;
SIGNAL \RAM_inst|memory~43_q\ : std_logic;
SIGNAL \RAM_inst|memory~2107_combout\ : std_logic;
SIGNAL \RAM_inst|memory~147_q\ : std_logic;
SIGNAL \RAM_inst|memory~155_q\ : std_logic;
SIGNAL \RAM_inst|memory~163_q\ : std_logic;
SIGNAL \RAM_inst|memory~171_q\ : std_logic;
SIGNAL \RAM_inst|memory~2108_combout\ : std_logic;
SIGNAL \RAM_inst|memory~275_q\ : std_logic;
SIGNAL \RAM_inst|memory~283_q\ : std_logic;
SIGNAL \RAM_inst|memory~291_q\ : std_logic;
SIGNAL \RAM_inst|memory~299_q\ : std_logic;
SIGNAL \RAM_inst|memory~2109_combout\ : std_logic;
SIGNAL \RAM_inst|memory~403_q\ : std_logic;
SIGNAL \RAM_inst|memory~411_q\ : std_logic;
SIGNAL \RAM_inst|memory~419_q\ : std_logic;
SIGNAL \RAM_inst|memory~427_q\ : std_logic;
SIGNAL \RAM_inst|memory~2110_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2111_combout\ : std_logic;
SIGNAL \RAM_inst|memory~51_q\ : std_logic;
SIGNAL \RAM_inst|memory~59_q\ : std_logic;
SIGNAL \RAM_inst|memory~67_q\ : std_logic;
SIGNAL \RAM_inst|memory~75_q\ : std_logic;
SIGNAL \RAM_inst|memory~2112_combout\ : std_logic;
SIGNAL \RAM_inst|memory~179_q\ : std_logic;
SIGNAL \RAM_inst|memory~187_q\ : std_logic;
SIGNAL \RAM_inst|memory~195_q\ : std_logic;
SIGNAL \RAM_inst|memory~203_q\ : std_logic;
SIGNAL \RAM_inst|memory~2113_combout\ : std_logic;
SIGNAL \RAM_inst|memory~307_q\ : std_logic;
SIGNAL \RAM_inst|memory~315_q\ : std_logic;
SIGNAL \RAM_inst|memory~323_q\ : std_logic;
SIGNAL \RAM_inst|memory~331_q\ : std_logic;
SIGNAL \RAM_inst|memory~2114_combout\ : std_logic;
SIGNAL \RAM_inst|memory~435_q\ : std_logic;
SIGNAL \RAM_inst|memory~443_q\ : std_logic;
SIGNAL \RAM_inst|memory~451_q\ : std_logic;
SIGNAL \RAM_inst|memory~459_q\ : std_logic;
SIGNAL \RAM_inst|memory~2115_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2116_combout\ : std_logic;
SIGNAL \RAM_inst|memory~83_q\ : std_logic;
SIGNAL \RAM_inst|memory~91_q\ : std_logic;
SIGNAL \RAM_inst|memory~99_q\ : std_logic;
SIGNAL \RAM_inst|memory~107_q\ : std_logic;
SIGNAL \RAM_inst|memory~2117_combout\ : std_logic;
SIGNAL \RAM_inst|memory~211_q\ : std_logic;
SIGNAL \RAM_inst|memory~219_q\ : std_logic;
SIGNAL \RAM_inst|memory~227_q\ : std_logic;
SIGNAL \RAM_inst|memory~235_q\ : std_logic;
SIGNAL \RAM_inst|memory~2118_combout\ : std_logic;
SIGNAL \RAM_inst|memory~339_q\ : std_logic;
SIGNAL \RAM_inst|memory~347_q\ : std_logic;
SIGNAL \RAM_inst|memory~355_q\ : std_logic;
SIGNAL \RAM_inst|memory~363_q\ : std_logic;
SIGNAL \RAM_inst|memory~2119_combout\ : std_logic;
SIGNAL \RAM_inst|memory~467_q\ : std_logic;
SIGNAL \RAM_inst|memory~475_q\ : std_logic;
SIGNAL \RAM_inst|memory~483_q\ : std_logic;
SIGNAL \RAM_inst|memory~491_q\ : std_logic;
SIGNAL \RAM_inst|memory~2120_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2121_combout\ : std_logic;
SIGNAL \RAM_inst|memory~115_q\ : std_logic;
SIGNAL \RAM_inst|memory~243_q\ : std_logic;
SIGNAL \RAM_inst|memory~371_q\ : std_logic;
SIGNAL \RAM_inst|memory~499_q\ : std_logic;
SIGNAL \RAM_inst|memory~2122_combout\ : std_logic;
SIGNAL \RAM_inst|memory~123_q\ : std_logic;
SIGNAL \RAM_inst|memory~251_q\ : std_logic;
SIGNAL \RAM_inst|memory~379_q\ : std_logic;
SIGNAL \RAM_inst|memory~507_q\ : std_logic;
SIGNAL \RAM_inst|memory~2123_combout\ : std_logic;
SIGNAL \RAM_inst|memory~131_q\ : std_logic;
SIGNAL \RAM_inst|memory~259_q\ : std_logic;
SIGNAL \RAM_inst|memory~387_q\ : std_logic;
SIGNAL \RAM_inst|memory~515_q\ : std_logic;
SIGNAL \RAM_inst|memory~2124_combout\ : std_logic;
SIGNAL \RAM_inst|memory~139_q\ : std_logic;
SIGNAL \RAM_inst|memory~267_q\ : std_logic;
SIGNAL \RAM_inst|memory~395_q\ : std_logic;
SIGNAL \RAM_inst|memory~523_q\ : std_logic;
SIGNAL \RAM_inst|memory~2125_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2126_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2127_combout\ : std_logic;
SIGNAL \wdata[2]~3_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][2]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[0][2]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][2]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][2]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux5~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~6\ : std_logic;
SIGNAL \ALU_inst|Add0~10\ : std_logic;
SIGNAL \ALU_inst|Add0~14\ : std_logic;
SIGNAL \ALU_inst|Add0~18\ : std_logic;
SIGNAL \ALU_inst|Add0~21_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~7_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~1_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~2_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~8_combout\ : std_logic;
SIGNAL \PC_inst|Add0~2\ : std_logic;
SIGNAL \PC_inst|Add0~6\ : std_logic;
SIGNAL \PC_inst|Add0~10\ : std_logic;
SIGNAL \PC_inst|Add0~14\ : std_logic;
SIGNAL \PC_inst|Add0~18\ : std_logic;
SIGNAL \PC_inst|Add0~22\ : std_logic;
SIGNAL \PC_inst|Add0~25_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~12_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux6~2_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[0][6]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][6]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][6]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux9~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~22\ : std_logic;
SIGNAL \ALU_inst|Add0~25_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux1~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~23_q\ : std_logic;
SIGNAL \RAM_inst|memory~151_q\ : std_logic;
SIGNAL \RAM_inst|memory~279_q\ : std_logic;
SIGNAL \RAM_inst|memory~407_q\ : std_logic;
SIGNAL \RAM_inst|memory~2191_combout\ : std_logic;
SIGNAL \RAM_inst|memory~55_q\ : std_logic;
SIGNAL \RAM_inst|memory~183_q\ : std_logic;
SIGNAL \RAM_inst|memory~311_q\ : std_logic;
SIGNAL \RAM_inst|memory~439_q\ : std_logic;
SIGNAL \RAM_inst|memory~2192_combout\ : std_logic;
SIGNAL \RAM_inst|memory~87_q\ : std_logic;
SIGNAL \RAM_inst|memory~215_q\ : std_logic;
SIGNAL \RAM_inst|memory~343_q\ : std_logic;
SIGNAL \RAM_inst|memory~471_q\ : std_logic;
SIGNAL \RAM_inst|memory~2193_combout\ : std_logic;
SIGNAL \RAM_inst|memory~119_q\ : std_logic;
SIGNAL \RAM_inst|memory~247_q\ : std_logic;
SIGNAL \RAM_inst|memory~375_q\ : std_logic;
SIGNAL \RAM_inst|memory~503_q\ : std_logic;
SIGNAL \RAM_inst|memory~2194_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2195_combout\ : std_logic;
SIGNAL \RAM_inst|memory~31_q\ : std_logic;
SIGNAL \RAM_inst|memory~159_q\ : std_logic;
SIGNAL \RAM_inst|memory~287_q\ : std_logic;
SIGNAL \RAM_inst|memory~415_q\ : std_logic;
SIGNAL \RAM_inst|memory~2196_combout\ : std_logic;
SIGNAL \RAM_inst|memory~63_q\ : std_logic;
SIGNAL \RAM_inst|memory~191_q\ : std_logic;
SIGNAL \RAM_inst|memory~319_q\ : std_logic;
SIGNAL \RAM_inst|memory~447_q\ : std_logic;
SIGNAL \RAM_inst|memory~2197_combout\ : std_logic;
SIGNAL \RAM_inst|memory~95_q\ : std_logic;
SIGNAL \RAM_inst|memory~223_q\ : std_logic;
SIGNAL \RAM_inst|memory~351_q\ : std_logic;
SIGNAL \RAM_inst|memory~479_q\ : std_logic;
SIGNAL \RAM_inst|memory~2198_combout\ : std_logic;
SIGNAL \RAM_inst|memory~127_q\ : std_logic;
SIGNAL \RAM_inst|memory~255_q\ : std_logic;
SIGNAL \RAM_inst|memory~383_q\ : std_logic;
SIGNAL \RAM_inst|memory~511_q\ : std_logic;
SIGNAL \RAM_inst|memory~2199_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2200_combout\ : std_logic;
SIGNAL \RAM_inst|memory~39_q\ : std_logic;
SIGNAL \RAM_inst|memory~167_q\ : std_logic;
SIGNAL \RAM_inst|memory~295_q\ : std_logic;
SIGNAL \RAM_inst|memory~423_q\ : std_logic;
SIGNAL \RAM_inst|memory~2201_combout\ : std_logic;
SIGNAL \RAM_inst|memory~71_q\ : std_logic;
SIGNAL \RAM_inst|memory~199_q\ : std_logic;
SIGNAL \RAM_inst|memory~327_q\ : std_logic;
SIGNAL \RAM_inst|memory~455_q\ : std_logic;
SIGNAL \RAM_inst|memory~2202_combout\ : std_logic;
SIGNAL \RAM_inst|memory~103_q\ : std_logic;
SIGNAL \RAM_inst|memory~231_q\ : std_logic;
SIGNAL \RAM_inst|memory~359_q\ : std_logic;
SIGNAL \RAM_inst|memory~487_q\ : std_logic;
SIGNAL \RAM_inst|memory~2203_combout\ : std_logic;
SIGNAL \RAM_inst|memory~135_q\ : std_logic;
SIGNAL \RAM_inst|memory~263_q\ : std_logic;
SIGNAL \RAM_inst|memory~391_q\ : std_logic;
SIGNAL \RAM_inst|memory~519_q\ : std_logic;
SIGNAL \RAM_inst|memory~2204_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2205_combout\ : std_logic;
SIGNAL \RAM_inst|memory~47_q\ : std_logic;
SIGNAL \RAM_inst|memory~79_q\ : std_logic;
SIGNAL \RAM_inst|memory~111_q\ : std_logic;
SIGNAL \RAM_inst|memory~143_q\ : std_logic;
SIGNAL \RAM_inst|memory~2206_combout\ : std_logic;
SIGNAL \RAM_inst|memory~175_q\ : std_logic;
SIGNAL \RAM_inst|memory~207_q\ : std_logic;
SIGNAL \RAM_inst|memory~239_q\ : std_logic;
SIGNAL \RAM_inst|memory~271_q\ : std_logic;
SIGNAL \RAM_inst|memory~2207_combout\ : std_logic;
SIGNAL \RAM_inst|memory~303_q\ : std_logic;
SIGNAL \RAM_inst|memory~335_q\ : std_logic;
SIGNAL \RAM_inst|memory~367_q\ : std_logic;
SIGNAL \RAM_inst|memory~399_q\ : std_logic;
SIGNAL \RAM_inst|memory~2208_combout\ : std_logic;
SIGNAL \RAM_inst|memory~431_q\ : std_logic;
SIGNAL \RAM_inst|memory~463_q\ : std_logic;
SIGNAL \RAM_inst|memory~495_q\ : std_logic;
SIGNAL \RAM_inst|memory~527_q\ : std_logic;
SIGNAL \RAM_inst|memory~2209_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2210_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2211_combout\ : std_logic;
SIGNAL \wdata[6]~7_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][6]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux1~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~6\ : std_logic;
SIGNAL \ALU_inst|Add1~10\ : std_logic;
SIGNAL \ALU_inst|Add1~14\ : std_logic;
SIGNAL \ALU_inst|Add1~18\ : std_logic;
SIGNAL \ALU_inst|Add1~22\ : std_logic;
SIGNAL \ALU_inst|Add1~25_sumout\ : std_logic;
SIGNAL \RegBank_inst|regs[0][7]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[3][7]~q\ : std_logic;
SIGNAL \RegBank_inst|regs[2][7]~q\ : std_logic;
SIGNAL \MuxULA_inst|Mux8~3_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~26\ : std_logic;
SIGNAL \ALU_inst|Add0~29_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux0~0_combout\ : std_logic;
SIGNAL \RAM_inst|memory~24_q\ : std_logic;
SIGNAL \RAM_inst|memory~32_q\ : std_logic;
SIGNAL \RAM_inst|memory~40_q\ : std_logic;
SIGNAL \RAM_inst|memory~48_q\ : std_logic;
SIGNAL \RAM_inst|memory~2212_combout\ : std_logic;
SIGNAL \RAM_inst|memory~56_q\ : std_logic;
SIGNAL \RAM_inst|memory~64_q\ : std_logic;
SIGNAL \RAM_inst|memory~72_q\ : std_logic;
SIGNAL \RAM_inst|memory~80_q\ : std_logic;
SIGNAL \RAM_inst|memory~2213_combout\ : std_logic;
SIGNAL \RAM_inst|memory~88_q\ : std_logic;
SIGNAL \RAM_inst|memory~96_q\ : std_logic;
SIGNAL \RAM_inst|memory~104_q\ : std_logic;
SIGNAL \RAM_inst|memory~112_q\ : std_logic;
SIGNAL \RAM_inst|memory~2214_combout\ : std_logic;
SIGNAL \RAM_inst|memory~120_q\ : std_logic;
SIGNAL \RAM_inst|memory~128_q\ : std_logic;
SIGNAL \RAM_inst|memory~136_q\ : std_logic;
SIGNAL \RAM_inst|memory~144_q\ : std_logic;
SIGNAL \RAM_inst|memory~2215_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2216_combout\ : std_logic;
SIGNAL \RAM_inst|memory~152_q\ : std_logic;
SIGNAL \RAM_inst|memory~160_q\ : std_logic;
SIGNAL \RAM_inst|memory~168_q\ : std_logic;
SIGNAL \RAM_inst|memory~176_q\ : std_logic;
SIGNAL \RAM_inst|memory~2217_combout\ : std_logic;
SIGNAL \RAM_inst|memory~184_q\ : std_logic;
SIGNAL \RAM_inst|memory~192_q\ : std_logic;
SIGNAL \RAM_inst|memory~200_q\ : std_logic;
SIGNAL \RAM_inst|memory~208_q\ : std_logic;
SIGNAL \RAM_inst|memory~2218_combout\ : std_logic;
SIGNAL \RAM_inst|memory~216_q\ : std_logic;
SIGNAL \RAM_inst|memory~224_q\ : std_logic;
SIGNAL \RAM_inst|memory~232_q\ : std_logic;
SIGNAL \RAM_inst|memory~240_q\ : std_logic;
SIGNAL \RAM_inst|memory~2219_combout\ : std_logic;
SIGNAL \RAM_inst|memory~248_q\ : std_logic;
SIGNAL \RAM_inst|memory~256_q\ : std_logic;
SIGNAL \RAM_inst|memory~264_q\ : std_logic;
SIGNAL \RAM_inst|memory~272_q\ : std_logic;
SIGNAL \RAM_inst|memory~2220_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2221_combout\ : std_logic;
SIGNAL \RAM_inst|memory~280_q\ : std_logic;
SIGNAL \RAM_inst|memory~312_q\ : std_logic;
SIGNAL \RAM_inst|memory~344_q\ : std_logic;
SIGNAL \RAM_inst|memory~376_q\ : std_logic;
SIGNAL \RAM_inst|memory~2222_combout\ : std_logic;
SIGNAL \RAM_inst|memory~288_q\ : std_logic;
SIGNAL \RAM_inst|memory~320_q\ : std_logic;
SIGNAL \RAM_inst|memory~352_q\ : std_logic;
SIGNAL \RAM_inst|memory~384_q\ : std_logic;
SIGNAL \RAM_inst|memory~2223_combout\ : std_logic;
SIGNAL \RAM_inst|memory~296_q\ : std_logic;
SIGNAL \RAM_inst|memory~328_q\ : std_logic;
SIGNAL \RAM_inst|memory~360_q\ : std_logic;
SIGNAL \RAM_inst|memory~392_q\ : std_logic;
SIGNAL \RAM_inst|memory~2224_combout\ : std_logic;
SIGNAL \RAM_inst|memory~304_q\ : std_logic;
SIGNAL \RAM_inst|memory~336_q\ : std_logic;
SIGNAL \RAM_inst|memory~368_q\ : std_logic;
SIGNAL \RAM_inst|memory~400_q\ : std_logic;
SIGNAL \RAM_inst|memory~2225_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2226_combout\ : std_logic;
SIGNAL \RAM_inst|memory~408_q\ : std_logic;
SIGNAL \RAM_inst|memory~416_q\ : std_logic;
SIGNAL \RAM_inst|memory~424_q\ : std_logic;
SIGNAL \RAM_inst|memory~432_q\ : std_logic;
SIGNAL \RAM_inst|memory~2227_combout\ : std_logic;
SIGNAL \RAM_inst|memory~440_q\ : std_logic;
SIGNAL \RAM_inst|memory~448_q\ : std_logic;
SIGNAL \RAM_inst|memory~456_q\ : std_logic;
SIGNAL \RAM_inst|memory~464_q\ : std_logic;
SIGNAL \RAM_inst|memory~2228_combout\ : std_logic;
SIGNAL \RAM_inst|memory~472_q\ : std_logic;
SIGNAL \RAM_inst|memory~480_q\ : std_logic;
SIGNAL \RAM_inst|memory~488_q\ : std_logic;
SIGNAL \RAM_inst|memory~496_q\ : std_logic;
SIGNAL \RAM_inst|memory~2229_combout\ : std_logic;
SIGNAL \RAM_inst|memory~504_q\ : std_logic;
SIGNAL \RAM_inst|memory~512_q\ : std_logic;
SIGNAL \RAM_inst|memory~520_q\ : std_logic;
SIGNAL \RAM_inst|memory~528_q\ : std_logic;
SIGNAL \RAM_inst|memory~2230_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2231_combout\ : std_logic;
SIGNAL \RAM_inst|memory~2232_combout\ : std_logic;
SIGNAL \wdata[7]~8_combout\ : std_logic;
SIGNAL \RegBank_inst|regs[1][7]~q\ : std_logic;
SIGNAL \RegBank_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~26\ : std_logic;
SIGNAL \ALU_inst|Add1~29_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~0_combout\ : std_logic;
SIGNAL \PC_inst|Add0~26\ : std_logic;
SIGNAL \PC_inst|Add0~29_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~13_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~21_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux2~0_combout\ : std_logic;
SIGNAL \PC_inst|Add0~21_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~11_combout\ : std_logic;
SIGNAL \ROM_inst|rom~12_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux8~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|Mux13~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~9_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~9_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux5~2_combout\ : std_logic;
SIGNAL \PC_inst|pc_v~3_combout\ : std_logic;
SIGNAL \PC_inst|Add0~9_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~6_combout\ : std_logic;
SIGNAL \ROM_inst|rom~1_combout\ : std_logic;
SIGNAL \ROM_inst|rom~2_combout\ : std_logic;
SIGNAL \PC_inst|Add0~5_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~5_combout\ : std_logic;
SIGNAL \ROM_inst|rom~9_combout\ : std_logic;
SIGNAL \ALU_inst|Mux5~1_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~17_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~17_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux3~0_combout\ : std_logic;
SIGNAL \PC_inst|Add0~17_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~10_combout\ : std_logic;
SIGNAL \ROM_inst|rom~0_combout\ : std_logic;
SIGNAL \ROM_inst|rom~10_combout\ : std_logic;
SIGNAL \ALU_inst|Mux5~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~13_sumout\ : std_logic;
SIGNAL \ALU_inst|Add0~13_sumout\ : std_logic;
SIGNAL \ALU_inst|Mux4~0_combout\ : std_logic;
SIGNAL \PC_inst|Add0~13_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~9_combout\ : std_logic;
SIGNAL \ROM_inst|rom~15_combout\ : std_logic;
SIGNAL \PC_inst|Add0~1_sumout\ : std_logic;
SIGNAL \PC_inst|pc_v~4_combout\ : std_logic;
SIGNAL \PC_inst|pc_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM_inst|ALT_INV_rom~15_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_ram_addr[5]~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2359_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2357_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2355_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2353_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2351_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2349_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2347_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2345_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2343_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2341_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2339_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2337_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2335_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2333_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2331_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2329_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2327_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2325_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2323_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2321_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2319_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2317_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2315_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2313_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2311_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2309_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2307_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2305_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2303_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2301_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2299_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2297_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2295_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2293_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2291_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2289_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2287_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2285_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2283_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2281_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2279_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2277_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2275_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2273_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2271_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2269_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2267_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2265_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2263_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2261_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2259_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2257_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2255_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2253_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2251_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2249_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2247_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2245_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2243_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2241_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2239_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2237_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2235_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2233_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2232_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2231_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2230_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~528_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~520_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~512_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~504_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2229_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~496_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~488_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~480_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~472_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2228_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~464_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~456_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~448_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~440_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2227_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~432_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~424_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~416_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~408_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2226_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2225_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~400_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~368_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~336_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~304_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2224_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~392_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~360_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~328_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~296_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2223_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~384_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~352_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~320_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~288_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2222_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~376_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~344_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~312_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~280_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2221_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2220_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~272_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~264_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~256_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~248_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2219_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~240_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~232_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~224_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~216_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2218_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~208_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~200_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~192_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~184_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2217_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~176_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~168_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~160_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~152_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2216_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2215_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~144_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~136_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~128_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~120_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2214_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~112_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~104_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~96_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~88_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2213_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~80_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~72_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~64_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~56_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2212_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~48_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~40_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~32_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~24_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2211_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2210_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2209_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~527_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~495_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~463_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~431_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2208_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~399_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~367_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~335_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~303_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2207_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~271_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~239_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~207_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~175_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2206_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~143_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~111_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~79_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~47_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2205_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2204_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~519_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~391_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~263_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~135_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2203_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~487_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~359_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~231_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~103_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2202_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~455_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~327_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~199_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~71_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2201_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~423_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~295_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~167_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~39_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2200_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2199_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~511_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~383_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~255_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~127_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2198_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~479_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~351_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~223_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~95_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2197_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~447_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~319_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~191_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~63_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2196_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~415_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~287_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~159_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~31_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2195_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2194_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~503_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~375_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~247_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~119_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2193_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~471_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~343_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~215_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~87_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2192_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~439_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~311_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~183_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~55_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2191_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~407_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~279_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~151_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~23_q\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2190_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2189_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2188_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~526_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~398_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~270_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~142_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2187_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~518_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~390_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~262_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~134_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2186_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~510_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~382_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~254_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~126_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2185_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~502_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~374_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~246_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~118_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2184_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2183_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~494_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~486_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~478_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~470_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2182_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~366_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~358_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~350_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~342_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2181_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~238_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~230_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~222_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~214_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2180_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~110_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~102_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~94_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~86_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2179_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2178_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~462_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~454_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~446_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~438_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2177_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~334_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~326_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~318_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~310_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2176_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~206_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~198_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~190_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~182_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2175_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~78_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~70_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~62_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~54_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2174_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2173_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~430_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~422_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~414_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~406_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2172_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~302_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~294_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~286_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~278_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2171_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~174_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~166_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~158_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~150_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2170_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~46_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~38_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~30_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~22_q\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2169_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2168_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2167_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~525_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~493_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~461_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~429_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2166_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~517_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~485_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~453_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~421_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2165_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~509_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~477_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~445_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~413_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2164_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~501_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~469_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~437_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~405_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2163_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2162_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~397_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~389_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~381_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~373_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2161_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~365_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~357_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~349_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~341_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2160_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~333_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~325_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~317_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~309_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2159_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~301_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~293_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~285_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~277_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2158_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2157_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~269_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~237_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~205_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~173_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2156_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~261_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~229_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~197_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~165_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2155_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~253_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~221_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~189_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~157_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2154_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~245_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~213_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~181_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~149_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2153_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2152_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~141_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~109_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~77_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~45_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2151_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~133_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~101_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~69_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~37_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2150_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~125_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~93_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~61_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~29_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2149_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~117_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~85_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~53_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~21_q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2148_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2147_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2146_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~524_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~492_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~460_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~428_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2145_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~396_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~364_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~332_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~300_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2144_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~268_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~236_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~204_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~172_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2143_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~140_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~108_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~76_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~44_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2142_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2141_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~516_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~388_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~260_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~132_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2140_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~484_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~356_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~228_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~100_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2139_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~452_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~324_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~196_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~68_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2138_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~420_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~292_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~164_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~36_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2137_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2136_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~508_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~380_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~252_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~124_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2135_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~476_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~348_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~220_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~92_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2134_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~444_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~316_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~188_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~60_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2133_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~412_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~284_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~156_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~28_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2132_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2131_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~500_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~372_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~244_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~116_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2130_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~468_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~340_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~212_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~84_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2129_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~436_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~308_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~180_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~52_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2128_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~404_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~276_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~148_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~20_q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2127_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2126_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2125_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~523_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~395_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~267_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~139_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2124_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~515_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~387_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~259_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~131_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2123_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~507_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~379_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~251_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~123_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2122_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~499_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~371_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~243_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~115_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2121_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2120_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~491_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~483_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~475_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~467_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2119_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~363_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~355_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~347_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~339_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2118_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~235_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~227_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~219_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~211_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2117_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~107_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~99_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~91_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~83_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2116_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2115_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~459_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~451_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~443_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~435_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2114_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~331_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~323_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~315_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~307_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2113_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~203_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~195_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~187_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~179_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2112_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~75_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~67_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~59_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~51_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2111_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2110_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~427_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~419_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~411_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~403_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2109_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~299_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~291_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~283_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~275_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2108_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~171_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~163_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~155_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~147_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2107_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~43_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~35_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~27_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~19_q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2106_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2105_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2104_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~522_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~490_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~458_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~426_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2103_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~514_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~482_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~450_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~418_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2102_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~506_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~474_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~442_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~410_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2101_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~498_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~466_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~434_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~402_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2100_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2099_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~394_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~386_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~378_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~370_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2098_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~362_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~354_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~346_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~338_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2097_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~330_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~322_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~314_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~306_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2096_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~298_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~290_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~282_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~274_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2095_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2094_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~266_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~234_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~202_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~170_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2093_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~258_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~226_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~194_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~162_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2092_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~250_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~218_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~186_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~154_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2091_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~242_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~210_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~178_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~146_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2090_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2089_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~138_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~106_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~74_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~42_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2088_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~130_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~98_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~66_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~34_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2087_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~122_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~90_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~58_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~26_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2086_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~114_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~82_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~50_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~18_q\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_wdata[0]~0_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2085_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2084_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2083_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~521_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~489_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~457_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~425_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2082_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~393_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~361_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~329_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~297_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2081_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~265_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~233_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~201_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~169_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2080_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~137_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~105_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~73_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~41_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2079_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2078_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~513_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~385_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~257_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~129_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2077_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~481_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~353_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~225_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~97_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2076_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~449_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~321_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~193_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~65_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2075_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~417_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~289_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~161_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~33_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2074_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2073_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~505_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~377_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~249_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~121_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2072_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~473_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~345_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~217_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~89_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2071_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~441_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~313_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~185_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~57_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2070_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~409_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~281_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~153_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~25_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2069_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2068_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~497_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~369_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~241_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~113_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2067_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~465_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~337_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~209_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~81_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2066_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~433_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~305_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~177_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~49_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~2065_combout\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~401_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~273_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~145_q\ : std_logic;
SIGNAL \RAM_inst|ALT_INV_memory~17_q\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~8_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~7_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~3_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~2_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~1_combout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_pc_v~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][6]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][7]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][5]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][5]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][5]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][5]~q\ : std_logic;
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
SIGNAL \ALU_inst|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux13~0_combout\ : std_logic;
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
SIGNAL \MuxULA_inst|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_raddr2[1]~0_combout\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[3][0]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[0][0]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[1][0]~q\ : std_logic;
SIGNAL \RegBank_inst|ALT_INV_regs[2][0]~q\ : std_logic;
SIGNAL \ALU_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~14_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~13_combout\ : std_logic;
SIGNAL \ROM_inst|ALT_INV_rom~12_combout\ : std_logic;
SIGNAL \MuxULA_inst|ALT_INV_Mux8~0_combout\ : std_logic;
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
SIGNAL \PC_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PC_inst|ALT_INV_Add0~1_sumout\ : std_logic;
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
\ROM_inst|ALT_INV_rom~15_combout\ <= NOT \ROM_inst|rom~15_combout\;
\ALT_INV_ram_addr[0]~5_combout\ <= NOT \ram_addr[0]~5_combout\;
\ALT_INV_ram_addr[1]~4_combout\ <= NOT \ram_addr[1]~4_combout\;
\ALT_INV_ram_addr[2]~3_combout\ <= NOT \ram_addr[2]~3_combout\;
\ALT_INV_ram_addr[3]~2_combout\ <= NOT \ram_addr[3]~2_combout\;
\ALT_INV_ram_addr[4]~1_combout\ <= NOT \ram_addr[4]~1_combout\;
\ALT_INV_ram_addr[5]~0_combout\ <= NOT \ram_addr[5]~0_combout\;
\RAM_inst|ALT_INV_memory~2359_combout\ <= NOT \RAM_inst|memory~2359_combout\;
\RAM_inst|ALT_INV_memory~2357_combout\ <= NOT \RAM_inst|memory~2357_combout\;
\RAM_inst|ALT_INV_memory~2355_combout\ <= NOT \RAM_inst|memory~2355_combout\;
\RAM_inst|ALT_INV_memory~2353_combout\ <= NOT \RAM_inst|memory~2353_combout\;
\RAM_inst|ALT_INV_memory~2351_combout\ <= NOT \RAM_inst|memory~2351_combout\;
\RAM_inst|ALT_INV_memory~2349_combout\ <= NOT \RAM_inst|memory~2349_combout\;
\RAM_inst|ALT_INV_memory~2347_combout\ <= NOT \RAM_inst|memory~2347_combout\;
\RAM_inst|ALT_INV_memory~2345_combout\ <= NOT \RAM_inst|memory~2345_combout\;
\RAM_inst|ALT_INV_memory~2343_combout\ <= NOT \RAM_inst|memory~2343_combout\;
\RAM_inst|ALT_INV_memory~2341_combout\ <= NOT \RAM_inst|memory~2341_combout\;
\RAM_inst|ALT_INV_memory~2339_combout\ <= NOT \RAM_inst|memory~2339_combout\;
\RAM_inst|ALT_INV_memory~2337_combout\ <= NOT \RAM_inst|memory~2337_combout\;
\RAM_inst|ALT_INV_memory~2335_combout\ <= NOT \RAM_inst|memory~2335_combout\;
\RAM_inst|ALT_INV_memory~2333_combout\ <= NOT \RAM_inst|memory~2333_combout\;
\RAM_inst|ALT_INV_memory~2331_combout\ <= NOT \RAM_inst|memory~2331_combout\;
\RAM_inst|ALT_INV_memory~2329_combout\ <= NOT \RAM_inst|memory~2329_combout\;
\RAM_inst|ALT_INV_memory~2327_combout\ <= NOT \RAM_inst|memory~2327_combout\;
\RAM_inst|ALT_INV_memory~2325_combout\ <= NOT \RAM_inst|memory~2325_combout\;
\RAM_inst|ALT_INV_memory~2323_combout\ <= NOT \RAM_inst|memory~2323_combout\;
\RAM_inst|ALT_INV_memory~2321_combout\ <= NOT \RAM_inst|memory~2321_combout\;
\RAM_inst|ALT_INV_memory~2319_combout\ <= NOT \RAM_inst|memory~2319_combout\;
\RAM_inst|ALT_INV_memory~2317_combout\ <= NOT \RAM_inst|memory~2317_combout\;
\RAM_inst|ALT_INV_memory~2315_combout\ <= NOT \RAM_inst|memory~2315_combout\;
\RAM_inst|ALT_INV_memory~2313_combout\ <= NOT \RAM_inst|memory~2313_combout\;
\RAM_inst|ALT_INV_memory~2311_combout\ <= NOT \RAM_inst|memory~2311_combout\;
\RAM_inst|ALT_INV_memory~2309_combout\ <= NOT \RAM_inst|memory~2309_combout\;
\RAM_inst|ALT_INV_memory~2307_combout\ <= NOT \RAM_inst|memory~2307_combout\;
\RAM_inst|ALT_INV_memory~2305_combout\ <= NOT \RAM_inst|memory~2305_combout\;
\RAM_inst|ALT_INV_memory~2303_combout\ <= NOT \RAM_inst|memory~2303_combout\;
\RAM_inst|ALT_INV_memory~2301_combout\ <= NOT \RAM_inst|memory~2301_combout\;
\RAM_inst|ALT_INV_memory~2299_combout\ <= NOT \RAM_inst|memory~2299_combout\;
\RAM_inst|ALT_INV_memory~2297_combout\ <= NOT \RAM_inst|memory~2297_combout\;
\RAM_inst|ALT_INV_memory~2295_combout\ <= NOT \RAM_inst|memory~2295_combout\;
\RAM_inst|ALT_INV_memory~2293_combout\ <= NOT \RAM_inst|memory~2293_combout\;
\RAM_inst|ALT_INV_memory~2291_combout\ <= NOT \RAM_inst|memory~2291_combout\;
\RAM_inst|ALT_INV_memory~2289_combout\ <= NOT \RAM_inst|memory~2289_combout\;
\RAM_inst|ALT_INV_memory~2287_combout\ <= NOT \RAM_inst|memory~2287_combout\;
\RAM_inst|ALT_INV_memory~2285_combout\ <= NOT \RAM_inst|memory~2285_combout\;
\RAM_inst|ALT_INV_memory~2283_combout\ <= NOT \RAM_inst|memory~2283_combout\;
\RAM_inst|ALT_INV_memory~2281_combout\ <= NOT \RAM_inst|memory~2281_combout\;
\RAM_inst|ALT_INV_memory~2279_combout\ <= NOT \RAM_inst|memory~2279_combout\;
\RAM_inst|ALT_INV_memory~2277_combout\ <= NOT \RAM_inst|memory~2277_combout\;
\RAM_inst|ALT_INV_memory~2275_combout\ <= NOT \RAM_inst|memory~2275_combout\;
\RAM_inst|ALT_INV_memory~2273_combout\ <= NOT \RAM_inst|memory~2273_combout\;
\RAM_inst|ALT_INV_memory~2271_combout\ <= NOT \RAM_inst|memory~2271_combout\;
\RAM_inst|ALT_INV_memory~2269_combout\ <= NOT \RAM_inst|memory~2269_combout\;
\RAM_inst|ALT_INV_memory~2267_combout\ <= NOT \RAM_inst|memory~2267_combout\;
\RAM_inst|ALT_INV_memory~2265_combout\ <= NOT \RAM_inst|memory~2265_combout\;
\RAM_inst|ALT_INV_memory~2263_combout\ <= NOT \RAM_inst|memory~2263_combout\;
\RAM_inst|ALT_INV_memory~2261_combout\ <= NOT \RAM_inst|memory~2261_combout\;
\RAM_inst|ALT_INV_memory~2259_combout\ <= NOT \RAM_inst|memory~2259_combout\;
\RAM_inst|ALT_INV_memory~2257_combout\ <= NOT \RAM_inst|memory~2257_combout\;
\RAM_inst|ALT_INV_memory~2255_combout\ <= NOT \RAM_inst|memory~2255_combout\;
\RAM_inst|ALT_INV_memory~2253_combout\ <= NOT \RAM_inst|memory~2253_combout\;
\RAM_inst|ALT_INV_memory~2251_combout\ <= NOT \RAM_inst|memory~2251_combout\;
\RAM_inst|ALT_INV_memory~2249_combout\ <= NOT \RAM_inst|memory~2249_combout\;
\RAM_inst|ALT_INV_memory~2247_combout\ <= NOT \RAM_inst|memory~2247_combout\;
\RAM_inst|ALT_INV_memory~2245_combout\ <= NOT \RAM_inst|memory~2245_combout\;
\RAM_inst|ALT_INV_memory~2243_combout\ <= NOT \RAM_inst|memory~2243_combout\;
\RAM_inst|ALT_INV_memory~2241_combout\ <= NOT \RAM_inst|memory~2241_combout\;
\RAM_inst|ALT_INV_memory~2239_combout\ <= NOT \RAM_inst|memory~2239_combout\;
\RAM_inst|ALT_INV_memory~2237_combout\ <= NOT \RAM_inst|memory~2237_combout\;
\RAM_inst|ALT_INV_memory~2235_combout\ <= NOT \RAM_inst|memory~2235_combout\;
\RAM_inst|ALT_INV_memory~2233_combout\ <= NOT \RAM_inst|memory~2233_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\RAM_inst|ALT_INV_memory~2232_combout\ <= NOT \RAM_inst|memory~2232_combout\;
\RAM_inst|ALT_INV_memory~2231_combout\ <= NOT \RAM_inst|memory~2231_combout\;
\RAM_inst|ALT_INV_memory~2230_combout\ <= NOT \RAM_inst|memory~2230_combout\;
\RAM_inst|ALT_INV_memory~528_q\ <= NOT \RAM_inst|memory~528_q\;
\RAM_inst|ALT_INV_memory~520_q\ <= NOT \RAM_inst|memory~520_q\;
\RAM_inst|ALT_INV_memory~512_q\ <= NOT \RAM_inst|memory~512_q\;
\RAM_inst|ALT_INV_memory~504_q\ <= NOT \RAM_inst|memory~504_q\;
\RAM_inst|ALT_INV_memory~2229_combout\ <= NOT \RAM_inst|memory~2229_combout\;
\RAM_inst|ALT_INV_memory~496_q\ <= NOT \RAM_inst|memory~496_q\;
\RAM_inst|ALT_INV_memory~488_q\ <= NOT \RAM_inst|memory~488_q\;
\RAM_inst|ALT_INV_memory~480_q\ <= NOT \RAM_inst|memory~480_q\;
\RAM_inst|ALT_INV_memory~472_q\ <= NOT \RAM_inst|memory~472_q\;
\RAM_inst|ALT_INV_memory~2228_combout\ <= NOT \RAM_inst|memory~2228_combout\;
\RAM_inst|ALT_INV_memory~464_q\ <= NOT \RAM_inst|memory~464_q\;
\RAM_inst|ALT_INV_memory~456_q\ <= NOT \RAM_inst|memory~456_q\;
\RAM_inst|ALT_INV_memory~448_q\ <= NOT \RAM_inst|memory~448_q\;
\RAM_inst|ALT_INV_memory~440_q\ <= NOT \RAM_inst|memory~440_q\;
\RAM_inst|ALT_INV_memory~2227_combout\ <= NOT \RAM_inst|memory~2227_combout\;
\RAM_inst|ALT_INV_memory~432_q\ <= NOT \RAM_inst|memory~432_q\;
\RAM_inst|ALT_INV_memory~424_q\ <= NOT \RAM_inst|memory~424_q\;
\RAM_inst|ALT_INV_memory~416_q\ <= NOT \RAM_inst|memory~416_q\;
\RAM_inst|ALT_INV_memory~408_q\ <= NOT \RAM_inst|memory~408_q\;
\RAM_inst|ALT_INV_memory~2226_combout\ <= NOT \RAM_inst|memory~2226_combout\;
\RAM_inst|ALT_INV_memory~2225_combout\ <= NOT \RAM_inst|memory~2225_combout\;
\RAM_inst|ALT_INV_memory~400_q\ <= NOT \RAM_inst|memory~400_q\;
\RAM_inst|ALT_INV_memory~368_q\ <= NOT \RAM_inst|memory~368_q\;
\RAM_inst|ALT_INV_memory~336_q\ <= NOT \RAM_inst|memory~336_q\;
\RAM_inst|ALT_INV_memory~304_q\ <= NOT \RAM_inst|memory~304_q\;
\RAM_inst|ALT_INV_memory~2224_combout\ <= NOT \RAM_inst|memory~2224_combout\;
\RAM_inst|ALT_INV_memory~392_q\ <= NOT \RAM_inst|memory~392_q\;
\RAM_inst|ALT_INV_memory~360_q\ <= NOT \RAM_inst|memory~360_q\;
\RAM_inst|ALT_INV_memory~328_q\ <= NOT \RAM_inst|memory~328_q\;
\RAM_inst|ALT_INV_memory~296_q\ <= NOT \RAM_inst|memory~296_q\;
\RAM_inst|ALT_INV_memory~2223_combout\ <= NOT \RAM_inst|memory~2223_combout\;
\RAM_inst|ALT_INV_memory~384_q\ <= NOT \RAM_inst|memory~384_q\;
\RAM_inst|ALT_INV_memory~352_q\ <= NOT \RAM_inst|memory~352_q\;
\RAM_inst|ALT_INV_memory~320_q\ <= NOT \RAM_inst|memory~320_q\;
\RAM_inst|ALT_INV_memory~288_q\ <= NOT \RAM_inst|memory~288_q\;
\RAM_inst|ALT_INV_memory~2222_combout\ <= NOT \RAM_inst|memory~2222_combout\;
\RAM_inst|ALT_INV_memory~376_q\ <= NOT \RAM_inst|memory~376_q\;
\RAM_inst|ALT_INV_memory~344_q\ <= NOT \RAM_inst|memory~344_q\;
\RAM_inst|ALT_INV_memory~312_q\ <= NOT \RAM_inst|memory~312_q\;
\RAM_inst|ALT_INV_memory~280_q\ <= NOT \RAM_inst|memory~280_q\;
\RAM_inst|ALT_INV_memory~2221_combout\ <= NOT \RAM_inst|memory~2221_combout\;
\RAM_inst|ALT_INV_memory~2220_combout\ <= NOT \RAM_inst|memory~2220_combout\;
\RAM_inst|ALT_INV_memory~272_q\ <= NOT \RAM_inst|memory~272_q\;
\RAM_inst|ALT_INV_memory~264_q\ <= NOT \RAM_inst|memory~264_q\;
\RAM_inst|ALT_INV_memory~256_q\ <= NOT \RAM_inst|memory~256_q\;
\RAM_inst|ALT_INV_memory~248_q\ <= NOT \RAM_inst|memory~248_q\;
\RAM_inst|ALT_INV_memory~2219_combout\ <= NOT \RAM_inst|memory~2219_combout\;
\RAM_inst|ALT_INV_memory~240_q\ <= NOT \RAM_inst|memory~240_q\;
\RAM_inst|ALT_INV_memory~232_q\ <= NOT \RAM_inst|memory~232_q\;
\RAM_inst|ALT_INV_memory~224_q\ <= NOT \RAM_inst|memory~224_q\;
\RAM_inst|ALT_INV_memory~216_q\ <= NOT \RAM_inst|memory~216_q\;
\RAM_inst|ALT_INV_memory~2218_combout\ <= NOT \RAM_inst|memory~2218_combout\;
\RAM_inst|ALT_INV_memory~208_q\ <= NOT \RAM_inst|memory~208_q\;
\RAM_inst|ALT_INV_memory~200_q\ <= NOT \RAM_inst|memory~200_q\;
\RAM_inst|ALT_INV_memory~192_q\ <= NOT \RAM_inst|memory~192_q\;
\RAM_inst|ALT_INV_memory~184_q\ <= NOT \RAM_inst|memory~184_q\;
\RAM_inst|ALT_INV_memory~2217_combout\ <= NOT \RAM_inst|memory~2217_combout\;
\RAM_inst|ALT_INV_memory~176_q\ <= NOT \RAM_inst|memory~176_q\;
\RAM_inst|ALT_INV_memory~168_q\ <= NOT \RAM_inst|memory~168_q\;
\RAM_inst|ALT_INV_memory~160_q\ <= NOT \RAM_inst|memory~160_q\;
\RAM_inst|ALT_INV_memory~152_q\ <= NOT \RAM_inst|memory~152_q\;
\RAM_inst|ALT_INV_memory~2216_combout\ <= NOT \RAM_inst|memory~2216_combout\;
\RAM_inst|ALT_INV_memory~2215_combout\ <= NOT \RAM_inst|memory~2215_combout\;
\RAM_inst|ALT_INV_memory~144_q\ <= NOT \RAM_inst|memory~144_q\;
\RAM_inst|ALT_INV_memory~136_q\ <= NOT \RAM_inst|memory~136_q\;
\RAM_inst|ALT_INV_memory~128_q\ <= NOT \RAM_inst|memory~128_q\;
\RAM_inst|ALT_INV_memory~120_q\ <= NOT \RAM_inst|memory~120_q\;
\RAM_inst|ALT_INV_memory~2214_combout\ <= NOT \RAM_inst|memory~2214_combout\;
\RAM_inst|ALT_INV_memory~112_q\ <= NOT \RAM_inst|memory~112_q\;
\RAM_inst|ALT_INV_memory~104_q\ <= NOT \RAM_inst|memory~104_q\;
\RAM_inst|ALT_INV_memory~96_q\ <= NOT \RAM_inst|memory~96_q\;
\RAM_inst|ALT_INV_memory~88_q\ <= NOT \RAM_inst|memory~88_q\;
\RAM_inst|ALT_INV_memory~2213_combout\ <= NOT \RAM_inst|memory~2213_combout\;
\RAM_inst|ALT_INV_memory~80_q\ <= NOT \RAM_inst|memory~80_q\;
\RAM_inst|ALT_INV_memory~72_q\ <= NOT \RAM_inst|memory~72_q\;
\RAM_inst|ALT_INV_memory~64_q\ <= NOT \RAM_inst|memory~64_q\;
\RAM_inst|ALT_INV_memory~56_q\ <= NOT \RAM_inst|memory~56_q\;
\RAM_inst|ALT_INV_memory~2212_combout\ <= NOT \RAM_inst|memory~2212_combout\;
\RAM_inst|ALT_INV_memory~48_q\ <= NOT \RAM_inst|memory~48_q\;
\RAM_inst|ALT_INV_memory~40_q\ <= NOT \RAM_inst|memory~40_q\;
\RAM_inst|ALT_INV_memory~32_q\ <= NOT \RAM_inst|memory~32_q\;
\RAM_inst|ALT_INV_memory~24_q\ <= NOT \RAM_inst|memory~24_q\;
\RAM_inst|ALT_INV_memory~2211_combout\ <= NOT \RAM_inst|memory~2211_combout\;
\RAM_inst|ALT_INV_memory~2210_combout\ <= NOT \RAM_inst|memory~2210_combout\;
\RAM_inst|ALT_INV_memory~2209_combout\ <= NOT \RAM_inst|memory~2209_combout\;
\RAM_inst|ALT_INV_memory~527_q\ <= NOT \RAM_inst|memory~527_q\;
\RAM_inst|ALT_INV_memory~495_q\ <= NOT \RAM_inst|memory~495_q\;
\RAM_inst|ALT_INV_memory~463_q\ <= NOT \RAM_inst|memory~463_q\;
\RAM_inst|ALT_INV_memory~431_q\ <= NOT \RAM_inst|memory~431_q\;
\RAM_inst|ALT_INV_memory~2208_combout\ <= NOT \RAM_inst|memory~2208_combout\;
\RAM_inst|ALT_INV_memory~399_q\ <= NOT \RAM_inst|memory~399_q\;
\RAM_inst|ALT_INV_memory~367_q\ <= NOT \RAM_inst|memory~367_q\;
\RAM_inst|ALT_INV_memory~335_q\ <= NOT \RAM_inst|memory~335_q\;
\RAM_inst|ALT_INV_memory~303_q\ <= NOT \RAM_inst|memory~303_q\;
\RAM_inst|ALT_INV_memory~2207_combout\ <= NOT \RAM_inst|memory~2207_combout\;
\RAM_inst|ALT_INV_memory~271_q\ <= NOT \RAM_inst|memory~271_q\;
\RAM_inst|ALT_INV_memory~239_q\ <= NOT \RAM_inst|memory~239_q\;
\RAM_inst|ALT_INV_memory~207_q\ <= NOT \RAM_inst|memory~207_q\;
\RAM_inst|ALT_INV_memory~175_q\ <= NOT \RAM_inst|memory~175_q\;
\RAM_inst|ALT_INV_memory~2206_combout\ <= NOT \RAM_inst|memory~2206_combout\;
\RAM_inst|ALT_INV_memory~143_q\ <= NOT \RAM_inst|memory~143_q\;
\RAM_inst|ALT_INV_memory~111_q\ <= NOT \RAM_inst|memory~111_q\;
\RAM_inst|ALT_INV_memory~79_q\ <= NOT \RAM_inst|memory~79_q\;
\RAM_inst|ALT_INV_memory~47_q\ <= NOT \RAM_inst|memory~47_q\;
\RAM_inst|ALT_INV_memory~2205_combout\ <= NOT \RAM_inst|memory~2205_combout\;
\RAM_inst|ALT_INV_memory~2204_combout\ <= NOT \RAM_inst|memory~2204_combout\;
\RAM_inst|ALT_INV_memory~519_q\ <= NOT \RAM_inst|memory~519_q\;
\RAM_inst|ALT_INV_memory~391_q\ <= NOT \RAM_inst|memory~391_q\;
\RAM_inst|ALT_INV_memory~263_q\ <= NOT \RAM_inst|memory~263_q\;
\RAM_inst|ALT_INV_memory~135_q\ <= NOT \RAM_inst|memory~135_q\;
\RAM_inst|ALT_INV_memory~2203_combout\ <= NOT \RAM_inst|memory~2203_combout\;
\RAM_inst|ALT_INV_memory~487_q\ <= NOT \RAM_inst|memory~487_q\;
\RAM_inst|ALT_INV_memory~359_q\ <= NOT \RAM_inst|memory~359_q\;
\RAM_inst|ALT_INV_memory~231_q\ <= NOT \RAM_inst|memory~231_q\;
\RAM_inst|ALT_INV_memory~103_q\ <= NOT \RAM_inst|memory~103_q\;
\RAM_inst|ALT_INV_memory~2202_combout\ <= NOT \RAM_inst|memory~2202_combout\;
\RAM_inst|ALT_INV_memory~455_q\ <= NOT \RAM_inst|memory~455_q\;
\RAM_inst|ALT_INV_memory~327_q\ <= NOT \RAM_inst|memory~327_q\;
\RAM_inst|ALT_INV_memory~199_q\ <= NOT \RAM_inst|memory~199_q\;
\RAM_inst|ALT_INV_memory~71_q\ <= NOT \RAM_inst|memory~71_q\;
\RAM_inst|ALT_INV_memory~2201_combout\ <= NOT \RAM_inst|memory~2201_combout\;
\RAM_inst|ALT_INV_memory~423_q\ <= NOT \RAM_inst|memory~423_q\;
\RAM_inst|ALT_INV_memory~295_q\ <= NOT \RAM_inst|memory~295_q\;
\RAM_inst|ALT_INV_memory~167_q\ <= NOT \RAM_inst|memory~167_q\;
\RAM_inst|ALT_INV_memory~39_q\ <= NOT \RAM_inst|memory~39_q\;
\RAM_inst|ALT_INV_memory~2200_combout\ <= NOT \RAM_inst|memory~2200_combout\;
\RAM_inst|ALT_INV_memory~2199_combout\ <= NOT \RAM_inst|memory~2199_combout\;
\RAM_inst|ALT_INV_memory~511_q\ <= NOT \RAM_inst|memory~511_q\;
\RAM_inst|ALT_INV_memory~383_q\ <= NOT \RAM_inst|memory~383_q\;
\RAM_inst|ALT_INV_memory~255_q\ <= NOT \RAM_inst|memory~255_q\;
\RAM_inst|ALT_INV_memory~127_q\ <= NOT \RAM_inst|memory~127_q\;
\RAM_inst|ALT_INV_memory~2198_combout\ <= NOT \RAM_inst|memory~2198_combout\;
\RAM_inst|ALT_INV_memory~479_q\ <= NOT \RAM_inst|memory~479_q\;
\RAM_inst|ALT_INV_memory~351_q\ <= NOT \RAM_inst|memory~351_q\;
\RAM_inst|ALT_INV_memory~223_q\ <= NOT \RAM_inst|memory~223_q\;
\RAM_inst|ALT_INV_memory~95_q\ <= NOT \RAM_inst|memory~95_q\;
\RAM_inst|ALT_INV_memory~2197_combout\ <= NOT \RAM_inst|memory~2197_combout\;
\RAM_inst|ALT_INV_memory~447_q\ <= NOT \RAM_inst|memory~447_q\;
\RAM_inst|ALT_INV_memory~319_q\ <= NOT \RAM_inst|memory~319_q\;
\RAM_inst|ALT_INV_memory~191_q\ <= NOT \RAM_inst|memory~191_q\;
\RAM_inst|ALT_INV_memory~63_q\ <= NOT \RAM_inst|memory~63_q\;
\RAM_inst|ALT_INV_memory~2196_combout\ <= NOT \RAM_inst|memory~2196_combout\;
\RAM_inst|ALT_INV_memory~415_q\ <= NOT \RAM_inst|memory~415_q\;
\RAM_inst|ALT_INV_memory~287_q\ <= NOT \RAM_inst|memory~287_q\;
\RAM_inst|ALT_INV_memory~159_q\ <= NOT \RAM_inst|memory~159_q\;
\RAM_inst|ALT_INV_memory~31_q\ <= NOT \RAM_inst|memory~31_q\;
\RAM_inst|ALT_INV_memory~2195_combout\ <= NOT \RAM_inst|memory~2195_combout\;
\RAM_inst|ALT_INV_memory~2194_combout\ <= NOT \RAM_inst|memory~2194_combout\;
\RAM_inst|ALT_INV_memory~503_q\ <= NOT \RAM_inst|memory~503_q\;
\RAM_inst|ALT_INV_memory~375_q\ <= NOT \RAM_inst|memory~375_q\;
\RAM_inst|ALT_INV_memory~247_q\ <= NOT \RAM_inst|memory~247_q\;
\RAM_inst|ALT_INV_memory~119_q\ <= NOT \RAM_inst|memory~119_q\;
\RAM_inst|ALT_INV_memory~2193_combout\ <= NOT \RAM_inst|memory~2193_combout\;
\RAM_inst|ALT_INV_memory~471_q\ <= NOT \RAM_inst|memory~471_q\;
\RAM_inst|ALT_INV_memory~343_q\ <= NOT \RAM_inst|memory~343_q\;
\RAM_inst|ALT_INV_memory~215_q\ <= NOT \RAM_inst|memory~215_q\;
\RAM_inst|ALT_INV_memory~87_q\ <= NOT \RAM_inst|memory~87_q\;
\RAM_inst|ALT_INV_memory~2192_combout\ <= NOT \RAM_inst|memory~2192_combout\;
\RAM_inst|ALT_INV_memory~439_q\ <= NOT \RAM_inst|memory~439_q\;
\RAM_inst|ALT_INV_memory~311_q\ <= NOT \RAM_inst|memory~311_q\;
\RAM_inst|ALT_INV_memory~183_q\ <= NOT \RAM_inst|memory~183_q\;
\RAM_inst|ALT_INV_memory~55_q\ <= NOT \RAM_inst|memory~55_q\;
\RAM_inst|ALT_INV_memory~2191_combout\ <= NOT \RAM_inst|memory~2191_combout\;
\RAM_inst|ALT_INV_memory~407_q\ <= NOT \RAM_inst|memory~407_q\;
\RAM_inst|ALT_INV_memory~279_q\ <= NOT \RAM_inst|memory~279_q\;
\RAM_inst|ALT_INV_memory~151_q\ <= NOT \RAM_inst|memory~151_q\;
\RAM_inst|ALT_INV_memory~23_q\ <= NOT \RAM_inst|memory~23_q\;
\MuxULA_inst|ALT_INV_Mux8~3_combout\ <= NOT \MuxULA_inst|Mux8~3_combout\;
\RegBank_inst|ALT_INV_Mux0~0_combout\ <= NOT \RegBank_inst|Mux0~0_combout\;
\MuxULA_inst|ALT_INV_Mux9~0_combout\ <= NOT \MuxULA_inst|Mux9~0_combout\;
\RegBank_inst|ALT_INV_Mux1~0_combout\ <= NOT \RegBank_inst|Mux1~0_combout\;
\RAM_inst|ALT_INV_memory~2190_combout\ <= NOT \RAM_inst|memory~2190_combout\;
\RAM_inst|ALT_INV_memory~2189_combout\ <= NOT \RAM_inst|memory~2189_combout\;
\RAM_inst|ALT_INV_memory~2188_combout\ <= NOT \RAM_inst|memory~2188_combout\;
\RAM_inst|ALT_INV_memory~526_q\ <= NOT \RAM_inst|memory~526_q\;
\RAM_inst|ALT_INV_memory~398_q\ <= NOT \RAM_inst|memory~398_q\;
\RAM_inst|ALT_INV_memory~270_q\ <= NOT \RAM_inst|memory~270_q\;
\RAM_inst|ALT_INV_memory~142_q\ <= NOT \RAM_inst|memory~142_q\;
\RAM_inst|ALT_INV_memory~2187_combout\ <= NOT \RAM_inst|memory~2187_combout\;
\RAM_inst|ALT_INV_memory~518_q\ <= NOT \RAM_inst|memory~518_q\;
\RAM_inst|ALT_INV_memory~390_q\ <= NOT \RAM_inst|memory~390_q\;
\RAM_inst|ALT_INV_memory~262_q\ <= NOT \RAM_inst|memory~262_q\;
\RAM_inst|ALT_INV_memory~134_q\ <= NOT \RAM_inst|memory~134_q\;
\RAM_inst|ALT_INV_memory~2186_combout\ <= NOT \RAM_inst|memory~2186_combout\;
\RAM_inst|ALT_INV_memory~510_q\ <= NOT \RAM_inst|memory~510_q\;
\RAM_inst|ALT_INV_memory~382_q\ <= NOT \RAM_inst|memory~382_q\;
\RAM_inst|ALT_INV_memory~254_q\ <= NOT \RAM_inst|memory~254_q\;
\RAM_inst|ALT_INV_memory~126_q\ <= NOT \RAM_inst|memory~126_q\;
\RAM_inst|ALT_INV_memory~2185_combout\ <= NOT \RAM_inst|memory~2185_combout\;
\RAM_inst|ALT_INV_memory~502_q\ <= NOT \RAM_inst|memory~502_q\;
\RAM_inst|ALT_INV_memory~374_q\ <= NOT \RAM_inst|memory~374_q\;
\RAM_inst|ALT_INV_memory~246_q\ <= NOT \RAM_inst|memory~246_q\;
\RAM_inst|ALT_INV_memory~118_q\ <= NOT \RAM_inst|memory~118_q\;
\RAM_inst|ALT_INV_memory~2184_combout\ <= NOT \RAM_inst|memory~2184_combout\;
\RAM_inst|ALT_INV_memory~2183_combout\ <= NOT \RAM_inst|memory~2183_combout\;
\RAM_inst|ALT_INV_memory~494_q\ <= NOT \RAM_inst|memory~494_q\;
\RAM_inst|ALT_INV_memory~486_q\ <= NOT \RAM_inst|memory~486_q\;
\RAM_inst|ALT_INV_memory~478_q\ <= NOT \RAM_inst|memory~478_q\;
\RAM_inst|ALT_INV_memory~470_q\ <= NOT \RAM_inst|memory~470_q\;
\RAM_inst|ALT_INV_memory~2182_combout\ <= NOT \RAM_inst|memory~2182_combout\;
\RAM_inst|ALT_INV_memory~366_q\ <= NOT \RAM_inst|memory~366_q\;
\RAM_inst|ALT_INV_memory~358_q\ <= NOT \RAM_inst|memory~358_q\;
\RAM_inst|ALT_INV_memory~350_q\ <= NOT \RAM_inst|memory~350_q\;
\RAM_inst|ALT_INV_memory~342_q\ <= NOT \RAM_inst|memory~342_q\;
\RAM_inst|ALT_INV_memory~2181_combout\ <= NOT \RAM_inst|memory~2181_combout\;
\RAM_inst|ALT_INV_memory~238_q\ <= NOT \RAM_inst|memory~238_q\;
\RAM_inst|ALT_INV_memory~230_q\ <= NOT \RAM_inst|memory~230_q\;
\RAM_inst|ALT_INV_memory~222_q\ <= NOT \RAM_inst|memory~222_q\;
\RAM_inst|ALT_INV_memory~214_q\ <= NOT \RAM_inst|memory~214_q\;
\RAM_inst|ALT_INV_memory~2180_combout\ <= NOT \RAM_inst|memory~2180_combout\;
\RAM_inst|ALT_INV_memory~110_q\ <= NOT \RAM_inst|memory~110_q\;
\RAM_inst|ALT_INV_memory~102_q\ <= NOT \RAM_inst|memory~102_q\;
\RAM_inst|ALT_INV_memory~94_q\ <= NOT \RAM_inst|memory~94_q\;
\RAM_inst|ALT_INV_memory~86_q\ <= NOT \RAM_inst|memory~86_q\;
\RAM_inst|ALT_INV_memory~2179_combout\ <= NOT \RAM_inst|memory~2179_combout\;
\RAM_inst|ALT_INV_memory~2178_combout\ <= NOT \RAM_inst|memory~2178_combout\;
\RAM_inst|ALT_INV_memory~462_q\ <= NOT \RAM_inst|memory~462_q\;
\RAM_inst|ALT_INV_memory~454_q\ <= NOT \RAM_inst|memory~454_q\;
\RAM_inst|ALT_INV_memory~446_q\ <= NOT \RAM_inst|memory~446_q\;
\RAM_inst|ALT_INV_memory~438_q\ <= NOT \RAM_inst|memory~438_q\;
\RAM_inst|ALT_INV_memory~2177_combout\ <= NOT \RAM_inst|memory~2177_combout\;
\RAM_inst|ALT_INV_memory~334_q\ <= NOT \RAM_inst|memory~334_q\;
\RAM_inst|ALT_INV_memory~326_q\ <= NOT \RAM_inst|memory~326_q\;
\RAM_inst|ALT_INV_memory~318_q\ <= NOT \RAM_inst|memory~318_q\;
\RAM_inst|ALT_INV_memory~310_q\ <= NOT \RAM_inst|memory~310_q\;
\RAM_inst|ALT_INV_memory~2176_combout\ <= NOT \RAM_inst|memory~2176_combout\;
\RAM_inst|ALT_INV_memory~206_q\ <= NOT \RAM_inst|memory~206_q\;
\RAM_inst|ALT_INV_memory~198_q\ <= NOT \RAM_inst|memory~198_q\;
\RAM_inst|ALT_INV_memory~190_q\ <= NOT \RAM_inst|memory~190_q\;
\RAM_inst|ALT_INV_memory~182_q\ <= NOT \RAM_inst|memory~182_q\;
\RAM_inst|ALT_INV_memory~2175_combout\ <= NOT \RAM_inst|memory~2175_combout\;
\RAM_inst|ALT_INV_memory~78_q\ <= NOT \RAM_inst|memory~78_q\;
\RAM_inst|ALT_INV_memory~70_q\ <= NOT \RAM_inst|memory~70_q\;
\RAM_inst|ALT_INV_memory~62_q\ <= NOT \RAM_inst|memory~62_q\;
\RAM_inst|ALT_INV_memory~54_q\ <= NOT \RAM_inst|memory~54_q\;
\RAM_inst|ALT_INV_memory~2174_combout\ <= NOT \RAM_inst|memory~2174_combout\;
\RAM_inst|ALT_INV_memory~2173_combout\ <= NOT \RAM_inst|memory~2173_combout\;
\RAM_inst|ALT_INV_memory~430_q\ <= NOT \RAM_inst|memory~430_q\;
\RAM_inst|ALT_INV_memory~422_q\ <= NOT \RAM_inst|memory~422_q\;
\RAM_inst|ALT_INV_memory~414_q\ <= NOT \RAM_inst|memory~414_q\;
\RAM_inst|ALT_INV_memory~406_q\ <= NOT \RAM_inst|memory~406_q\;
\RAM_inst|ALT_INV_memory~2172_combout\ <= NOT \RAM_inst|memory~2172_combout\;
\RAM_inst|ALT_INV_memory~302_q\ <= NOT \RAM_inst|memory~302_q\;
\RAM_inst|ALT_INV_memory~294_q\ <= NOT \RAM_inst|memory~294_q\;
\RAM_inst|ALT_INV_memory~286_q\ <= NOT \RAM_inst|memory~286_q\;
\RAM_inst|ALT_INV_memory~278_q\ <= NOT \RAM_inst|memory~278_q\;
\RAM_inst|ALT_INV_memory~2171_combout\ <= NOT \RAM_inst|memory~2171_combout\;
\RAM_inst|ALT_INV_memory~174_q\ <= NOT \RAM_inst|memory~174_q\;
\RAM_inst|ALT_INV_memory~166_q\ <= NOT \RAM_inst|memory~166_q\;
\RAM_inst|ALT_INV_memory~158_q\ <= NOT \RAM_inst|memory~158_q\;
\RAM_inst|ALT_INV_memory~150_q\ <= NOT \RAM_inst|memory~150_q\;
\RAM_inst|ALT_INV_memory~2170_combout\ <= NOT \RAM_inst|memory~2170_combout\;
\RAM_inst|ALT_INV_memory~46_q\ <= NOT \RAM_inst|memory~46_q\;
\RAM_inst|ALT_INV_memory~38_q\ <= NOT \RAM_inst|memory~38_q\;
\RAM_inst|ALT_INV_memory~30_q\ <= NOT \RAM_inst|memory~30_q\;
\RAM_inst|ALT_INV_memory~22_q\ <= NOT \RAM_inst|memory~22_q\;
\MuxULA_inst|ALT_INV_Mux6~2_combout\ <= NOT \MuxULA_inst|Mux6~2_combout\;
\RegBank_inst|ALT_INV_Mux2~0_combout\ <= NOT \RegBank_inst|Mux2~0_combout\;
\RegBank_inst|ALT_INV_Mux3~0_combout\ <= NOT \RegBank_inst|Mux3~0_combout\;
\RAM_inst|ALT_INV_memory~2169_combout\ <= NOT \RAM_inst|memory~2169_combout\;
\RAM_inst|ALT_INV_memory~2168_combout\ <= NOT \RAM_inst|memory~2168_combout\;
\RAM_inst|ALT_INV_memory~2167_combout\ <= NOT \RAM_inst|memory~2167_combout\;
\RAM_inst|ALT_INV_memory~525_q\ <= NOT \RAM_inst|memory~525_q\;
\RAM_inst|ALT_INV_memory~493_q\ <= NOT \RAM_inst|memory~493_q\;
\RAM_inst|ALT_INV_memory~461_q\ <= NOT \RAM_inst|memory~461_q\;
\RAM_inst|ALT_INV_memory~429_q\ <= NOT \RAM_inst|memory~429_q\;
\RAM_inst|ALT_INV_memory~2166_combout\ <= NOT \RAM_inst|memory~2166_combout\;
\RAM_inst|ALT_INV_memory~517_q\ <= NOT \RAM_inst|memory~517_q\;
\RAM_inst|ALT_INV_memory~485_q\ <= NOT \RAM_inst|memory~485_q\;
\RAM_inst|ALT_INV_memory~453_q\ <= NOT \RAM_inst|memory~453_q\;
\RAM_inst|ALT_INV_memory~421_q\ <= NOT \RAM_inst|memory~421_q\;
\RAM_inst|ALT_INV_memory~2165_combout\ <= NOT \RAM_inst|memory~2165_combout\;
\RAM_inst|ALT_INV_memory~509_q\ <= NOT \RAM_inst|memory~509_q\;
\RAM_inst|ALT_INV_memory~477_q\ <= NOT \RAM_inst|memory~477_q\;
\RAM_inst|ALT_INV_memory~445_q\ <= NOT \RAM_inst|memory~445_q\;
\RAM_inst|ALT_INV_memory~413_q\ <= NOT \RAM_inst|memory~413_q\;
\RAM_inst|ALT_INV_memory~2164_combout\ <= NOT \RAM_inst|memory~2164_combout\;
\RAM_inst|ALT_INV_memory~501_q\ <= NOT \RAM_inst|memory~501_q\;
\RAM_inst|ALT_INV_memory~469_q\ <= NOT \RAM_inst|memory~469_q\;
\RAM_inst|ALT_INV_memory~437_q\ <= NOT \RAM_inst|memory~437_q\;
\RAM_inst|ALT_INV_memory~405_q\ <= NOT \RAM_inst|memory~405_q\;
\RAM_inst|ALT_INV_memory~2163_combout\ <= NOT \RAM_inst|memory~2163_combout\;
\RAM_inst|ALT_INV_memory~2162_combout\ <= NOT \RAM_inst|memory~2162_combout\;
\RAM_inst|ALT_INV_memory~397_q\ <= NOT \RAM_inst|memory~397_q\;
\RAM_inst|ALT_INV_memory~389_q\ <= NOT \RAM_inst|memory~389_q\;
\RAM_inst|ALT_INV_memory~381_q\ <= NOT \RAM_inst|memory~381_q\;
\RAM_inst|ALT_INV_memory~373_q\ <= NOT \RAM_inst|memory~373_q\;
\RAM_inst|ALT_INV_memory~2161_combout\ <= NOT \RAM_inst|memory~2161_combout\;
\RAM_inst|ALT_INV_memory~365_q\ <= NOT \RAM_inst|memory~365_q\;
\RAM_inst|ALT_INV_memory~357_q\ <= NOT \RAM_inst|memory~357_q\;
\RAM_inst|ALT_INV_memory~349_q\ <= NOT \RAM_inst|memory~349_q\;
\RAM_inst|ALT_INV_memory~341_q\ <= NOT \RAM_inst|memory~341_q\;
\RAM_inst|ALT_INV_memory~2160_combout\ <= NOT \RAM_inst|memory~2160_combout\;
\RAM_inst|ALT_INV_memory~333_q\ <= NOT \RAM_inst|memory~333_q\;
\RAM_inst|ALT_INV_memory~325_q\ <= NOT \RAM_inst|memory~325_q\;
\RAM_inst|ALT_INV_memory~317_q\ <= NOT \RAM_inst|memory~317_q\;
\RAM_inst|ALT_INV_memory~309_q\ <= NOT \RAM_inst|memory~309_q\;
\RAM_inst|ALT_INV_memory~2159_combout\ <= NOT \RAM_inst|memory~2159_combout\;
\RAM_inst|ALT_INV_memory~301_q\ <= NOT \RAM_inst|memory~301_q\;
\RAM_inst|ALT_INV_memory~293_q\ <= NOT \RAM_inst|memory~293_q\;
\RAM_inst|ALT_INV_memory~285_q\ <= NOT \RAM_inst|memory~285_q\;
\RAM_inst|ALT_INV_memory~277_q\ <= NOT \RAM_inst|memory~277_q\;
\RAM_inst|ALT_INV_memory~2158_combout\ <= NOT \RAM_inst|memory~2158_combout\;
\RAM_inst|ALT_INV_memory~2157_combout\ <= NOT \RAM_inst|memory~2157_combout\;
\RAM_inst|ALT_INV_memory~269_q\ <= NOT \RAM_inst|memory~269_q\;
\RAM_inst|ALT_INV_memory~237_q\ <= NOT \RAM_inst|memory~237_q\;
\RAM_inst|ALT_INV_memory~205_q\ <= NOT \RAM_inst|memory~205_q\;
\RAM_inst|ALT_INV_memory~173_q\ <= NOT \RAM_inst|memory~173_q\;
\RAM_inst|ALT_INV_memory~2156_combout\ <= NOT \RAM_inst|memory~2156_combout\;
\RAM_inst|ALT_INV_memory~261_q\ <= NOT \RAM_inst|memory~261_q\;
\RAM_inst|ALT_INV_memory~229_q\ <= NOT \RAM_inst|memory~229_q\;
\RAM_inst|ALT_INV_memory~197_q\ <= NOT \RAM_inst|memory~197_q\;
\RAM_inst|ALT_INV_memory~165_q\ <= NOT \RAM_inst|memory~165_q\;
\RAM_inst|ALT_INV_memory~2155_combout\ <= NOT \RAM_inst|memory~2155_combout\;
\RAM_inst|ALT_INV_memory~253_q\ <= NOT \RAM_inst|memory~253_q\;
\RAM_inst|ALT_INV_memory~221_q\ <= NOT \RAM_inst|memory~221_q\;
\RAM_inst|ALT_INV_memory~189_q\ <= NOT \RAM_inst|memory~189_q\;
\RAM_inst|ALT_INV_memory~157_q\ <= NOT \RAM_inst|memory~157_q\;
\RAM_inst|ALT_INV_memory~2154_combout\ <= NOT \RAM_inst|memory~2154_combout\;
\RAM_inst|ALT_INV_memory~245_q\ <= NOT \RAM_inst|memory~245_q\;
\RAM_inst|ALT_INV_memory~213_q\ <= NOT \RAM_inst|memory~213_q\;
\RAM_inst|ALT_INV_memory~181_q\ <= NOT \RAM_inst|memory~181_q\;
\RAM_inst|ALT_INV_memory~149_q\ <= NOT \RAM_inst|memory~149_q\;
\RAM_inst|ALT_INV_memory~2153_combout\ <= NOT \RAM_inst|memory~2153_combout\;
\RAM_inst|ALT_INV_memory~2152_combout\ <= NOT \RAM_inst|memory~2152_combout\;
\RAM_inst|ALT_INV_memory~141_q\ <= NOT \RAM_inst|memory~141_q\;
\RAM_inst|ALT_INV_memory~109_q\ <= NOT \RAM_inst|memory~109_q\;
\RAM_inst|ALT_INV_memory~77_q\ <= NOT \RAM_inst|memory~77_q\;
\RAM_inst|ALT_INV_memory~45_q\ <= NOT \RAM_inst|memory~45_q\;
\RAM_inst|ALT_INV_memory~2151_combout\ <= NOT \RAM_inst|memory~2151_combout\;
\RAM_inst|ALT_INV_memory~133_q\ <= NOT \RAM_inst|memory~133_q\;
\RAM_inst|ALT_INV_memory~101_q\ <= NOT \RAM_inst|memory~101_q\;
\RAM_inst|ALT_INV_memory~69_q\ <= NOT \RAM_inst|memory~69_q\;
\RAM_inst|ALT_INV_memory~37_q\ <= NOT \RAM_inst|memory~37_q\;
\RAM_inst|ALT_INV_memory~2150_combout\ <= NOT \RAM_inst|memory~2150_combout\;
\RAM_inst|ALT_INV_memory~125_q\ <= NOT \RAM_inst|memory~125_q\;
\RAM_inst|ALT_INV_memory~93_q\ <= NOT \RAM_inst|memory~93_q\;
\RAM_inst|ALT_INV_memory~61_q\ <= NOT \RAM_inst|memory~61_q\;
\RAM_inst|ALT_INV_memory~29_q\ <= NOT \RAM_inst|memory~29_q\;
\RAM_inst|ALT_INV_memory~2149_combout\ <= NOT \RAM_inst|memory~2149_combout\;
\RAM_inst|ALT_INV_memory~117_q\ <= NOT \RAM_inst|memory~117_q\;
\RAM_inst|ALT_INV_memory~85_q\ <= NOT \RAM_inst|memory~85_q\;
\RAM_inst|ALT_INV_memory~53_q\ <= NOT \RAM_inst|memory~53_q\;
\RAM_inst|ALT_INV_memory~21_q\ <= NOT \RAM_inst|memory~21_q\;
\RegBank_inst|ALT_INV_Mux4~0_combout\ <= NOT \RegBank_inst|Mux4~0_combout\;
\RAM_inst|ALT_INV_memory~2148_combout\ <= NOT \RAM_inst|memory~2148_combout\;
\RAM_inst|ALT_INV_memory~2147_combout\ <= NOT \RAM_inst|memory~2147_combout\;
\RAM_inst|ALT_INV_memory~2146_combout\ <= NOT \RAM_inst|memory~2146_combout\;
\RAM_inst|ALT_INV_memory~524_q\ <= NOT \RAM_inst|memory~524_q\;
\RAM_inst|ALT_INV_memory~492_q\ <= NOT \RAM_inst|memory~492_q\;
\RAM_inst|ALT_INV_memory~460_q\ <= NOT \RAM_inst|memory~460_q\;
\RAM_inst|ALT_INV_memory~428_q\ <= NOT \RAM_inst|memory~428_q\;
\RAM_inst|ALT_INV_memory~2145_combout\ <= NOT \RAM_inst|memory~2145_combout\;
\RAM_inst|ALT_INV_memory~396_q\ <= NOT \RAM_inst|memory~396_q\;
\RAM_inst|ALT_INV_memory~364_q\ <= NOT \RAM_inst|memory~364_q\;
\RAM_inst|ALT_INV_memory~332_q\ <= NOT \RAM_inst|memory~332_q\;
\RAM_inst|ALT_INV_memory~300_q\ <= NOT \RAM_inst|memory~300_q\;
\RAM_inst|ALT_INV_memory~2144_combout\ <= NOT \RAM_inst|memory~2144_combout\;
\RAM_inst|ALT_INV_memory~268_q\ <= NOT \RAM_inst|memory~268_q\;
\RAM_inst|ALT_INV_memory~236_q\ <= NOT \RAM_inst|memory~236_q\;
\RAM_inst|ALT_INV_memory~204_q\ <= NOT \RAM_inst|memory~204_q\;
\RAM_inst|ALT_INV_memory~172_q\ <= NOT \RAM_inst|memory~172_q\;
\RAM_inst|ALT_INV_memory~2143_combout\ <= NOT \RAM_inst|memory~2143_combout\;
\RAM_inst|ALT_INV_memory~140_q\ <= NOT \RAM_inst|memory~140_q\;
\RAM_inst|ALT_INV_memory~108_q\ <= NOT \RAM_inst|memory~108_q\;
\RAM_inst|ALT_INV_memory~76_q\ <= NOT \RAM_inst|memory~76_q\;
\RAM_inst|ALT_INV_memory~44_q\ <= NOT \RAM_inst|memory~44_q\;
\RAM_inst|ALT_INV_memory~2142_combout\ <= NOT \RAM_inst|memory~2142_combout\;
\RAM_inst|ALT_INV_memory~2141_combout\ <= NOT \RAM_inst|memory~2141_combout\;
\RAM_inst|ALT_INV_memory~516_q\ <= NOT \RAM_inst|memory~516_q\;
\RAM_inst|ALT_INV_memory~388_q\ <= NOT \RAM_inst|memory~388_q\;
\RAM_inst|ALT_INV_memory~260_q\ <= NOT \RAM_inst|memory~260_q\;
\RAM_inst|ALT_INV_memory~132_q\ <= NOT \RAM_inst|memory~132_q\;
\RAM_inst|ALT_INV_memory~2140_combout\ <= NOT \RAM_inst|memory~2140_combout\;
\RAM_inst|ALT_INV_memory~484_q\ <= NOT \RAM_inst|memory~484_q\;
\RAM_inst|ALT_INV_memory~356_q\ <= NOT \RAM_inst|memory~356_q\;
\RAM_inst|ALT_INV_memory~228_q\ <= NOT \RAM_inst|memory~228_q\;
\RAM_inst|ALT_INV_memory~100_q\ <= NOT \RAM_inst|memory~100_q\;
\RAM_inst|ALT_INV_memory~2139_combout\ <= NOT \RAM_inst|memory~2139_combout\;
\RAM_inst|ALT_INV_memory~452_q\ <= NOT \RAM_inst|memory~452_q\;
\RAM_inst|ALT_INV_memory~324_q\ <= NOT \RAM_inst|memory~324_q\;
\RAM_inst|ALT_INV_memory~196_q\ <= NOT \RAM_inst|memory~196_q\;
\RAM_inst|ALT_INV_memory~68_q\ <= NOT \RAM_inst|memory~68_q\;
\RAM_inst|ALT_INV_memory~2138_combout\ <= NOT \RAM_inst|memory~2138_combout\;
\RAM_inst|ALT_INV_memory~420_q\ <= NOT \RAM_inst|memory~420_q\;
\RAM_inst|ALT_INV_memory~292_q\ <= NOT \RAM_inst|memory~292_q\;
\RAM_inst|ALT_INV_memory~164_q\ <= NOT \RAM_inst|memory~164_q\;
\RAM_inst|ALT_INV_memory~36_q\ <= NOT \RAM_inst|memory~36_q\;
\RAM_inst|ALT_INV_memory~2137_combout\ <= NOT \RAM_inst|memory~2137_combout\;
\RAM_inst|ALT_INV_memory~2136_combout\ <= NOT \RAM_inst|memory~2136_combout\;
\RAM_inst|ALT_INV_memory~508_q\ <= NOT \RAM_inst|memory~508_q\;
\RAM_inst|ALT_INV_memory~380_q\ <= NOT \RAM_inst|memory~380_q\;
\RAM_inst|ALT_INV_memory~252_q\ <= NOT \RAM_inst|memory~252_q\;
\RAM_inst|ALT_INV_memory~124_q\ <= NOT \RAM_inst|memory~124_q\;
\RAM_inst|ALT_INV_memory~2135_combout\ <= NOT \RAM_inst|memory~2135_combout\;
\RAM_inst|ALT_INV_memory~476_q\ <= NOT \RAM_inst|memory~476_q\;
\RAM_inst|ALT_INV_memory~348_q\ <= NOT \RAM_inst|memory~348_q\;
\RAM_inst|ALT_INV_memory~220_q\ <= NOT \RAM_inst|memory~220_q\;
\RAM_inst|ALT_INV_memory~92_q\ <= NOT \RAM_inst|memory~92_q\;
\RAM_inst|ALT_INV_memory~2134_combout\ <= NOT \RAM_inst|memory~2134_combout\;
\RAM_inst|ALT_INV_memory~444_q\ <= NOT \RAM_inst|memory~444_q\;
\RAM_inst|ALT_INV_memory~316_q\ <= NOT \RAM_inst|memory~316_q\;
\RAM_inst|ALT_INV_memory~188_q\ <= NOT \RAM_inst|memory~188_q\;
\RAM_inst|ALT_INV_memory~60_q\ <= NOT \RAM_inst|memory~60_q\;
\RAM_inst|ALT_INV_memory~2133_combout\ <= NOT \RAM_inst|memory~2133_combout\;
\RAM_inst|ALT_INV_memory~412_q\ <= NOT \RAM_inst|memory~412_q\;
\RAM_inst|ALT_INV_memory~284_q\ <= NOT \RAM_inst|memory~284_q\;
\RAM_inst|ALT_INV_memory~156_q\ <= NOT \RAM_inst|memory~156_q\;
\RAM_inst|ALT_INV_memory~28_q\ <= NOT \RAM_inst|memory~28_q\;
\RAM_inst|ALT_INV_memory~2132_combout\ <= NOT \RAM_inst|memory~2132_combout\;
\RAM_inst|ALT_INV_memory~2131_combout\ <= NOT \RAM_inst|memory~2131_combout\;
\RAM_inst|ALT_INV_memory~500_q\ <= NOT \RAM_inst|memory~500_q\;
\RAM_inst|ALT_INV_memory~372_q\ <= NOT \RAM_inst|memory~372_q\;
\RAM_inst|ALT_INV_memory~244_q\ <= NOT \RAM_inst|memory~244_q\;
\RAM_inst|ALT_INV_memory~116_q\ <= NOT \RAM_inst|memory~116_q\;
\RAM_inst|ALT_INV_memory~2130_combout\ <= NOT \RAM_inst|memory~2130_combout\;
\RAM_inst|ALT_INV_memory~468_q\ <= NOT \RAM_inst|memory~468_q\;
\RAM_inst|ALT_INV_memory~340_q\ <= NOT \RAM_inst|memory~340_q\;
\RAM_inst|ALT_INV_memory~212_q\ <= NOT \RAM_inst|memory~212_q\;
\RAM_inst|ALT_INV_memory~84_q\ <= NOT \RAM_inst|memory~84_q\;
\RAM_inst|ALT_INV_memory~2129_combout\ <= NOT \RAM_inst|memory~2129_combout\;
\RAM_inst|ALT_INV_memory~436_q\ <= NOT \RAM_inst|memory~436_q\;
\RAM_inst|ALT_INV_memory~308_q\ <= NOT \RAM_inst|memory~308_q\;
\RAM_inst|ALT_INV_memory~180_q\ <= NOT \RAM_inst|memory~180_q\;
\RAM_inst|ALT_INV_memory~52_q\ <= NOT \RAM_inst|memory~52_q\;
\RAM_inst|ALT_INV_memory~2128_combout\ <= NOT \RAM_inst|memory~2128_combout\;
\RAM_inst|ALT_INV_memory~404_q\ <= NOT \RAM_inst|memory~404_q\;
\RAM_inst|ALT_INV_memory~276_q\ <= NOT \RAM_inst|memory~276_q\;
\RAM_inst|ALT_INV_memory~148_q\ <= NOT \RAM_inst|memory~148_q\;
\RAM_inst|ALT_INV_memory~20_q\ <= NOT \RAM_inst|memory~20_q\;
\RegBank_inst|ALT_INV_Mux5~0_combout\ <= NOT \RegBank_inst|Mux5~0_combout\;
\RAM_inst|ALT_INV_memory~2127_combout\ <= NOT \RAM_inst|memory~2127_combout\;
\RAM_inst|ALT_INV_memory~2126_combout\ <= NOT \RAM_inst|memory~2126_combout\;
\RAM_inst|ALT_INV_memory~2125_combout\ <= NOT \RAM_inst|memory~2125_combout\;
\RAM_inst|ALT_INV_memory~523_q\ <= NOT \RAM_inst|memory~523_q\;
\RAM_inst|ALT_INV_memory~395_q\ <= NOT \RAM_inst|memory~395_q\;
\RAM_inst|ALT_INV_memory~267_q\ <= NOT \RAM_inst|memory~267_q\;
\RAM_inst|ALT_INV_memory~139_q\ <= NOT \RAM_inst|memory~139_q\;
\RAM_inst|ALT_INV_memory~2124_combout\ <= NOT \RAM_inst|memory~2124_combout\;
\RAM_inst|ALT_INV_memory~515_q\ <= NOT \RAM_inst|memory~515_q\;
\RAM_inst|ALT_INV_memory~387_q\ <= NOT \RAM_inst|memory~387_q\;
\RAM_inst|ALT_INV_memory~259_q\ <= NOT \RAM_inst|memory~259_q\;
\RAM_inst|ALT_INV_memory~131_q\ <= NOT \RAM_inst|memory~131_q\;
\RAM_inst|ALT_INV_memory~2123_combout\ <= NOT \RAM_inst|memory~2123_combout\;
\RAM_inst|ALT_INV_memory~507_q\ <= NOT \RAM_inst|memory~507_q\;
\RAM_inst|ALT_INV_memory~379_q\ <= NOT \RAM_inst|memory~379_q\;
\RAM_inst|ALT_INV_memory~251_q\ <= NOT \RAM_inst|memory~251_q\;
\RAM_inst|ALT_INV_memory~123_q\ <= NOT \RAM_inst|memory~123_q\;
\RAM_inst|ALT_INV_memory~2122_combout\ <= NOT \RAM_inst|memory~2122_combout\;
\RAM_inst|ALT_INV_memory~499_q\ <= NOT \RAM_inst|memory~499_q\;
\RAM_inst|ALT_INV_memory~371_q\ <= NOT \RAM_inst|memory~371_q\;
\RAM_inst|ALT_INV_memory~243_q\ <= NOT \RAM_inst|memory~243_q\;
\RAM_inst|ALT_INV_memory~115_q\ <= NOT \RAM_inst|memory~115_q\;
\RAM_inst|ALT_INV_memory~2121_combout\ <= NOT \RAM_inst|memory~2121_combout\;
\RAM_inst|ALT_INV_memory~2120_combout\ <= NOT \RAM_inst|memory~2120_combout\;
\RAM_inst|ALT_INV_memory~491_q\ <= NOT \RAM_inst|memory~491_q\;
\RAM_inst|ALT_INV_memory~483_q\ <= NOT \RAM_inst|memory~483_q\;
\RAM_inst|ALT_INV_memory~475_q\ <= NOT \RAM_inst|memory~475_q\;
\RAM_inst|ALT_INV_memory~467_q\ <= NOT \RAM_inst|memory~467_q\;
\RAM_inst|ALT_INV_memory~2119_combout\ <= NOT \RAM_inst|memory~2119_combout\;
\RAM_inst|ALT_INV_memory~363_q\ <= NOT \RAM_inst|memory~363_q\;
\RAM_inst|ALT_INV_memory~355_q\ <= NOT \RAM_inst|memory~355_q\;
\RAM_inst|ALT_INV_memory~347_q\ <= NOT \RAM_inst|memory~347_q\;
\RAM_inst|ALT_INV_memory~339_q\ <= NOT \RAM_inst|memory~339_q\;
\RAM_inst|ALT_INV_memory~2118_combout\ <= NOT \RAM_inst|memory~2118_combout\;
\RAM_inst|ALT_INV_memory~235_q\ <= NOT \RAM_inst|memory~235_q\;
\RAM_inst|ALT_INV_memory~227_q\ <= NOT \RAM_inst|memory~227_q\;
\RAM_inst|ALT_INV_memory~219_q\ <= NOT \RAM_inst|memory~219_q\;
\RAM_inst|ALT_INV_memory~211_q\ <= NOT \RAM_inst|memory~211_q\;
\RAM_inst|ALT_INV_memory~2117_combout\ <= NOT \RAM_inst|memory~2117_combout\;
\RAM_inst|ALT_INV_memory~107_q\ <= NOT \RAM_inst|memory~107_q\;
\RAM_inst|ALT_INV_memory~99_q\ <= NOT \RAM_inst|memory~99_q\;
\RAM_inst|ALT_INV_memory~91_q\ <= NOT \RAM_inst|memory~91_q\;
\RAM_inst|ALT_INV_memory~83_q\ <= NOT \RAM_inst|memory~83_q\;
\RAM_inst|ALT_INV_memory~2116_combout\ <= NOT \RAM_inst|memory~2116_combout\;
\RAM_inst|ALT_INV_memory~2115_combout\ <= NOT \RAM_inst|memory~2115_combout\;
\RAM_inst|ALT_INV_memory~459_q\ <= NOT \RAM_inst|memory~459_q\;
\RAM_inst|ALT_INV_memory~451_q\ <= NOT \RAM_inst|memory~451_q\;
\RAM_inst|ALT_INV_memory~443_q\ <= NOT \RAM_inst|memory~443_q\;
\RAM_inst|ALT_INV_memory~435_q\ <= NOT \RAM_inst|memory~435_q\;
\RAM_inst|ALT_INV_memory~2114_combout\ <= NOT \RAM_inst|memory~2114_combout\;
\RAM_inst|ALT_INV_memory~331_q\ <= NOT \RAM_inst|memory~331_q\;
\RAM_inst|ALT_INV_memory~323_q\ <= NOT \RAM_inst|memory~323_q\;
\RAM_inst|ALT_INV_memory~315_q\ <= NOT \RAM_inst|memory~315_q\;
\RAM_inst|ALT_INV_memory~307_q\ <= NOT \RAM_inst|memory~307_q\;
\RAM_inst|ALT_INV_memory~2113_combout\ <= NOT \RAM_inst|memory~2113_combout\;
\RAM_inst|ALT_INV_memory~203_q\ <= NOT \RAM_inst|memory~203_q\;
\RAM_inst|ALT_INV_memory~195_q\ <= NOT \RAM_inst|memory~195_q\;
\RAM_inst|ALT_INV_memory~187_q\ <= NOT \RAM_inst|memory~187_q\;
\RAM_inst|ALT_INV_memory~179_q\ <= NOT \RAM_inst|memory~179_q\;
\RAM_inst|ALT_INV_memory~2112_combout\ <= NOT \RAM_inst|memory~2112_combout\;
\RAM_inst|ALT_INV_memory~75_q\ <= NOT \RAM_inst|memory~75_q\;
\RAM_inst|ALT_INV_memory~67_q\ <= NOT \RAM_inst|memory~67_q\;
\RAM_inst|ALT_INV_memory~59_q\ <= NOT \RAM_inst|memory~59_q\;
\RAM_inst|ALT_INV_memory~51_q\ <= NOT \RAM_inst|memory~51_q\;
\RAM_inst|ALT_INV_memory~2111_combout\ <= NOT \RAM_inst|memory~2111_combout\;
\RAM_inst|ALT_INV_memory~2110_combout\ <= NOT \RAM_inst|memory~2110_combout\;
\RAM_inst|ALT_INV_memory~427_q\ <= NOT \RAM_inst|memory~427_q\;
\RAM_inst|ALT_INV_memory~419_q\ <= NOT \RAM_inst|memory~419_q\;
\RAM_inst|ALT_INV_memory~411_q\ <= NOT \RAM_inst|memory~411_q\;
\RAM_inst|ALT_INV_memory~403_q\ <= NOT \RAM_inst|memory~403_q\;
\RAM_inst|ALT_INV_memory~2109_combout\ <= NOT \RAM_inst|memory~2109_combout\;
\RAM_inst|ALT_INV_memory~299_q\ <= NOT \RAM_inst|memory~299_q\;
\RAM_inst|ALT_INV_memory~291_q\ <= NOT \RAM_inst|memory~291_q\;
\RAM_inst|ALT_INV_memory~283_q\ <= NOT \RAM_inst|memory~283_q\;
\RAM_inst|ALT_INV_memory~275_q\ <= NOT \RAM_inst|memory~275_q\;
\RAM_inst|ALT_INV_memory~2108_combout\ <= NOT \RAM_inst|memory~2108_combout\;
\RAM_inst|ALT_INV_memory~171_q\ <= NOT \RAM_inst|memory~171_q\;
\RAM_inst|ALT_INV_memory~163_q\ <= NOT \RAM_inst|memory~163_q\;
\RAM_inst|ALT_INV_memory~155_q\ <= NOT \RAM_inst|memory~155_q\;
\RAM_inst|ALT_INV_memory~147_q\ <= NOT \RAM_inst|memory~147_q\;
\RAM_inst|ALT_INV_memory~2107_combout\ <= NOT \RAM_inst|memory~2107_combout\;
\RAM_inst|ALT_INV_memory~43_q\ <= NOT \RAM_inst|memory~43_q\;
\RAM_inst|ALT_INV_memory~35_q\ <= NOT \RAM_inst|memory~35_q\;
\RAM_inst|ALT_INV_memory~27_q\ <= NOT \RAM_inst|memory~27_q\;
\RAM_inst|ALT_INV_memory~19_q\ <= NOT \RAM_inst|memory~19_q\;
\RegBank_inst|ALT_INV_Mux6~0_combout\ <= NOT \RegBank_inst|Mux6~0_combout\;
\RAM_inst|ALT_INV_memory~2106_combout\ <= NOT \RAM_inst|memory~2106_combout\;
\RAM_inst|ALT_INV_memory~2105_combout\ <= NOT \RAM_inst|memory~2105_combout\;
\RAM_inst|ALT_INV_memory~2104_combout\ <= NOT \RAM_inst|memory~2104_combout\;
\RAM_inst|ALT_INV_memory~522_q\ <= NOT \RAM_inst|memory~522_q\;
\RAM_inst|ALT_INV_memory~490_q\ <= NOT \RAM_inst|memory~490_q\;
\RAM_inst|ALT_INV_memory~458_q\ <= NOT \RAM_inst|memory~458_q\;
\RAM_inst|ALT_INV_memory~426_q\ <= NOT \RAM_inst|memory~426_q\;
\RAM_inst|ALT_INV_memory~2103_combout\ <= NOT \RAM_inst|memory~2103_combout\;
\RAM_inst|ALT_INV_memory~514_q\ <= NOT \RAM_inst|memory~514_q\;
\RAM_inst|ALT_INV_memory~482_q\ <= NOT \RAM_inst|memory~482_q\;
\RAM_inst|ALT_INV_memory~450_q\ <= NOT \RAM_inst|memory~450_q\;
\RAM_inst|ALT_INV_memory~418_q\ <= NOT \RAM_inst|memory~418_q\;
\RAM_inst|ALT_INV_memory~2102_combout\ <= NOT \RAM_inst|memory~2102_combout\;
\RAM_inst|ALT_INV_memory~506_q\ <= NOT \RAM_inst|memory~506_q\;
\RAM_inst|ALT_INV_memory~474_q\ <= NOT \RAM_inst|memory~474_q\;
\RAM_inst|ALT_INV_memory~442_q\ <= NOT \RAM_inst|memory~442_q\;
\RAM_inst|ALT_INV_memory~410_q\ <= NOT \RAM_inst|memory~410_q\;
\RAM_inst|ALT_INV_memory~2101_combout\ <= NOT \RAM_inst|memory~2101_combout\;
\RAM_inst|ALT_INV_memory~498_q\ <= NOT \RAM_inst|memory~498_q\;
\RAM_inst|ALT_INV_memory~466_q\ <= NOT \RAM_inst|memory~466_q\;
\RAM_inst|ALT_INV_memory~434_q\ <= NOT \RAM_inst|memory~434_q\;
\RAM_inst|ALT_INV_memory~402_q\ <= NOT \RAM_inst|memory~402_q\;
\RAM_inst|ALT_INV_memory~2100_combout\ <= NOT \RAM_inst|memory~2100_combout\;
\RAM_inst|ALT_INV_memory~2099_combout\ <= NOT \RAM_inst|memory~2099_combout\;
\RAM_inst|ALT_INV_memory~394_q\ <= NOT \RAM_inst|memory~394_q\;
\RAM_inst|ALT_INV_memory~386_q\ <= NOT \RAM_inst|memory~386_q\;
\RAM_inst|ALT_INV_memory~378_q\ <= NOT \RAM_inst|memory~378_q\;
\RAM_inst|ALT_INV_memory~370_q\ <= NOT \RAM_inst|memory~370_q\;
\RAM_inst|ALT_INV_memory~2098_combout\ <= NOT \RAM_inst|memory~2098_combout\;
\RAM_inst|ALT_INV_memory~362_q\ <= NOT \RAM_inst|memory~362_q\;
\RAM_inst|ALT_INV_memory~354_q\ <= NOT \RAM_inst|memory~354_q\;
\RAM_inst|ALT_INV_memory~346_q\ <= NOT \RAM_inst|memory~346_q\;
\RAM_inst|ALT_INV_memory~338_q\ <= NOT \RAM_inst|memory~338_q\;
\RAM_inst|ALT_INV_memory~2097_combout\ <= NOT \RAM_inst|memory~2097_combout\;
\RAM_inst|ALT_INV_memory~330_q\ <= NOT \RAM_inst|memory~330_q\;
\RAM_inst|ALT_INV_memory~322_q\ <= NOT \RAM_inst|memory~322_q\;
\RAM_inst|ALT_INV_memory~314_q\ <= NOT \RAM_inst|memory~314_q\;
\RAM_inst|ALT_INV_memory~306_q\ <= NOT \RAM_inst|memory~306_q\;
\RAM_inst|ALT_INV_memory~2096_combout\ <= NOT \RAM_inst|memory~2096_combout\;
\RAM_inst|ALT_INV_memory~298_q\ <= NOT \RAM_inst|memory~298_q\;
\RAM_inst|ALT_INV_memory~290_q\ <= NOT \RAM_inst|memory~290_q\;
\RAM_inst|ALT_INV_memory~282_q\ <= NOT \RAM_inst|memory~282_q\;
\RAM_inst|ALT_INV_memory~274_q\ <= NOT \RAM_inst|memory~274_q\;
\RAM_inst|ALT_INV_memory~2095_combout\ <= NOT \RAM_inst|memory~2095_combout\;
\RAM_inst|ALT_INV_memory~2094_combout\ <= NOT \RAM_inst|memory~2094_combout\;
\RAM_inst|ALT_INV_memory~266_q\ <= NOT \RAM_inst|memory~266_q\;
\RAM_inst|ALT_INV_memory~234_q\ <= NOT \RAM_inst|memory~234_q\;
\RAM_inst|ALT_INV_memory~202_q\ <= NOT \RAM_inst|memory~202_q\;
\RAM_inst|ALT_INV_memory~170_q\ <= NOT \RAM_inst|memory~170_q\;
\RAM_inst|ALT_INV_memory~2093_combout\ <= NOT \RAM_inst|memory~2093_combout\;
\RAM_inst|ALT_INV_memory~258_q\ <= NOT \RAM_inst|memory~258_q\;
\RAM_inst|ALT_INV_memory~226_q\ <= NOT \RAM_inst|memory~226_q\;
\RAM_inst|ALT_INV_memory~194_q\ <= NOT \RAM_inst|memory~194_q\;
\RAM_inst|ALT_INV_memory~162_q\ <= NOT \RAM_inst|memory~162_q\;
\RAM_inst|ALT_INV_memory~2092_combout\ <= NOT \RAM_inst|memory~2092_combout\;
\RAM_inst|ALT_INV_memory~250_q\ <= NOT \RAM_inst|memory~250_q\;
\RAM_inst|ALT_INV_memory~218_q\ <= NOT \RAM_inst|memory~218_q\;
\RAM_inst|ALT_INV_memory~186_q\ <= NOT \RAM_inst|memory~186_q\;
\RAM_inst|ALT_INV_memory~154_q\ <= NOT \RAM_inst|memory~154_q\;
\RAM_inst|ALT_INV_memory~2091_combout\ <= NOT \RAM_inst|memory~2091_combout\;
\RAM_inst|ALT_INV_memory~242_q\ <= NOT \RAM_inst|memory~242_q\;
\RAM_inst|ALT_INV_memory~210_q\ <= NOT \RAM_inst|memory~210_q\;
\RAM_inst|ALT_INV_memory~178_q\ <= NOT \RAM_inst|memory~178_q\;
\RAM_inst|ALT_INV_memory~146_q\ <= NOT \RAM_inst|memory~146_q\;
\RAM_inst|ALT_INV_memory~2090_combout\ <= NOT \RAM_inst|memory~2090_combout\;
\RAM_inst|ALT_INV_memory~2089_combout\ <= NOT \RAM_inst|memory~2089_combout\;
\RAM_inst|ALT_INV_memory~138_q\ <= NOT \RAM_inst|memory~138_q\;
\RAM_inst|ALT_INV_memory~106_q\ <= NOT \RAM_inst|memory~106_q\;
\RAM_inst|ALT_INV_memory~74_q\ <= NOT \RAM_inst|memory~74_q\;
\RAM_inst|ALT_INV_memory~42_q\ <= NOT \RAM_inst|memory~42_q\;
\RAM_inst|ALT_INV_memory~2088_combout\ <= NOT \RAM_inst|memory~2088_combout\;
\RAM_inst|ALT_INV_memory~130_q\ <= NOT \RAM_inst|memory~130_q\;
\RAM_inst|ALT_INV_memory~98_q\ <= NOT \RAM_inst|memory~98_q\;
\RAM_inst|ALT_INV_memory~66_q\ <= NOT \RAM_inst|memory~66_q\;
\RAM_inst|ALT_INV_memory~34_q\ <= NOT \RAM_inst|memory~34_q\;
\RAM_inst|ALT_INV_memory~2087_combout\ <= NOT \RAM_inst|memory~2087_combout\;
\RAM_inst|ALT_INV_memory~122_q\ <= NOT \RAM_inst|memory~122_q\;
\RAM_inst|ALT_INV_memory~90_q\ <= NOT \RAM_inst|memory~90_q\;
\RAM_inst|ALT_INV_memory~58_q\ <= NOT \RAM_inst|memory~58_q\;
\RAM_inst|ALT_INV_memory~26_q\ <= NOT \RAM_inst|memory~26_q\;
\RAM_inst|ALT_INV_memory~2086_combout\ <= NOT \RAM_inst|memory~2086_combout\;
\RAM_inst|ALT_INV_memory~114_q\ <= NOT \RAM_inst|memory~114_q\;
\RAM_inst|ALT_INV_memory~82_q\ <= NOT \RAM_inst|memory~82_q\;
\RAM_inst|ALT_INV_memory~50_q\ <= NOT \RAM_inst|memory~50_q\;
\RAM_inst|ALT_INV_memory~18_q\ <= NOT \RAM_inst|memory~18_q\;
\MuxULA_inst|ALT_INV_Mux6~1_combout\ <= NOT \MuxULA_inst|Mux6~1_combout\;
\MuxULA_inst|ALT_INV_Mux6~0_combout\ <= NOT \MuxULA_inst|Mux6~0_combout\;
\RegBank_inst|ALT_INV_Mux7~0_combout\ <= NOT \RegBank_inst|Mux7~0_combout\;
\ALT_INV_wdata[0]~0_combout\ <= NOT \wdata[0]~0_combout\;
\RAM_inst|ALT_INV_memory~2085_combout\ <= NOT \RAM_inst|memory~2085_combout\;
\RAM_inst|ALT_INV_memory~2084_combout\ <= NOT \RAM_inst|memory~2084_combout\;
\RAM_inst|ALT_INV_memory~2083_combout\ <= NOT \RAM_inst|memory~2083_combout\;
\RAM_inst|ALT_INV_memory~521_q\ <= NOT \RAM_inst|memory~521_q\;
\RAM_inst|ALT_INV_memory~489_q\ <= NOT \RAM_inst|memory~489_q\;
\RAM_inst|ALT_INV_memory~457_q\ <= NOT \RAM_inst|memory~457_q\;
\RAM_inst|ALT_INV_memory~425_q\ <= NOT \RAM_inst|memory~425_q\;
\RAM_inst|ALT_INV_memory~2082_combout\ <= NOT \RAM_inst|memory~2082_combout\;
\RAM_inst|ALT_INV_memory~393_q\ <= NOT \RAM_inst|memory~393_q\;
\RAM_inst|ALT_INV_memory~361_q\ <= NOT \RAM_inst|memory~361_q\;
\RAM_inst|ALT_INV_memory~329_q\ <= NOT \RAM_inst|memory~329_q\;
\RAM_inst|ALT_INV_memory~297_q\ <= NOT \RAM_inst|memory~297_q\;
\RAM_inst|ALT_INV_memory~2081_combout\ <= NOT \RAM_inst|memory~2081_combout\;
\RAM_inst|ALT_INV_memory~265_q\ <= NOT \RAM_inst|memory~265_q\;
\RAM_inst|ALT_INV_memory~233_q\ <= NOT \RAM_inst|memory~233_q\;
\RAM_inst|ALT_INV_memory~201_q\ <= NOT \RAM_inst|memory~201_q\;
\RAM_inst|ALT_INV_memory~169_q\ <= NOT \RAM_inst|memory~169_q\;
\RAM_inst|ALT_INV_memory~2080_combout\ <= NOT \RAM_inst|memory~2080_combout\;
\RAM_inst|ALT_INV_memory~137_q\ <= NOT \RAM_inst|memory~137_q\;
\RAM_inst|ALT_INV_memory~105_q\ <= NOT \RAM_inst|memory~105_q\;
\RAM_inst|ALT_INV_memory~73_q\ <= NOT \RAM_inst|memory~73_q\;
\RAM_inst|ALT_INV_memory~41_q\ <= NOT \RAM_inst|memory~41_q\;
\RAM_inst|ALT_INV_memory~2079_combout\ <= NOT \RAM_inst|memory~2079_combout\;
\RAM_inst|ALT_INV_memory~2078_combout\ <= NOT \RAM_inst|memory~2078_combout\;
\RAM_inst|ALT_INV_memory~513_q\ <= NOT \RAM_inst|memory~513_q\;
\RAM_inst|ALT_INV_memory~385_q\ <= NOT \RAM_inst|memory~385_q\;
\RAM_inst|ALT_INV_memory~257_q\ <= NOT \RAM_inst|memory~257_q\;
\RAM_inst|ALT_INV_memory~129_q\ <= NOT \RAM_inst|memory~129_q\;
\RAM_inst|ALT_INV_memory~2077_combout\ <= NOT \RAM_inst|memory~2077_combout\;
\RAM_inst|ALT_INV_memory~481_q\ <= NOT \RAM_inst|memory~481_q\;
\RAM_inst|ALT_INV_memory~353_q\ <= NOT \RAM_inst|memory~353_q\;
\RAM_inst|ALT_INV_memory~225_q\ <= NOT \RAM_inst|memory~225_q\;
\RAM_inst|ALT_INV_memory~97_q\ <= NOT \RAM_inst|memory~97_q\;
\RAM_inst|ALT_INV_memory~2076_combout\ <= NOT \RAM_inst|memory~2076_combout\;
\RAM_inst|ALT_INV_memory~449_q\ <= NOT \RAM_inst|memory~449_q\;
\RAM_inst|ALT_INV_memory~321_q\ <= NOT \RAM_inst|memory~321_q\;
\RAM_inst|ALT_INV_memory~193_q\ <= NOT \RAM_inst|memory~193_q\;
\RAM_inst|ALT_INV_memory~65_q\ <= NOT \RAM_inst|memory~65_q\;
\RAM_inst|ALT_INV_memory~2075_combout\ <= NOT \RAM_inst|memory~2075_combout\;
\RAM_inst|ALT_INV_memory~417_q\ <= NOT \RAM_inst|memory~417_q\;
\RAM_inst|ALT_INV_memory~289_q\ <= NOT \RAM_inst|memory~289_q\;
\RAM_inst|ALT_INV_memory~161_q\ <= NOT \RAM_inst|memory~161_q\;
\RAM_inst|ALT_INV_memory~33_q\ <= NOT \RAM_inst|memory~33_q\;
\RAM_inst|ALT_INV_memory~2074_combout\ <= NOT \RAM_inst|memory~2074_combout\;
\RAM_inst|ALT_INV_memory~2073_combout\ <= NOT \RAM_inst|memory~2073_combout\;
\RAM_inst|ALT_INV_memory~505_q\ <= NOT \RAM_inst|memory~505_q\;
\RAM_inst|ALT_INV_memory~377_q\ <= NOT \RAM_inst|memory~377_q\;
\RAM_inst|ALT_INV_memory~249_q\ <= NOT \RAM_inst|memory~249_q\;
\RAM_inst|ALT_INV_memory~121_q\ <= NOT \RAM_inst|memory~121_q\;
\RAM_inst|ALT_INV_memory~2072_combout\ <= NOT \RAM_inst|memory~2072_combout\;
\RAM_inst|ALT_INV_memory~473_q\ <= NOT \RAM_inst|memory~473_q\;
\RAM_inst|ALT_INV_memory~345_q\ <= NOT \RAM_inst|memory~345_q\;
\RAM_inst|ALT_INV_memory~217_q\ <= NOT \RAM_inst|memory~217_q\;
\RAM_inst|ALT_INV_memory~89_q\ <= NOT \RAM_inst|memory~89_q\;
\RAM_inst|ALT_INV_memory~2071_combout\ <= NOT \RAM_inst|memory~2071_combout\;
\RAM_inst|ALT_INV_memory~441_q\ <= NOT \RAM_inst|memory~441_q\;
\RAM_inst|ALT_INV_memory~313_q\ <= NOT \RAM_inst|memory~313_q\;
\RAM_inst|ALT_INV_memory~185_q\ <= NOT \RAM_inst|memory~185_q\;
\RAM_inst|ALT_INV_memory~57_q\ <= NOT \RAM_inst|memory~57_q\;
\RAM_inst|ALT_INV_memory~2070_combout\ <= NOT \RAM_inst|memory~2070_combout\;
\RAM_inst|ALT_INV_memory~409_q\ <= NOT \RAM_inst|memory~409_q\;
\RAM_inst|ALT_INV_memory~281_q\ <= NOT \RAM_inst|memory~281_q\;
\RAM_inst|ALT_INV_memory~153_q\ <= NOT \RAM_inst|memory~153_q\;
\RAM_inst|ALT_INV_memory~25_q\ <= NOT \RAM_inst|memory~25_q\;
\RAM_inst|ALT_INV_memory~2069_combout\ <= NOT \RAM_inst|memory~2069_combout\;
\RAM_inst|ALT_INV_memory~2068_combout\ <= NOT \RAM_inst|memory~2068_combout\;
\RAM_inst|ALT_INV_memory~497_q\ <= NOT \RAM_inst|memory~497_q\;
\RAM_inst|ALT_INV_memory~369_q\ <= NOT \RAM_inst|memory~369_q\;
\RAM_inst|ALT_INV_memory~241_q\ <= NOT \RAM_inst|memory~241_q\;
\RAM_inst|ALT_INV_memory~113_q\ <= NOT \RAM_inst|memory~113_q\;
\RAM_inst|ALT_INV_memory~2067_combout\ <= NOT \RAM_inst|memory~2067_combout\;
\RAM_inst|ALT_INV_memory~465_q\ <= NOT \RAM_inst|memory~465_q\;
\RAM_inst|ALT_INV_memory~337_q\ <= NOT \RAM_inst|memory~337_q\;
\RAM_inst|ALT_INV_memory~209_q\ <= NOT \RAM_inst|memory~209_q\;
\RAM_inst|ALT_INV_memory~81_q\ <= NOT \RAM_inst|memory~81_q\;
\RAM_inst|ALT_INV_memory~2066_combout\ <= NOT \RAM_inst|memory~2066_combout\;
\RAM_inst|ALT_INV_memory~433_q\ <= NOT \RAM_inst|memory~433_q\;
\RAM_inst|ALT_INV_memory~305_q\ <= NOT \RAM_inst|memory~305_q\;
\RAM_inst|ALT_INV_memory~177_q\ <= NOT \RAM_inst|memory~177_q\;
\RAM_inst|ALT_INV_memory~49_q\ <= NOT \RAM_inst|memory~49_q\;
\RAM_inst|ALT_INV_memory~2065_combout\ <= NOT \RAM_inst|memory~2065_combout\;
\RAM_inst|ALT_INV_memory~401_q\ <= NOT \RAM_inst|memory~401_q\;
\RAM_inst|ALT_INV_memory~273_q\ <= NOT \RAM_inst|memory~273_q\;
\RAM_inst|ALT_INV_memory~145_q\ <= NOT \RAM_inst|memory~145_q\;
\RAM_inst|ALT_INV_memory~17_q\ <= NOT \RAM_inst|memory~17_q\;
\PC_inst|ALT_INV_pc_v~8_combout\ <= NOT \PC_inst|pc_v~8_combout\;
\PC_inst|ALT_INV_pc_v~7_combout\ <= NOT \PC_inst|pc_v~7_combout\;
\PC_inst|ALT_INV_pc_v~3_combout\ <= NOT \PC_inst|pc_v~3_combout\;
\PC_inst|ALT_INV_pc_v~2_combout\ <= NOT \PC_inst|pc_v~2_combout\;
\PC_inst|ALT_INV_pc_v~1_combout\ <= NOT \PC_inst|pc_v~1_combout\;
\PC_inst|ALT_INV_pc_v~0_combout\ <= NOT \PC_inst|pc_v~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\RegBank_inst|ALT_INV_regs[3][7]~q\ <= NOT \RegBank_inst|regs[3][7]~q\;
\RegBank_inst|ALT_INV_regs[3][6]~q\ <= NOT \RegBank_inst|regs[3][6]~q\;
\RegBank_inst|ALT_INV_regs[2][7]~q\ <= NOT \RegBank_inst|regs[2][7]~q\;
\RegBank_inst|ALT_INV_regs[2][6]~q\ <= NOT \RegBank_inst|regs[2][6]~q\;
\RegBank_inst|ALT_INV_regs[1][7]~q\ <= NOT \RegBank_inst|regs[1][7]~q\;
\RegBank_inst|ALT_INV_regs[1][6]~q\ <= NOT \RegBank_inst|regs[1][6]~q\;
\RegBank_inst|ALT_INV_regs[0][7]~q\ <= NOT \RegBank_inst|regs[0][7]~q\;
\RegBank_inst|ALT_INV_regs[0][6]~q\ <= NOT \RegBank_inst|regs[0][6]~q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALU_inst|ALT_INV_Mux0~0_combout\ <= NOT \ALU_inst|Mux0~0_combout\;
\ALU_inst|ALT_INV_Mux1~0_combout\ <= NOT \ALU_inst|Mux1~0_combout\;
\ALU_inst|ALT_INV_Mux2~0_combout\ <= NOT \ALU_inst|Mux2~0_combout\;
\MuxULA_inst|ALT_INV_Mux10~1_combout\ <= NOT \MuxULA_inst|Mux10~1_combout\;
\MuxULA_inst|ALT_INV_Mux10~0_combout\ <= NOT \MuxULA_inst|Mux10~0_combout\;
\RegBank_inst|ALT_INV_regs[2][5]~q\ <= NOT \RegBank_inst|regs[2][5]~q\;
\RegBank_inst|ALT_INV_regs[3][5]~q\ <= NOT \RegBank_inst|regs[3][5]~q\;
\RegBank_inst|ALT_INV_regs[0][5]~q\ <= NOT \RegBank_inst|regs[0][5]~q\;
\RegBank_inst|ALT_INV_regs[1][5]~q\ <= NOT \RegBank_inst|regs[1][5]~q\;
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
\ALU_inst|ALT_INV_Mux5~2_combout\ <= NOT \ALU_inst|Mux5~2_combout\;
\MuxULA_inst|ALT_INV_Mux13~1_combout\ <= NOT \MuxULA_inst|Mux13~1_combout\;
\MuxULA_inst|ALT_INV_Mux13~0_combout\ <= NOT \MuxULA_inst|Mux13~0_combout\;
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
\MuxULA_inst|ALT_INV_Mux8~2_combout\ <= NOT \MuxULA_inst|Mux8~2_combout\;
\MuxULA_inst|ALT_INV_Mux8~1_combout\ <= NOT \MuxULA_inst|Mux8~1_combout\;
\MuxULA_inst|ALT_INV_Mux15~0_combout\ <= NOT \MuxULA_inst|Mux15~0_combout\;
\ALT_INV_raddr2[0]~1_combout\ <= NOT \raddr2[0]~1_combout\;
\ALT_INV_raddr2[1]~0_combout\ <= NOT \raddr2[1]~0_combout\;
\RegBank_inst|ALT_INV_regs[3][0]~q\ <= NOT \RegBank_inst|regs[3][0]~q\;
\RegBank_inst|ALT_INV_regs[0][0]~q\ <= NOT \RegBank_inst|regs[0][0]~q\;
\RegBank_inst|ALT_INV_regs[1][0]~q\ <= NOT \RegBank_inst|regs[1][0]~q\;
\RegBank_inst|ALT_INV_regs[2][0]~q\ <= NOT \RegBank_inst|regs[2][0]~q\;
\ALU_inst|ALT_INV_Mux5~0_combout\ <= NOT \ALU_inst|Mux5~0_combout\;
\ROM_inst|ALT_INV_rom~14_combout\ <= NOT \ROM_inst|rom~14_combout\;
\ROM_inst|ALT_INV_rom~13_combout\ <= NOT \ROM_inst|rom~13_combout\;
\ROM_inst|ALT_INV_rom~12_combout\ <= NOT \ROM_inst|rom~12_combout\;
\MuxULA_inst|ALT_INV_Mux8~0_combout\ <= NOT \MuxULA_inst|Mux8~0_combout\;
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
\PC_inst|ALT_INV_Add0~25_sumout\ <= NOT \PC_inst|Add0~25_sumout\;
\PC_inst|ALT_INV_Add0~21_sumout\ <= NOT \PC_inst|Add0~21_sumout\;
\PC_inst|ALT_INV_Add0~17_sumout\ <= NOT \PC_inst|Add0~17_sumout\;
\PC_inst|ALT_INV_Add0~13_sumout\ <= NOT \PC_inst|Add0~13_sumout\;
\PC_inst|ALT_INV_Add0~9_sumout\ <= NOT \PC_inst|Add0~9_sumout\;
\PC_inst|ALT_INV_Add0~5_sumout\ <= NOT \PC_inst|Add0~5_sumout\;
\PC_inst|ALT_INV_Add0~1_sumout\ <= NOT \PC_inst|Add0~1_sumout\;
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
	i => \ROM_inst|ALT_INV_rom~15_combout\,
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
	i => \ROM_inst|rom~2_combout\,
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
	i => \ROM_inst|rom~4_combout\,
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
	i => \ROM_inst|ALT_INV_rom~6_combout\,
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
	i => \ROM_inst|rom~8_combout\,
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
	i => \ROM_inst|ALT_INV_rom~10_combout\,
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
	i => \MuxULA_inst|Mux8~0_combout\,
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
	i => \ROM_inst|rom~14_combout\,
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
	i => \ram_addr[0]~5_combout\,
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
	i => \ram_addr[1]~4_combout\,
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
	i => \ram_addr[2]~3_combout\,
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
	i => \ram_addr[3]~2_combout\,
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
	i => \ram_addr[4]~1_combout\,
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
	i => \ram_addr[5]~0_combout\,
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

\ROM_inst|rom~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~3_combout\ = (!\PC_inst|pc_reg\(1) & (!\PC_inst|pc_reg\(3) $ (((\PC_inst|pc_reg\(0) & !\PC_inst|pc_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110001000000100011000100000010001100010000001000110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~3_combout\);

\ROM_inst|rom~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~4_combout\ = (\ROM_inst|rom~0_combout\ & \ROM_inst|rom~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~3_combout\,
	combout => \ROM_inst|rom~4_combout\);

\ROM_inst|rom~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~11_combout\ = (!\PC_inst|pc_reg\(1) & (\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(2) & \PC_inst|pc_reg\(3)))) # (\PC_inst|pc_reg\(1) & (!\PC_inst|pc_reg\(3) & ((!\PC_inst|pc_reg\(2)) # (\PC_inst|pc_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000101000000001100010100000000110001010000000011000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~11_combout\);

\MuxULA_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux8~0_combout\ = (\ROM_inst|rom~0_combout\ & \ROM_inst|rom~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~11_combout\,
	combout => \MuxULA_inst|Mux8~0_combout\);

\ROM_inst|rom~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~13_combout\ = (!\PC_inst|pc_reg\(4) & ((!\PC_inst|pc_reg\(1) & (!\PC_inst|pc_reg\(2))) # (\PC_inst|pc_reg\(1) & (\PC_inst|pc_reg\(2) & !\PC_inst|pc_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100000000000100110000000000010011000000000001001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(1),
	datab => \PC_inst|ALT_INV_pc_reg\(2),
	datac => \PC_inst|ALT_INV_pc_reg\(3),
	datad => \PC_inst|ALT_INV_pc_reg\(4),
	combout => \ROM_inst|rom~13_combout\);

\ROM_inst|rom~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~14_combout\ = (\ROM_inst|rom~12_combout\ & \ROM_inst|rom~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~12_combout\,
	datab => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \ROM_inst|rom~14_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ROM_inst|rom~10_combout\ & (\MuxULA_inst|Mux8~0_combout\ & \ROM_inst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~10_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \Equal0~1_combout\);

\MuxULA_inst|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux8~2_combout\ = ( \ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~12_combout\) # ((!\PC_inst|pc_reg\(4) & (!\ROM_inst|rom~9_combout\ & \ROM_inst|rom~11_combout\))) ) ) # ( !\ROM_inst|rom~13_combout\ & ( ((!\ROM_inst|rom~12_combout\) # 
-- (!\ROM_inst|rom~11_combout\)) # (\PC_inst|pc_reg\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101110011001110110011111111110111011100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \ROM_inst|ALT_INV_rom~11_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \MuxULA_inst|Mux8~2_combout\);

\raddr2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2[1]~0_combout\ = ( !\ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(4) & (\ROM_inst|rom~12_combout\ & (\ROM_inst|rom~3_combout\ & !\ROM_inst|rom~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ROM_inst|ALT_INV_rom~3_combout\,
	datad => \ROM_inst|ALT_INV_rom~11_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \raddr2[1]~0_combout\);

\raddr2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \raddr2[0]~1_combout\ = ( !\ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(4) & (\ROM_inst|rom~12_combout\ & (\ROM_inst|rom~1_combout\ & !\ROM_inst|rom~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ROM_inst|ALT_INV_rom~1_combout\,
	datad => \ROM_inst|ALT_INV_rom~11_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \raddr2[0]~1_combout\);

\wdata[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[0]~0_combout\ = (\ROM_inst|rom~10_combout\ & (\MuxULA_inst|Mux8~0_combout\ & !\ROM_inst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~10_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \wdata[0]~0_combout\);

\ROM_inst|rom~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~5_combout\ = (!\PC_inst|pc_reg\(3) & (!\PC_inst|pc_reg\(1) $ (((\PC_inst|pc_reg\(0) & !\PC_inst|pc_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000000000100111000000000010011100000000001001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~5_combout\);

\ROM_inst|rom~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~6_combout\ = (!\ROM_inst|rom~0_combout\) # (!\ROM_inst|rom~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~5_combout\,
	combout => \ROM_inst|rom~6_combout\);

\ROM_inst|rom~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~7_combout\ = (!\PC_inst|pc_reg\(3) & (((\PC_inst|pc_reg\(0) & !\PC_inst|pc_reg\(2))) # (\PC_inst|pc_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100000000011100110000000001110011000000000111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~7_combout\);

\ROM_inst|rom~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~8_combout\ = (\ROM_inst|rom~0_combout\ & \ROM_inst|rom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~7_combout\,
	combout => \ROM_inst|rom~8_combout\);

\RegBank_inst|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~2_combout\ = ( \ROM_inst|rom~13_combout\ & ( (\ROM_inst|rom~6_combout\ & (!\ROM_inst|rom~8_combout\ & !\MuxULA_inst|Mux8~0_combout\)) ) ) # ( !\ROM_inst|rom~13_combout\ & ( (\ROM_inst|rom~6_combout\ & (!\ROM_inst|rom~8_combout\ & 
-- ((!\ROM_inst|rom~9_combout\) # (!\MuxULA_inst|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000010001000000000001000100010000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~6_combout\,
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \RegBank_inst|Decoder0~2_combout\);

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

\RegBank_inst|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~3_combout\ = ( \ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~6_combout\ & (\ROM_inst|rom~8_combout\ & !\MuxULA_inst|Mux8~0_combout\)) ) ) # ( !\ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~6_combout\ & (\ROM_inst|rom~8_combout\ & 
-- ((!\ROM_inst|rom~9_combout\) # (!\MuxULA_inst|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100000000000100010001000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~6_combout\,
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \RegBank_inst|Decoder0~3_combout\);

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

\RegBank_inst|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~0_combout\ = ( \ROM_inst|rom~13_combout\ & ( (\ROM_inst|rom~6_combout\ & (\ROM_inst|rom~8_combout\ & !\MuxULA_inst|Mux8~0_combout\)) ) ) # ( !\ROM_inst|rom~13_combout\ & ( (\ROM_inst|rom~6_combout\ & (\ROM_inst|rom~8_combout\ & 
-- ((!\ROM_inst|rom~9_combout\) # (!\MuxULA_inst|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100010000000000010001000100000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~6_combout\,
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \RegBank_inst|Decoder0~0_combout\);

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
-- \RegBank_inst|Mux2~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][5]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][5]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][5]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][5]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux2~0_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\MuxULA_inst|Mux8~0_combout\ & !\ROM_inst|rom~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \Equal0~0_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\ROM_inst|rom~10_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~10_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~2_combout\);

\RegBank_inst|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Decoder0~1_combout\ = ( \ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~6_combout\ & (!\ROM_inst|rom~8_combout\ & !\MuxULA_inst|Mux8~0_combout\)) ) ) # ( !\ROM_inst|rom~13_combout\ & ( (!\ROM_inst|rom~6_combout\ & (!\ROM_inst|rom~8_combout\ & 
-- ((!\ROM_inst|rom~9_combout\) # (!\MuxULA_inst|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010000000000010001000100000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~6_combout\,
	datab => \ROM_inst|ALT_INV_rom~8_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \RegBank_inst|Decoder0~1_combout\);

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

\RegBank_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux7~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][0]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][0]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][0]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][0]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux7~0_combout\);

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
-- \MuxULA_inst|Mux6~1_combout\ = ( \MuxULA_inst|Mux6~0_combout\ & ( (!\ROM_inst|rom~12_combout\ & (((!\ROM_inst|rom~11_combout\)))) # (\ROM_inst|rom~12_combout\ & ((!\ROM_inst|rom~13_combout\ & ((!\ROM_inst|rom~11_combout\))) # (\ROM_inst|rom~13_combout\ & 
-- (!\ROM_inst|rom~9_combout\)))) ) ) # ( !\MuxULA_inst|Mux6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001110010011111111111111111111000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~12_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	datac => \ROM_inst|ALT_INV_rom~11_combout\,
	datad => \ROM_inst|ALT_INV_rom~13_combout\,
	datae => \MuxULA_inst|ALT_INV_Mux6~0_combout\,
	combout => \MuxULA_inst|Mux6~1_combout\);

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

\RAM_inst|memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~17_q\);

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

\RegBank_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux6~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][1]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][1]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][1]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][1]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux6~0_combout\);

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

\RAM_inst|memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~18_q\);

\ram_addr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[2]~3_combout\ = (\ROM_inst|rom~11_combout\ & (\ROM_inst|rom~0_combout\ & (!\ROM_inst|rom~14_combout\ & \MuxULA_inst|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
	combout => \ram_addr[2]~3_combout\);

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
-- \RegBank_inst|Mux4~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][3]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][3]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][3]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][3]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux4~0_combout\);

\RAM_inst|memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~20_q\);

\RAM_inst|memory~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~148_q\);

\MuxULA_inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux11~0_combout\ = ( \ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(5) & (!\PC_inst|pc_reg\(6) & (\ROM_inst|rom~0_combout\ & \ROM_inst|rom~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(5),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \ROM_inst|ALT_INV_rom~0_combout\,
	datad => \ROM_inst|ALT_INV_rom~11_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \MuxULA_inst|Mux11~0_combout\);

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

\RegBank_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux3~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][4]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][4]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][4]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][4]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux3~0_combout\);

\RAM_inst|memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~21_q\);

\RAM_inst|memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~53_q\);

\ram_addr[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[5]~0_combout\ = (\ROM_inst|rom~11_combout\ & (\ROM_inst|rom~0_combout\ & (!\ROM_inst|rom~14_combout\ & \MuxULA_inst|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux10~1_combout\,
	combout => \ram_addr[5]~0_combout\);

\RAM_inst|memory~2249\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2249_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2249_combout\);

\RAM_inst|memory~2250\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2250_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2249_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2249_combout\,
	combout => \RAM_inst|memory~2250_combout\);

\RAM_inst|memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~85_q\);

\RAM_inst|memory~2257\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2257_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2257_combout\);

\RAM_inst|memory~2258\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2258_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2257_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2257_combout\,
	combout => \RAM_inst|memory~2258_combout\);

\RAM_inst|memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~117_q\);

\RAM_inst|memory~2149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2149_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~117_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~85_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~53_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~21_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2149_combout\);

\RAM_inst|memory~2265\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2265_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2265_combout\);

\RAM_inst|memory~2266\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2266_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2265_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2265_combout\,
	combout => \RAM_inst|memory~2266_combout\);

\RAM_inst|memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~29_q\);

\RAM_inst|memory~2273\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2273_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2273_combout\);

\RAM_inst|memory~2274\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2274_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2273_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2273_combout\,
	combout => \RAM_inst|memory~2274_combout\);

\RAM_inst|memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~61_q\);

\RAM_inst|memory~2281\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2281_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2281_combout\);

\RAM_inst|memory~2282\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2282_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2281_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2281_combout\,
	combout => \RAM_inst|memory~2282_combout\);

\RAM_inst|memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~93_q\);

\RAM_inst|memory~2289\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2289_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2289_combout\);

\RAM_inst|memory~2290\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2290_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2289_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2289_combout\,
	combout => \RAM_inst|memory~2290_combout\);

\RAM_inst|memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~125_q\);

\RAM_inst|memory~2150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2150_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~125_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~93_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~61_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~29_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2150_combout\);

\RAM_inst|memory~2297\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2297_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2297_combout\);

\RAM_inst|memory~2298\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2298_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2297_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2297_combout\,
	combout => \RAM_inst|memory~2298_combout\);

\RAM_inst|memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~37_q\);

\RAM_inst|memory~2305\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2305_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2305_combout\);

\RAM_inst|memory~2306\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2306_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2305_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2305_combout\,
	combout => \RAM_inst|memory~2306_combout\);

\RAM_inst|memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~69_q\);

\RAM_inst|memory~2313\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2313_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2313_combout\);

\RAM_inst|memory~2314\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2314_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2313_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2313_combout\,
	combout => \RAM_inst|memory~2314_combout\);

\RAM_inst|memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~101_q\);

\RAM_inst|memory~2321\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2321_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2321_combout\);

\RAM_inst|memory~2322\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2322_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2321_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2321_combout\,
	combout => \RAM_inst|memory~2322_combout\);

\RAM_inst|memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~133_q\);

\RAM_inst|memory~2151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2151_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~133_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~101_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~69_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~37_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2151_combout\);

\RAM_inst|memory~2329\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2329_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2329_combout\);

\RAM_inst|memory~2330\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2330_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2329_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2329_combout\,
	combout => \RAM_inst|memory~2330_combout\);

\RAM_inst|memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~45_q\);

\RAM_inst|memory~2331\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2331_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2331_combout\);

\RAM_inst|memory~2332\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2332_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2331_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2331_combout\,
	combout => \RAM_inst|memory~2332_combout\);

\RAM_inst|memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~77_q\);

\RAM_inst|memory~2333\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2333_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2333_combout\);

\RAM_inst|memory~2334\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2334_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2333_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2333_combout\,
	combout => \RAM_inst|memory~2334_combout\);

\RAM_inst|memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~109_q\);

\RAM_inst|memory~2335\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2335_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2335_combout\);

\RAM_inst|memory~2336\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2336_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2335_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2335_combout\,
	combout => \RAM_inst|memory~2336_combout\);

\RAM_inst|memory~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~141_q\);

\RAM_inst|memory~2152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2152_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~141_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~109_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~77_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~45_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2152_combout\);

\RAM_inst|memory~2153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2153_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2152_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2151_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2150_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2149_combout\,
	datab => \RAM_inst|ALT_INV_memory~2150_combout\,
	datac => \RAM_inst|ALT_INV_memory~2151_combout\,
	datad => \RAM_inst|ALT_INV_memory~2152_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2153_combout\);

\RAM_inst|memory~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~149_q\);

\RAM_inst|memory~2243\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2243_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2243_combout\);

\RAM_inst|memory~2244\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2244_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2243_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2243_combout\,
	combout => \RAM_inst|memory~2244_combout\);

\RAM_inst|memory~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~181_q\);

\RAM_inst|memory~2251\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2251_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2251_combout\);

\RAM_inst|memory~2252\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2252_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2251_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2251_combout\,
	combout => \RAM_inst|memory~2252_combout\);

\RAM_inst|memory~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~213_q\);

\RAM_inst|memory~2259\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2259_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2259_combout\);

\RAM_inst|memory~2260\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2260_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2259_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2259_combout\,
	combout => \RAM_inst|memory~2260_combout\);

\RAM_inst|memory~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~245_q\);

\RAM_inst|memory~2154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2154_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~245_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~213_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~181_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~149_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2154_combout\);

\RAM_inst|memory~2267\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2267_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2267_combout\);

\RAM_inst|memory~2268\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2268_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2267_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2267_combout\,
	combout => \RAM_inst|memory~2268_combout\);

\RAM_inst|memory~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~157_q\);

\RAM_inst|memory~2275\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2275_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2275_combout\);

\RAM_inst|memory~2276\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2276_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2275_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2275_combout\,
	combout => \RAM_inst|memory~2276_combout\);

\RAM_inst|memory~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~189_q\);

\RAM_inst|memory~2283\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2283_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2283_combout\);

\RAM_inst|memory~2284\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2284_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2283_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2283_combout\,
	combout => \RAM_inst|memory~2284_combout\);

\RAM_inst|memory~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~221_q\);

\RAM_inst|memory~2291\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2291_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2291_combout\);

\RAM_inst|memory~2292\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2292_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2291_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2291_combout\,
	combout => \RAM_inst|memory~2292_combout\);

\RAM_inst|memory~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~253_q\);

\RAM_inst|memory~2155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2155_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~253_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~221_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~189_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~157_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2155_combout\);

\RAM_inst|memory~2299\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2299_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2299_combout\);

\RAM_inst|memory~2300\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2300_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2299_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2299_combout\,
	combout => \RAM_inst|memory~2300_combout\);

\RAM_inst|memory~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~165_q\);

\RAM_inst|memory~2307\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2307_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2307_combout\);

\RAM_inst|memory~2308\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2308_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2307_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2307_combout\,
	combout => \RAM_inst|memory~2308_combout\);

\RAM_inst|memory~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~197_q\);

\RAM_inst|memory~2315\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2315_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2315_combout\);

\RAM_inst|memory~2316\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2316_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2315_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2315_combout\,
	combout => \RAM_inst|memory~2316_combout\);

\RAM_inst|memory~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~229_q\);

\RAM_inst|memory~2323\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2323_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2323_combout\);

\RAM_inst|memory~2324\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2324_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2323_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2323_combout\,
	combout => \RAM_inst|memory~2324_combout\);

\RAM_inst|memory~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~261_q\);

\RAM_inst|memory~2156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2156_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~261_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~229_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~197_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~165_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2156_combout\);

\RAM_inst|memory~2337\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2337_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2337_combout\);

\RAM_inst|memory~2338\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2338_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2337_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2337_combout\,
	combout => \RAM_inst|memory~2338_combout\);

\RAM_inst|memory~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~173_q\);

\RAM_inst|memory~2339\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2339_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2339_combout\);

\RAM_inst|memory~2340\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2340_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2339_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2339_combout\,
	combout => \RAM_inst|memory~2340_combout\);

\RAM_inst|memory~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~205_q\);

\RAM_inst|memory~2341\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2341_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2341_combout\);

\RAM_inst|memory~2342\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2342_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2341_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2341_combout\,
	combout => \RAM_inst|memory~2342_combout\);

\RAM_inst|memory~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~237_q\);

\RAM_inst|memory~2343\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2343_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2343_combout\);

\RAM_inst|memory~2344\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2344_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2343_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2343_combout\,
	combout => \RAM_inst|memory~2344_combout\);

\RAM_inst|memory~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~269_q\);

\RAM_inst|memory~2157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2157_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~269_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~237_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~205_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~173_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2157_combout\);

\RAM_inst|memory~2158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2158_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2157_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2156_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2155_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2154_combout\,
	datab => \RAM_inst|ALT_INV_memory~2155_combout\,
	datac => \RAM_inst|ALT_INV_memory~2156_combout\,
	datad => \RAM_inst|ALT_INV_memory~2157_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2158_combout\);

\RAM_inst|memory~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~277_q\);

\RAM_inst|memory~2269\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2269_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2269_combout\);

\RAM_inst|memory~2270\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2270_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2269_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2269_combout\,
	combout => \RAM_inst|memory~2270_combout\);

\RAM_inst|memory~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~285_q\);

\RAM_inst|memory~2301\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2301_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2301_combout\);

\RAM_inst|memory~2302\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2302_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2301_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2301_combout\,
	combout => \RAM_inst|memory~2302_combout\);

\RAM_inst|memory~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~293_q\);

\RAM_inst|memory~2345\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2345_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2345_combout\);

\RAM_inst|memory~2346\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2346_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2345_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2345_combout\,
	combout => \RAM_inst|memory~2346_combout\);

\RAM_inst|memory~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~301_q\);

\RAM_inst|memory~2159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2159_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~301_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~293_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~285_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~277_q\,
	datab => \RAM_inst|ALT_INV_memory~285_q\,
	datac => \RAM_inst|ALT_INV_memory~293_q\,
	datad => \RAM_inst|ALT_INV_memory~301_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2159_combout\);

\RAM_inst|memory~2245\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2245_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2245_combout\);

\RAM_inst|memory~2246\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2246_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2245_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2245_combout\,
	combout => \RAM_inst|memory~2246_combout\);

\RAM_inst|memory~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~309_q\);

\RAM_inst|memory~2277\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2277_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2277_combout\);

\RAM_inst|memory~2278\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2278_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2277_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2277_combout\,
	combout => \RAM_inst|memory~2278_combout\);

\RAM_inst|memory~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~317_q\);

\RAM_inst|memory~2309\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2309_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2309_combout\);

\RAM_inst|memory~2310\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2310_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2309_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2309_combout\,
	combout => \RAM_inst|memory~2310_combout\);

\RAM_inst|memory~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~325_q\);

\RAM_inst|memory~2347\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2347_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2347_combout\);

\RAM_inst|memory~2348\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2348_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2347_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2347_combout\,
	combout => \RAM_inst|memory~2348_combout\);

\RAM_inst|memory~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~333_q\);

\RAM_inst|memory~2160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2160_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~333_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~325_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~317_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~309_q\,
	datab => \RAM_inst|ALT_INV_memory~317_q\,
	datac => \RAM_inst|ALT_INV_memory~325_q\,
	datad => \RAM_inst|ALT_INV_memory~333_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2160_combout\);

\RAM_inst|memory~2253\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2253_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2253_combout\);

\RAM_inst|memory~2254\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2254_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2253_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2253_combout\,
	combout => \RAM_inst|memory~2254_combout\);

\RAM_inst|memory~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~341_q\);

\RAM_inst|memory~2285\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2285_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2285_combout\);

\RAM_inst|memory~2286\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2286_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2285_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2285_combout\,
	combout => \RAM_inst|memory~2286_combout\);

\RAM_inst|memory~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~349_q\);

\RAM_inst|memory~2317\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2317_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2317_combout\);

\RAM_inst|memory~2318\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2318_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2317_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2317_combout\,
	combout => \RAM_inst|memory~2318_combout\);

\RAM_inst|memory~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~357_q\);

\RAM_inst|memory~2349\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2349_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2349_combout\);

\RAM_inst|memory~2350\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2350_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2349_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2349_combout\,
	combout => \RAM_inst|memory~2350_combout\);

\RAM_inst|memory~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~365_q\);

\RAM_inst|memory~2161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2161_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~365_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~357_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~349_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~341_q\,
	datab => \RAM_inst|ALT_INV_memory~349_q\,
	datac => \RAM_inst|ALT_INV_memory~357_q\,
	datad => \RAM_inst|ALT_INV_memory~365_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2161_combout\);

\RAM_inst|memory~2261\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2261_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2261_combout\);

\RAM_inst|memory~2262\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2262_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2261_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2261_combout\,
	combout => \RAM_inst|memory~2262_combout\);

\RAM_inst|memory~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~373_q\);

\RAM_inst|memory~2293\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2293_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2293_combout\);

\RAM_inst|memory~2294\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2294_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2293_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2293_combout\,
	combout => \RAM_inst|memory~2294_combout\);

\RAM_inst|memory~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~381_q\);

\RAM_inst|memory~2325\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2325_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2325_combout\);

\RAM_inst|memory~2326\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2326_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2325_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2325_combout\,
	combout => \RAM_inst|memory~2326_combout\);

\RAM_inst|memory~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~389_q\);

\RAM_inst|memory~2351\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2351_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2351_combout\);

\RAM_inst|memory~2352\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2352_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2351_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2351_combout\,
	combout => \RAM_inst|memory~2352_combout\);

\RAM_inst|memory~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~397_q\);

\RAM_inst|memory~2162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2162_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~397_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~389_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~381_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~373_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~373_q\,
	datab => \RAM_inst|ALT_INV_memory~381_q\,
	datac => \RAM_inst|ALT_INV_memory~389_q\,
	datad => \RAM_inst|ALT_INV_memory~397_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2162_combout\);

\RAM_inst|memory~2163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2163_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2162_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2161_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2160_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2159_combout\,
	datab => \RAM_inst|ALT_INV_memory~2160_combout\,
	datac => \RAM_inst|ALT_INV_memory~2161_combout\,
	datad => \RAM_inst|ALT_INV_memory~2162_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2163_combout\);

\RAM_inst|memory~2239\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2239_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2239_combout\);

\RAM_inst|memory~2240\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2240_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2239_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2239_combout\,
	combout => \RAM_inst|memory~2240_combout\);

\RAM_inst|memory~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~405_q\);

\RAM_inst|memory~2247\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2247_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2247_combout\);

\RAM_inst|memory~2248\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2248_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2247_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2247_combout\,
	combout => \RAM_inst|memory~2248_combout\);

\RAM_inst|memory~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~437_q\);

\RAM_inst|memory~2255\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2255_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2255_combout\);

\RAM_inst|memory~2256\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2256_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2255_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2255_combout\,
	combout => \RAM_inst|memory~2256_combout\);

\RAM_inst|memory~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~469_q\);

\RAM_inst|memory~2263\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2263_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2263_combout\);

\RAM_inst|memory~2264\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2264_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2263_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2263_combout\,
	combout => \RAM_inst|memory~2264_combout\);

\RAM_inst|memory~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~501_q\);

\RAM_inst|memory~2164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2164_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~501_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~469_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~437_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~405_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~405_q\,
	datab => \RAM_inst|ALT_INV_memory~437_q\,
	datac => \RAM_inst|ALT_INV_memory~469_q\,
	datad => \RAM_inst|ALT_INV_memory~501_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2164_combout\);

\RAM_inst|memory~2271\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2271_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2271_combout\);

\RAM_inst|memory~2272\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2272_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2271_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2271_combout\,
	combout => \RAM_inst|memory~2272_combout\);

\RAM_inst|memory~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~413_q\);

\RAM_inst|memory~2279\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2279_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2279_combout\);

\RAM_inst|memory~2280\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2280_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2279_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2279_combout\,
	combout => \RAM_inst|memory~2280_combout\);

\RAM_inst|memory~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~445_q\);

\RAM_inst|memory~2287\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2287_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2287_combout\);

\RAM_inst|memory~2288\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2288_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2287_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2287_combout\,
	combout => \RAM_inst|memory~2288_combout\);

\RAM_inst|memory~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~477_q\);

\RAM_inst|memory~2295\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2295_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2295_combout\);

\RAM_inst|memory~2296\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2296_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2295_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2295_combout\,
	combout => \RAM_inst|memory~2296_combout\);

\RAM_inst|memory~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~509_q\);

\RAM_inst|memory~2165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2165_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~509_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~477_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~445_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~413_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~413_q\,
	datab => \RAM_inst|ALT_INV_memory~445_q\,
	datac => \RAM_inst|ALT_INV_memory~477_q\,
	datad => \RAM_inst|ALT_INV_memory~509_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2165_combout\);

\RAM_inst|memory~2303\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2303_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2303_combout\);

\RAM_inst|memory~2304\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2304_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2303_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2303_combout\,
	combout => \RAM_inst|memory~2304_combout\);

\RAM_inst|memory~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~421_q\);

\RAM_inst|memory~2311\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2311_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2311_combout\);

\RAM_inst|memory~2312\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2312_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2311_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2311_combout\,
	combout => \RAM_inst|memory~2312_combout\);

\RAM_inst|memory~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~453_q\);

\RAM_inst|memory~2319\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2319_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2319_combout\);

\RAM_inst|memory~2320\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2320_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2319_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2319_combout\,
	combout => \RAM_inst|memory~2320_combout\);

\RAM_inst|memory~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~485_q\);

\RAM_inst|memory~2327\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2327_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2327_combout\);

\RAM_inst|memory~2328\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2328_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2327_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2327_combout\,
	combout => \RAM_inst|memory~2328_combout\);

\RAM_inst|memory~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~517_q\);

\RAM_inst|memory~2166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2166_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~517_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~485_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~453_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~421_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~421_q\,
	datab => \RAM_inst|ALT_INV_memory~453_q\,
	datac => \RAM_inst|ALT_INV_memory~485_q\,
	datad => \RAM_inst|ALT_INV_memory~517_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2166_combout\);

\RAM_inst|memory~2353\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2353_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2353_combout\);

\RAM_inst|memory~2354\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2354_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2353_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2353_combout\,
	combout => \RAM_inst|memory~2354_combout\);

\RAM_inst|memory~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~429_q\);

\RAM_inst|memory~2355\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2355_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2355_combout\);

\RAM_inst|memory~2356\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2356_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2355_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2355_combout\,
	combout => \RAM_inst|memory~2356_combout\);

\RAM_inst|memory~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~461_q\);

\RAM_inst|memory~2357\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2357_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2357_combout\);

\RAM_inst|memory~2358\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2358_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2357_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2357_combout\,
	combout => \RAM_inst|memory~2358_combout\);

\RAM_inst|memory~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~493_q\);

\RAM_inst|memory~2359\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2359_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (\ram_addr[0]~5_combout\ & (\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & \ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2359_combout\);

\RAM_inst|memory~2360\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2360_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2359_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2359_combout\,
	combout => \RAM_inst|memory~2360_combout\);

\RAM_inst|memory~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux3~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~525_q\);

\RAM_inst|memory~2167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2167_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~525_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~493_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~461_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~429_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~429_q\,
	datab => \RAM_inst|ALT_INV_memory~461_q\,
	datac => \RAM_inst|ALT_INV_memory~493_q\,
	datad => \RAM_inst|ALT_INV_memory~525_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2167_combout\);

\RAM_inst|memory~2168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2168_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2167_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2166_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2165_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2164_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2164_combout\,
	datab => \RAM_inst|ALT_INV_memory~2165_combout\,
	datac => \RAM_inst|ALT_INV_memory~2166_combout\,
	datad => \RAM_inst|ALT_INV_memory~2167_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2168_combout\);

\RAM_inst|memory~2169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2169_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2168_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2163_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2158_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2153_combout\,
	datab => \RAM_inst|ALT_INV_memory~2158_combout\,
	datac => \RAM_inst|ALT_INV_memory~2163_combout\,
	datad => \RAM_inst|ALT_INV_memory~2168_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2169_combout\);

\wdata[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[4]~5_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2169_combout\)) # (\ALU_inst|Mux3~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2169_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2169_combout\,
	combout => \wdata[4]~5_combout\);

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

\MuxULA_inst|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux11~1_combout\ = ( \RegBank_inst|regs[3][4]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][4]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][4]~q\))) # (\raddr2[1]~0_combout\) ) ) # ( !\RegBank_inst|regs[3][4]~q\ & ( 
-- (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][4]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][4]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][4]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][4]~q\,
	combout => \MuxULA_inst|Mux11~1_combout\);

\MuxULA_inst|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux11~2_combout\ = ( \RegBank_inst|regs[2][4]~q\ & ( \MuxULA_inst|Mux11~1_combout\ & ( ((\ROM_inst|rom~8_combout\ & \MuxULA_inst|Mux11~0_combout\)) # (\MuxULA_inst|Mux8~2_combout\) ) ) ) # ( !\RegBank_inst|regs[2][4]~q\ & ( 
-- \MuxULA_inst|Mux11~1_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (\ROM_inst|rom~8_combout\ & ((\MuxULA_inst|Mux11~0_combout\)))) # (\MuxULA_inst|Mux8~2_combout\ & (((!\MuxULA_inst|Mux8~1_combout\)))) ) ) ) # ( \RegBank_inst|regs[2][4]~q\ & ( 
-- !\MuxULA_inst|Mux11~1_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (\ROM_inst|rom~8_combout\ & ((\MuxULA_inst|Mux11~0_combout\)))) # (\MuxULA_inst|Mux8~2_combout\ & (((\MuxULA_inst|Mux8~1_combout\)))) ) ) ) # ( !\RegBank_inst|regs[2][4]~q\ & ( 
-- !\MuxULA_inst|Mux11~1_combout\ & ( (\ROM_inst|rom~8_combout\ & (!\MuxULA_inst|Mux8~2_combout\ & \MuxULA_inst|Mux11~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000110101001100001100010111000000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~8_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~0_combout\,
	datae => \RegBank_inst|ALT_INV_regs[2][4]~q\,
	dataf => \MuxULA_inst|ALT_INV_Mux11~1_combout\,
	combout => \MuxULA_inst|Mux11~2_combout\);

\ram_addr[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[4]~1_combout\ = (\ROM_inst|rom~11_combout\ & (\ROM_inst|rom~0_combout\ & (!\ROM_inst|rom~14_combout\ & \MuxULA_inst|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	combout => \ram_addr[4]~1_combout\);

\RAM_inst|memory~2237\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2237_combout\ = ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2237_combout\);

\RAM_inst|memory~2238\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2238_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2237_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2237_combout\,
	combout => \RAM_inst|memory~2238_combout\);

\RAM_inst|memory~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~276_q\);

\RAM_inst|memory~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~404_q\);

\RAM_inst|memory~2128\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2128_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~404_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~276_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~148_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~20_q\,
	datab => \RAM_inst|ALT_INV_memory~148_q\,
	datac => \RAM_inst|ALT_INV_memory~276_q\,
	datad => \RAM_inst|ALT_INV_memory~404_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2128_combout\);

\RAM_inst|memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~52_q\);

\RAM_inst|memory~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~180_q\);

\RAM_inst|memory~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~308_q\);

\RAM_inst|memory~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~436_q\);

\RAM_inst|memory~2129\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2129_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~436_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~308_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~180_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~52_q\,
	datab => \RAM_inst|ALT_INV_memory~180_q\,
	datac => \RAM_inst|ALT_INV_memory~308_q\,
	datad => \RAM_inst|ALT_INV_memory~436_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2129_combout\);

\RAM_inst|memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~84_q\);

\RAM_inst|memory~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~212_q\);

\RAM_inst|memory~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~340_q\);

\RAM_inst|memory~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~468_q\);

\RAM_inst|memory~2130\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2130_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~468_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~340_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~212_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~84_q\,
	datab => \RAM_inst|ALT_INV_memory~212_q\,
	datac => \RAM_inst|ALT_INV_memory~340_q\,
	datad => \RAM_inst|ALT_INV_memory~468_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2130_combout\);

\RAM_inst|memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~116_q\);

\RAM_inst|memory~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~244_q\);

\RAM_inst|memory~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~372_q\);

\RAM_inst|memory~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~500_q\);

\RAM_inst|memory~2131\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2131_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~500_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~372_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~244_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~116_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~116_q\,
	datab => \RAM_inst|ALT_INV_memory~244_q\,
	datac => \RAM_inst|ALT_INV_memory~372_q\,
	datad => \RAM_inst|ALT_INV_memory~500_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2131_combout\);

\RAM_inst|memory~2132\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2132_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2131_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2130_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2129_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2128_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2128_combout\,
	datab => \RAM_inst|ALT_INV_memory~2129_combout\,
	datac => \RAM_inst|ALT_INV_memory~2130_combout\,
	datad => \RAM_inst|ALT_INV_memory~2131_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2132_combout\);

\RAM_inst|memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~28_q\);

\RAM_inst|memory~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~156_q\);

\RAM_inst|memory~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~284_q\);

\RAM_inst|memory~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~412_q\);

\RAM_inst|memory~2133\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2133_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~412_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~284_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~156_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~28_q\,
	datab => \RAM_inst|ALT_INV_memory~156_q\,
	datac => \RAM_inst|ALT_INV_memory~284_q\,
	datad => \RAM_inst|ALT_INV_memory~412_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2133_combout\);

\RAM_inst|memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~60_q\);

\RAM_inst|memory~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~188_q\);

\RAM_inst|memory~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~316_q\);

\RAM_inst|memory~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~444_q\);

\RAM_inst|memory~2134\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2134_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~444_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~316_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~188_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~60_q\,
	datab => \RAM_inst|ALT_INV_memory~188_q\,
	datac => \RAM_inst|ALT_INV_memory~316_q\,
	datad => \RAM_inst|ALT_INV_memory~444_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2134_combout\);

\RAM_inst|memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~92_q\);

\RAM_inst|memory~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~220_q\);

\RAM_inst|memory~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~348_q\);

\RAM_inst|memory~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~476_q\);

\RAM_inst|memory~2135\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2135_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~476_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~348_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~220_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~92_q\,
	datab => \RAM_inst|ALT_INV_memory~220_q\,
	datac => \RAM_inst|ALT_INV_memory~348_q\,
	datad => \RAM_inst|ALT_INV_memory~476_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2135_combout\);

\RAM_inst|memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~124_q\);

\RAM_inst|memory~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~252_q\);

\RAM_inst|memory~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~380_q\);

\RAM_inst|memory~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~508_q\);

\RAM_inst|memory~2136\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2136_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~508_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~380_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~252_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~124_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~124_q\,
	datab => \RAM_inst|ALT_INV_memory~252_q\,
	datac => \RAM_inst|ALT_INV_memory~380_q\,
	datad => \RAM_inst|ALT_INV_memory~508_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2136_combout\);

\RAM_inst|memory~2137\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2137_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2136_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2135_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2134_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2133_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2133_combout\,
	datab => \RAM_inst|ALT_INV_memory~2134_combout\,
	datac => \RAM_inst|ALT_INV_memory~2135_combout\,
	datad => \RAM_inst|ALT_INV_memory~2136_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2137_combout\);

\RAM_inst|memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~36_q\);

\RAM_inst|memory~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~164_q\);

\RAM_inst|memory~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~292_q\);

\RAM_inst|memory~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~420_q\);

\RAM_inst|memory~2138\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2138_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~420_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~292_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~164_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~36_q\,
	datab => \RAM_inst|ALT_INV_memory~164_q\,
	datac => \RAM_inst|ALT_INV_memory~292_q\,
	datad => \RAM_inst|ALT_INV_memory~420_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2138_combout\);

\RAM_inst|memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~68_q\);

\RAM_inst|memory~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~196_q\);

\RAM_inst|memory~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~324_q\);

\RAM_inst|memory~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~452_q\);

\RAM_inst|memory~2139\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2139_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~452_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~324_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~196_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~68_q\,
	datab => \RAM_inst|ALT_INV_memory~196_q\,
	datac => \RAM_inst|ALT_INV_memory~324_q\,
	datad => \RAM_inst|ALT_INV_memory~452_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2139_combout\);

\RAM_inst|memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~100_q\);

\RAM_inst|memory~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~228_q\);

\RAM_inst|memory~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~356_q\);

\RAM_inst|memory~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~484_q\);

\RAM_inst|memory~2140\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2140_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~484_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~356_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~228_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~100_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~100_q\,
	datab => \RAM_inst|ALT_INV_memory~228_q\,
	datac => \RAM_inst|ALT_INV_memory~356_q\,
	datad => \RAM_inst|ALT_INV_memory~484_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2140_combout\);

\RAM_inst|memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~132_q\);

\RAM_inst|memory~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~260_q\);

\RAM_inst|memory~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~388_q\);

\RAM_inst|memory~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~516_q\);

\RAM_inst|memory~2141\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2141_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~516_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~388_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~260_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~132_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~132_q\,
	datab => \RAM_inst|ALT_INV_memory~260_q\,
	datac => \RAM_inst|ALT_INV_memory~388_q\,
	datad => \RAM_inst|ALT_INV_memory~516_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2141_combout\);

\RAM_inst|memory~2142\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2142_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2141_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2140_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2139_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2138_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2138_combout\,
	datab => \RAM_inst|ALT_INV_memory~2139_combout\,
	datac => \RAM_inst|ALT_INV_memory~2140_combout\,
	datad => \RAM_inst|ALT_INV_memory~2141_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2142_combout\);

\RAM_inst|memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2330_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
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
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~140_q\);

\RAM_inst|memory~2143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2143_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~140_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~108_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~76_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~44_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2143_combout\);

\RAM_inst|memory~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2338_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
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
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~268_q\);

\RAM_inst|memory~2144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2144_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~268_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~236_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~204_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~172_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2144_combout\);

\RAM_inst|memory~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~300_q\);

\RAM_inst|memory~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~332_q\);

\RAM_inst|memory~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~364_q\);

\RAM_inst|memory~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~396_q\);

\RAM_inst|memory~2145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2145_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~396_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~364_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~332_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~300_q\,
	datab => \RAM_inst|ALT_INV_memory~332_q\,
	datac => \RAM_inst|ALT_INV_memory~364_q\,
	datad => \RAM_inst|ALT_INV_memory~396_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2145_combout\);

\RAM_inst|memory~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~428_q\);

\RAM_inst|memory~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~460_q\);

\RAM_inst|memory~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~492_q\);

\RAM_inst|memory~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux4~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~524_q\);

\RAM_inst|memory~2146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2146_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~524_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~492_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~460_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~428_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~428_q\,
	datab => \RAM_inst|ALT_INV_memory~460_q\,
	datac => \RAM_inst|ALT_INV_memory~492_q\,
	datad => \RAM_inst|ALT_INV_memory~524_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2146_combout\);

\RAM_inst|memory~2147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2147_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2146_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2145_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2144_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2143_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2143_combout\,
	datab => \RAM_inst|ALT_INV_memory~2144_combout\,
	datac => \RAM_inst|ALT_INV_memory~2145_combout\,
	datad => \RAM_inst|ALT_INV_memory~2146_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2147_combout\);

\RAM_inst|memory~2148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2148_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2147_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2142_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2137_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2132_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2132_combout\,
	datab => \RAM_inst|ALT_INV_memory~2137_combout\,
	datac => \RAM_inst|ALT_INV_memory~2142_combout\,
	datad => \RAM_inst|ALT_INV_memory~2147_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2148_combout\);

\wdata[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[3]~4_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2148_combout\)) # (\ALU_inst|Mux4~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2148_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2148_combout\,
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
-- \MuxULA_inst|Mux12~0_combout\ = ( \RegBank_inst|regs[3][3]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][3]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][3]~q\))) # (\raddr2[1]~0_combout\) ) ) # ( !\RegBank_inst|regs[3][3]~q\ & ( 
-- (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][3]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][3]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][3]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][3]~q\,
	combout => \MuxULA_inst|Mux12~0_combout\);

\MuxULA_inst|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux12~1_combout\ = ( \MuxULA_inst|Mux12~0_combout\ & ( \MuxULA_inst|Mux11~0_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (!\ROM_inst|rom~6_combout\)) # (\MuxULA_inst|Mux8~2_combout\ & (((!\MuxULA_inst|Mux8~1_combout\) # 
-- (\RegBank_inst|regs[2][3]~q\)))) ) ) ) # ( !\MuxULA_inst|Mux12~0_combout\ & ( \MuxULA_inst|Mux11~0_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (!\ROM_inst|rom~6_combout\)) # (\MuxULA_inst|Mux8~2_combout\ & (((\MuxULA_inst|Mux8~1_combout\ & 
-- \RegBank_inst|regs[2][3]~q\)))) ) ) ) # ( \MuxULA_inst|Mux12~0_combout\ & ( !\MuxULA_inst|Mux11~0_combout\ & ( (\MuxULA_inst|Mux8~2_combout\ & ((!\MuxULA_inst|Mux8~1_combout\) # (\RegBank_inst|regs[2][3]~q\))) ) ) ) # ( !\MuxULA_inst|Mux12~0_combout\ & ( 
-- !\MuxULA_inst|Mux11~0_combout\ & ( (\MuxULA_inst|Mux8~1_combout\ & (\MuxULA_inst|Mux8~2_combout\ & \RegBank_inst|regs[2][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011000000111110100000101000111010110010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~6_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datad => \RegBank_inst|ALT_INV_regs[2][3]~q\,
	datae => \MuxULA_inst|ALT_INV_Mux12~0_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux11~0_combout\,
	combout => \MuxULA_inst|Mux12~1_combout\);

\ram_addr[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[3]~2_combout\ = (\ROM_inst|rom~11_combout\ & (\ROM_inst|rom~0_combout\ & (!\ROM_inst|rom~14_combout\ & \MuxULA_inst|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux12~1_combout\,
	combout => \ram_addr[3]~2_combout\);

\RAM_inst|memory~2241\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2241_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2241_combout\);

\RAM_inst|memory~2242\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2242_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2241_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2241_combout\,
	combout => \RAM_inst|memory~2242_combout\);

\RAM_inst|memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
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
	ena => \RAM_inst|memory~2250_combout\,
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
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~114_q\);

\RAM_inst|memory~2086\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2086_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~114_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~82_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~50_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~18_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2086_combout\);

\RAM_inst|memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2266_combout\,
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
	ena => \RAM_inst|memory~2274_combout\,
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
	ena => \RAM_inst|memory~2282_combout\,
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
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~122_q\);

\RAM_inst|memory~2087\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2087_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~122_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~90_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~58_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~26_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2087_combout\);

\RAM_inst|memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2298_combout\,
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
	ena => \RAM_inst|memory~2306_combout\,
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
	ena => \RAM_inst|memory~2314_combout\,
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
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~130_q\);

\RAM_inst|memory~2088\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2088_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~130_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~98_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~66_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~34_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2088_combout\);

\RAM_inst|memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2330_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
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
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~138_q\);

\RAM_inst|memory~2089\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2089_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~138_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~106_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~74_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~42_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2089_combout\);

\RAM_inst|memory~2090\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2090_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2089_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2088_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2087_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2086_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2086_combout\,
	datab => \RAM_inst|ALT_INV_memory~2087_combout\,
	datac => \RAM_inst|ALT_INV_memory~2088_combout\,
	datad => \RAM_inst|ALT_INV_memory~2089_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2090_combout\);

\RAM_inst|memory~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~146_q\);

\RAM_inst|memory~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
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
	ena => \RAM_inst|memory~2252_combout\,
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
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~242_q\);

\RAM_inst|memory~2091\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2091_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~242_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~210_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~178_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~146_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2091_combout\);

\RAM_inst|memory~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2268_combout\,
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
	ena => \RAM_inst|memory~2276_combout\,
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
	ena => \RAM_inst|memory~2284_combout\,
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
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~250_q\);

\RAM_inst|memory~2092\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2092_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~250_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~218_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~186_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~154_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2092_combout\);

\RAM_inst|memory~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2300_combout\,
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
	ena => \RAM_inst|memory~2308_combout\,
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
	ena => \RAM_inst|memory~2316_combout\,
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
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~258_q\);

\RAM_inst|memory~2093\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2093_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~258_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~226_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~194_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~162_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2093_combout\);

\RAM_inst|memory~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2338_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
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
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~266_q\);

\RAM_inst|memory~2094\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2094_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~266_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~234_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~202_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~170_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2094_combout\);

\RAM_inst|memory~2095\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2095_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2094_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2093_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2092_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2091_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2091_combout\,
	datab => \RAM_inst|ALT_INV_memory~2092_combout\,
	datac => \RAM_inst|ALT_INV_memory~2093_combout\,
	datad => \RAM_inst|ALT_INV_memory~2094_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2095_combout\);

\RAM_inst|memory~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~274_q\);

\RAM_inst|memory~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~282_q\);

\RAM_inst|memory~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~290_q\);

\RAM_inst|memory~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~298_q\);

\RAM_inst|memory~2096\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2096_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~298_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~290_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~282_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~274_q\,
	datab => \RAM_inst|ALT_INV_memory~282_q\,
	datac => \RAM_inst|ALT_INV_memory~290_q\,
	datad => \RAM_inst|ALT_INV_memory~298_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2096_combout\);

\RAM_inst|memory~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~306_q\);

\RAM_inst|memory~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~314_q\);

\RAM_inst|memory~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~322_q\);

\RAM_inst|memory~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~330_q\);

\RAM_inst|memory~2097\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2097_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~330_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~322_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~314_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~306_q\,
	datab => \RAM_inst|ALT_INV_memory~314_q\,
	datac => \RAM_inst|ALT_INV_memory~322_q\,
	datad => \RAM_inst|ALT_INV_memory~330_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2097_combout\);

\RAM_inst|memory~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~338_q\);

\RAM_inst|memory~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~346_q\);

\RAM_inst|memory~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~354_q\);

\RAM_inst|memory~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~362_q\);

\RAM_inst|memory~2098\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2098_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~362_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~354_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~346_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~338_q\,
	datab => \RAM_inst|ALT_INV_memory~346_q\,
	datac => \RAM_inst|ALT_INV_memory~354_q\,
	datad => \RAM_inst|ALT_INV_memory~362_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2098_combout\);

\RAM_inst|memory~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~370_q\);

\RAM_inst|memory~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~378_q\);

\RAM_inst|memory~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~386_q\);

\RAM_inst|memory~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~394_q\);

\RAM_inst|memory~2099\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2099_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~394_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~386_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~378_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~370_q\,
	datab => \RAM_inst|ALT_INV_memory~378_q\,
	datac => \RAM_inst|ALT_INV_memory~386_q\,
	datad => \RAM_inst|ALT_INV_memory~394_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2099_combout\);

\RAM_inst|memory~2100\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2100_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2099_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2098_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2097_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2096_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2096_combout\,
	datab => \RAM_inst|ALT_INV_memory~2097_combout\,
	datac => \RAM_inst|ALT_INV_memory~2098_combout\,
	datad => \RAM_inst|ALT_INV_memory~2099_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2100_combout\);

\RAM_inst|memory~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~402_q\);

\RAM_inst|memory~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~434_q\);

\RAM_inst|memory~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~466_q\);

\RAM_inst|memory~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~498_q\);

\RAM_inst|memory~2101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2101_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~498_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~466_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~434_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~402_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~402_q\,
	datab => \RAM_inst|ALT_INV_memory~434_q\,
	datac => \RAM_inst|ALT_INV_memory~466_q\,
	datad => \RAM_inst|ALT_INV_memory~498_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2101_combout\);

\RAM_inst|memory~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~410_q\);

\RAM_inst|memory~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~442_q\);

\RAM_inst|memory~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~474_q\);

\RAM_inst|memory~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~506_q\);

\RAM_inst|memory~2102\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2102_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~506_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~474_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~442_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~410_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~410_q\,
	datab => \RAM_inst|ALT_INV_memory~442_q\,
	datac => \RAM_inst|ALT_INV_memory~474_q\,
	datad => \RAM_inst|ALT_INV_memory~506_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2102_combout\);

\RAM_inst|memory~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~418_q\);

\RAM_inst|memory~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~450_q\);

\RAM_inst|memory~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~482_q\);

\RAM_inst|memory~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~514_q\);

\RAM_inst|memory~2103\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2103_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~514_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~482_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~450_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~418_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~418_q\,
	datab => \RAM_inst|ALT_INV_memory~450_q\,
	datac => \RAM_inst|ALT_INV_memory~482_q\,
	datad => \RAM_inst|ALT_INV_memory~514_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2103_combout\);

\RAM_inst|memory~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~426_q\);

\RAM_inst|memory~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~458_q\);

\RAM_inst|memory~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~490_q\);

\RAM_inst|memory~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux6~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~522_q\);

\RAM_inst|memory~2104\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2104_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~522_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~490_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~458_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~426_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~426_q\,
	datab => \RAM_inst|ALT_INV_memory~458_q\,
	datac => \RAM_inst|ALT_INV_memory~490_q\,
	datad => \RAM_inst|ALT_INV_memory~522_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2104_combout\);

\RAM_inst|memory~2105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2105_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2104_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2103_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2102_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2101_combout\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2105_combout\);

\RAM_inst|memory~2106\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2106_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2105_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2100_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2095_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2090_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2090_combout\,
	datab => \RAM_inst|ALT_INV_memory~2095_combout\,
	datac => \RAM_inst|ALT_INV_memory~2100_combout\,
	datad => \RAM_inst|ALT_INV_memory~2105_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2106_combout\);

\wdata[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[1]~2_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2106_combout\)) # (\ALU_inst|Mux6~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2106_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2106_combout\,
	combout => \wdata[1]~2_combout\);

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

\MuxULA_inst|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux14~0_combout\ = ( \RegBank_inst|regs[3][1]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][1]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][1]~q\))) # (\raddr2[1]~0_combout\) ) ) # ( !\RegBank_inst|regs[3][1]~q\ & ( 
-- (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][1]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][1]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][1]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][1]~q\,
	combout => \MuxULA_inst|Mux14~0_combout\);

\MuxULA_inst|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux14~1_combout\ = ( \MuxULA_inst|Mux14~0_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (\ROM_inst|rom~2_combout\)) # (\MuxULA_inst|Mux8~2_combout\ & (((!\MuxULA_inst|Mux8~1_combout\) # (\RegBank_inst|regs[2][1]~q\)))) ) ) # ( 
-- !\MuxULA_inst|Mux14~0_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (\ROM_inst|rom~2_combout\)) # (\MuxULA_inst|Mux8~2_combout\ & (((\MuxULA_inst|Mux8~1_combout\ & \RegBank_inst|regs[2][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~2_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datad => \RegBank_inst|ALT_INV_regs[2][1]~q\,
	datae => \MuxULA_inst|ALT_INV_Mux14~0_combout\,
	combout => \MuxULA_inst|Mux14~1_combout\);

\ram_addr[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[1]~4_combout\ = (\ROM_inst|rom~11_combout\ & (\ROM_inst|rom~0_combout\ & (!\ROM_inst|rom~14_combout\ & \MuxULA_inst|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux14~1_combout\,
	combout => \ram_addr[1]~4_combout\);

\RAM_inst|memory~2235\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2235_combout\ = ( \ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2235_combout\);

\RAM_inst|memory~2236\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2236_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2235_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2235_combout\,
	combout => \RAM_inst|memory~2236_combout\);

\RAM_inst|memory~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~145_q\);

\RAM_inst|memory~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~273_q\);

\RAM_inst|memory~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~401_q\);

\RAM_inst|memory~2065\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2065_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~401_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~273_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~145_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~17_q\,
	datab => \RAM_inst|ALT_INV_memory~145_q\,
	datac => \RAM_inst|ALT_INV_memory~273_q\,
	datad => \RAM_inst|ALT_INV_memory~401_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2065_combout\);

\RAM_inst|memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~49_q\);

\RAM_inst|memory~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~177_q\);

\RAM_inst|memory~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~305_q\);

\RAM_inst|memory~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~433_q\);

\RAM_inst|memory~2066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2066_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~433_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~305_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~177_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~49_q\,
	datab => \RAM_inst|ALT_INV_memory~177_q\,
	datac => \RAM_inst|ALT_INV_memory~305_q\,
	datad => \RAM_inst|ALT_INV_memory~433_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2066_combout\);

\RAM_inst|memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~81_q\);

\RAM_inst|memory~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~209_q\);

\RAM_inst|memory~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~337_q\);

\RAM_inst|memory~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~465_q\);

\RAM_inst|memory~2067\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2067_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~465_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~337_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~209_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~81_q\,
	datab => \RAM_inst|ALT_INV_memory~209_q\,
	datac => \RAM_inst|ALT_INV_memory~337_q\,
	datad => \RAM_inst|ALT_INV_memory~465_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2067_combout\);

\RAM_inst|memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~113_q\);

\RAM_inst|memory~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~241_q\);

\RAM_inst|memory~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~369_q\);

\RAM_inst|memory~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~497_q\);

\RAM_inst|memory~2068\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2068_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~497_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~369_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~241_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~113_q\,
	datab => \RAM_inst|ALT_INV_memory~241_q\,
	datac => \RAM_inst|ALT_INV_memory~369_q\,
	datad => \RAM_inst|ALT_INV_memory~497_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2068_combout\);

\RAM_inst|memory~2069\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2069_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2068_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2067_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2066_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2065_combout\ ) ) )

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
	datad => \RAM_inst|ALT_INV_memory~2068_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2069_combout\);

\RAM_inst|memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~25_q\);

\RAM_inst|memory~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~153_q\);

\RAM_inst|memory~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~281_q\);

\RAM_inst|memory~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~409_q\);

\RAM_inst|memory~2070\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2070_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~409_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~281_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~153_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~25_q\,
	datab => \RAM_inst|ALT_INV_memory~153_q\,
	datac => \RAM_inst|ALT_INV_memory~281_q\,
	datad => \RAM_inst|ALT_INV_memory~409_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2070_combout\);

\RAM_inst|memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~57_q\);

\RAM_inst|memory~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~185_q\);

\RAM_inst|memory~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~313_q\);

\RAM_inst|memory~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~441_q\);

\RAM_inst|memory~2071\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2071_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~441_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~313_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~185_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~57_q\,
	datab => \RAM_inst|ALT_INV_memory~185_q\,
	datac => \RAM_inst|ALT_INV_memory~313_q\,
	datad => \RAM_inst|ALT_INV_memory~441_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2071_combout\);

\RAM_inst|memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~89_q\);

\RAM_inst|memory~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~217_q\);

\RAM_inst|memory~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~345_q\);

\RAM_inst|memory~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~473_q\);

\RAM_inst|memory~2072\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2072_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~473_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~345_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~217_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~89_q\,
	datab => \RAM_inst|ALT_INV_memory~217_q\,
	datac => \RAM_inst|ALT_INV_memory~345_q\,
	datad => \RAM_inst|ALT_INV_memory~473_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2072_combout\);

\RAM_inst|memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~121_q\);

\RAM_inst|memory~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~249_q\);

\RAM_inst|memory~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~377_q\);

\RAM_inst|memory~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~505_q\);

\RAM_inst|memory~2073\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2073_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~505_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~377_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~249_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~121_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~121_q\,
	datab => \RAM_inst|ALT_INV_memory~249_q\,
	datac => \RAM_inst|ALT_INV_memory~377_q\,
	datad => \RAM_inst|ALT_INV_memory~505_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2073_combout\);

\RAM_inst|memory~2074\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2074_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2073_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2072_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2071_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2070_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2070_combout\,
	datab => \RAM_inst|ALT_INV_memory~2071_combout\,
	datac => \RAM_inst|ALT_INV_memory~2072_combout\,
	datad => \RAM_inst|ALT_INV_memory~2073_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2074_combout\);

\RAM_inst|memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~33_q\);

\RAM_inst|memory~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~161_q\);

\RAM_inst|memory~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~289_q\);

\RAM_inst|memory~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~417_q\);

\RAM_inst|memory~2075\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2075_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~417_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~289_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~161_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~33_q\,
	datab => \RAM_inst|ALT_INV_memory~161_q\,
	datac => \RAM_inst|ALT_INV_memory~289_q\,
	datad => \RAM_inst|ALT_INV_memory~417_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2075_combout\);

\RAM_inst|memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~65_q\);

\RAM_inst|memory~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~193_q\);

\RAM_inst|memory~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~321_q\);

\RAM_inst|memory~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~449_q\);

\RAM_inst|memory~2076\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2076_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~449_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~321_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~193_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~65_q\,
	datab => \RAM_inst|ALT_INV_memory~193_q\,
	datac => \RAM_inst|ALT_INV_memory~321_q\,
	datad => \RAM_inst|ALT_INV_memory~449_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2076_combout\);

\RAM_inst|memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~97_q\);

\RAM_inst|memory~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~225_q\);

\RAM_inst|memory~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~353_q\);

\RAM_inst|memory~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~481_q\);

\RAM_inst|memory~2077\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2077_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~481_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~353_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~225_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~97_q\,
	datab => \RAM_inst|ALT_INV_memory~225_q\,
	datac => \RAM_inst|ALT_INV_memory~353_q\,
	datad => \RAM_inst|ALT_INV_memory~481_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2077_combout\);

\RAM_inst|memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~129_q\);

\RAM_inst|memory~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~257_q\);

\RAM_inst|memory~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~385_q\);

\RAM_inst|memory~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~513_q\);

\RAM_inst|memory~2078\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2078_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~513_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~385_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~257_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~129_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~129_q\,
	datab => \RAM_inst|ALT_INV_memory~257_q\,
	datac => \RAM_inst|ALT_INV_memory~385_q\,
	datad => \RAM_inst|ALT_INV_memory~513_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2078_combout\);

\RAM_inst|memory~2079\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2079_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2078_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2077_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2076_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2075_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2075_combout\,
	datab => \RAM_inst|ALT_INV_memory~2076_combout\,
	datac => \RAM_inst|ALT_INV_memory~2077_combout\,
	datad => \RAM_inst|ALT_INV_memory~2078_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2079_combout\);

\RAM_inst|memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2330_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
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
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~137_q\);

\RAM_inst|memory~2080\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2080_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~137_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~105_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~73_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~41_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2080_combout\);

\RAM_inst|memory~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2338_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
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
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~265_q\);

\RAM_inst|memory~2081\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2081_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~265_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~233_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~201_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~169_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2081_combout\);

\RAM_inst|memory~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~297_q\);

\RAM_inst|memory~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~329_q\);

\RAM_inst|memory~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~361_q\);

\RAM_inst|memory~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~393_q\);

\RAM_inst|memory~2082\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2082_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~393_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~361_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~329_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~297_q\,
	datab => \RAM_inst|ALT_INV_memory~329_q\,
	datac => \RAM_inst|ALT_INV_memory~361_q\,
	datad => \RAM_inst|ALT_INV_memory~393_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2082_combout\);

\RAM_inst|memory~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~425_q\);

\RAM_inst|memory~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~457_q\);

\RAM_inst|memory~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~489_q\);

\RAM_inst|memory~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux7~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~521_q\);

\RAM_inst|memory~2083\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2083_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~521_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~489_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~457_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~425_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~425_q\,
	datab => \RAM_inst|ALT_INV_memory~457_q\,
	datac => \RAM_inst|ALT_INV_memory~489_q\,
	datad => \RAM_inst|ALT_INV_memory~521_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2083_combout\);

\RAM_inst|memory~2084\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2084_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2083_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2082_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2081_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2080_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2080_combout\,
	datab => \RAM_inst|ALT_INV_memory~2081_combout\,
	datac => \RAM_inst|ALT_INV_memory~2082_combout\,
	datad => \RAM_inst|ALT_INV_memory~2083_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2084_combout\);

\RAM_inst|memory~2085\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2085_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2084_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2079_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2074_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2069_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2069_combout\,
	datab => \RAM_inst|ALT_INV_memory~2074_combout\,
	datac => \RAM_inst|ALT_INV_memory~2079_combout\,
	datad => \RAM_inst|ALT_INV_memory~2084_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2085_combout\);

\wdata[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[0]~1_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\RAM_inst|memory~2085_combout\ & \wdata[0]~0_combout\)) # (\ALU_inst|Mux7~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\RAM_inst|memory~2085_combout\ & \wdata[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux7~0_combout\,
	datac => \RAM_inst|ALT_INV_memory~2085_combout\,
	datad => \ALT_INV_wdata[0]~0_combout\,
	combout => \wdata[0]~1_combout\);

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

\MuxULA_inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux15~0_combout\ = ( \raddr2[0]~1_combout\ & ( (!\raddr2[1]~0_combout\ & (\RegBank_inst|regs[1][0]~q\)) # (\raddr2[1]~0_combout\ & ((\RegBank_inst|regs[3][0]~q\))) ) ) # ( !\raddr2[0]~1_combout\ & ( (!\raddr2[1]~0_combout\ & 
-- (\RegBank_inst|regs[0][0]~q\)) # (\raddr2[1]~0_combout\ & ((\RegBank_inst|regs[3][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000111100110011000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank_inst|ALT_INV_regs[1][0]~q\,
	datab => \RegBank_inst|ALT_INV_regs[0][0]~q\,
	datac => \RegBank_inst|ALT_INV_regs[3][0]~q\,
	datad => \ALT_INV_raddr2[1]~0_combout\,
	datae => \ALT_INV_raddr2[0]~1_combout\,
	combout => \MuxULA_inst|Mux15~0_combout\);

\MuxULA_inst|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux15~1_combout\ = ( \MuxULA_inst|Mux8~2_combout\ & ( (!\MuxULA_inst|Mux8~1_combout\ & ((\MuxULA_inst|Mux15~0_combout\))) # (\MuxULA_inst|Mux8~1_combout\ & (\RegBank_inst|regs[2][0]~q\)) ) ) # ( !\MuxULA_inst|Mux8~2_combout\ & ( 
-- !\ROM_inst|rom~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000011110011001110101010101010100000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~15_combout\,
	datab => \RegBank_inst|ALT_INV_regs[2][0]~q\,
	datac => \MuxULA_inst|ALT_INV_Mux15~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	datae => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	combout => \MuxULA_inst|Mux15~1_combout\);

\ram_addr[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_addr[0]~5_combout\ = (\ROM_inst|rom~11_combout\ & (\ROM_inst|rom~0_combout\ & (!\ROM_inst|rom~14_combout\ & \MuxULA_inst|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~11_combout\,
	datab => \ROM_inst|ALT_INV_rom~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	combout => \ram_addr[0]~5_combout\);

\RAM_inst|memory~2233\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2233_combout\ = ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( (!\ram_addr[0]~5_combout\ & (!\ram_addr[1]~4_combout\ & (!\ram_addr[2]~3_combout\ & !\ram_addr[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_addr[0]~5_combout\,
	datab => \ALT_INV_ram_addr[1]~4_combout\,
	datac => \ALT_INV_ram_addr[2]~3_combout\,
	datad => \ALT_INV_ram_addr[3]~2_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2233_combout\);

\RAM_inst|memory~2234\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2234_combout\ = (\Equal0~2_combout\ & \RAM_inst|memory~2233_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \RAM_inst|ALT_INV_memory~2233_combout\,
	combout => \RAM_inst|memory~2234_combout\);

\RAM_inst|memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
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
	ena => \RAM_inst|memory~2266_combout\,
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
	ena => \RAM_inst|memory~2298_combout\,
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
	ena => \RAM_inst|memory~2330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~46_q\);

\RAM_inst|memory~2170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2170_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~46_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~38_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~30_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~22_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2170_combout\);

\RAM_inst|memory~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
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
	ena => \RAM_inst|memory~2268_combout\,
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
	ena => \RAM_inst|memory~2300_combout\,
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
	ena => \RAM_inst|memory~2338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~174_q\);

\RAM_inst|memory~2171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2171_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~174_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~166_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~158_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~150_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2171_combout\);

\RAM_inst|memory~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~278_q\);

\RAM_inst|memory~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~286_q\);

\RAM_inst|memory~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~294_q\);

\RAM_inst|memory~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~302_q\);

\RAM_inst|memory~2172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2172_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~302_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~294_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~286_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~278_q\,
	datab => \RAM_inst|ALT_INV_memory~286_q\,
	datac => \RAM_inst|ALT_INV_memory~294_q\,
	datad => \RAM_inst|ALT_INV_memory~302_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2172_combout\);

\RAM_inst|memory~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~406_q\);

\RAM_inst|memory~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~414_q\);

\RAM_inst|memory~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~422_q\);

\RAM_inst|memory~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~430_q\);

\RAM_inst|memory~2173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2173_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~430_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~422_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~414_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~406_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~406_q\,
	datab => \RAM_inst|ALT_INV_memory~414_q\,
	datac => \RAM_inst|ALT_INV_memory~422_q\,
	datad => \RAM_inst|ALT_INV_memory~430_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2173_combout\);

\RAM_inst|memory~2174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2174_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2173_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2172_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2171_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2170_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2170_combout\,
	datab => \RAM_inst|ALT_INV_memory~2171_combout\,
	datac => \RAM_inst|ALT_INV_memory~2172_combout\,
	datad => \RAM_inst|ALT_INV_memory~2173_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2174_combout\);

\RAM_inst|memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
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
	ena => \RAM_inst|memory~2274_combout\,
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
	ena => \RAM_inst|memory~2306_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~78_q\);

\RAM_inst|memory~2175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2175_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~78_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~70_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~62_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~54_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2175_combout\);

\RAM_inst|memory~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
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
	ena => \RAM_inst|memory~2276_combout\,
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
	ena => \RAM_inst|memory~2308_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~206_q\);

\RAM_inst|memory~2176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2176_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~206_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~198_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~190_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~182_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2176_combout\);

\RAM_inst|memory~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~310_q\);

\RAM_inst|memory~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~318_q\);

\RAM_inst|memory~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~326_q\);

\RAM_inst|memory~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~334_q\);

\RAM_inst|memory~2177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2177_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~334_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~326_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~318_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~310_q\,
	datab => \RAM_inst|ALT_INV_memory~318_q\,
	datac => \RAM_inst|ALT_INV_memory~326_q\,
	datad => \RAM_inst|ALT_INV_memory~334_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2177_combout\);

\RAM_inst|memory~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~438_q\);

\RAM_inst|memory~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~446_q\);

\RAM_inst|memory~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~454_q\);

\RAM_inst|memory~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~462_q\);

\RAM_inst|memory~2178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2178_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~462_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~454_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~446_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~438_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~438_q\,
	datab => \RAM_inst|ALT_INV_memory~446_q\,
	datac => \RAM_inst|ALT_INV_memory~454_q\,
	datad => \RAM_inst|ALT_INV_memory~462_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2178_combout\);

\RAM_inst|memory~2179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2179_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2178_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2177_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2176_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2175_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2175_combout\,
	datab => \RAM_inst|ALT_INV_memory~2176_combout\,
	datac => \RAM_inst|ALT_INV_memory~2177_combout\,
	datad => \RAM_inst|ALT_INV_memory~2178_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2179_combout\);

\RAM_inst|memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
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
	ena => \RAM_inst|memory~2282_combout\,
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
	ena => \RAM_inst|memory~2314_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~110_q\);

\RAM_inst|memory~2180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2180_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~110_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~102_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~94_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~86_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2180_combout\);

\RAM_inst|memory~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
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
	ena => \RAM_inst|memory~2284_combout\,
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
	ena => \RAM_inst|memory~2316_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~238_q\);

\RAM_inst|memory~2181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2181_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~238_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~230_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~222_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~214_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2181_combout\);

\RAM_inst|memory~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~342_q\);

\RAM_inst|memory~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~350_q\);

\RAM_inst|memory~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~358_q\);

\RAM_inst|memory~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~366_q\);

\RAM_inst|memory~2182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2182_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~366_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~358_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~350_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~342_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~342_q\,
	datab => \RAM_inst|ALT_INV_memory~350_q\,
	datac => \RAM_inst|ALT_INV_memory~358_q\,
	datad => \RAM_inst|ALT_INV_memory~366_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2182_combout\);

\RAM_inst|memory~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~470_q\);

\RAM_inst|memory~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~478_q\);

\RAM_inst|memory~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~486_q\);

\RAM_inst|memory~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~494_q\);

\RAM_inst|memory~2183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2183_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~494_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~486_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~478_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~470_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~470_q\,
	datab => \RAM_inst|ALT_INV_memory~478_q\,
	datac => \RAM_inst|ALT_INV_memory~486_q\,
	datad => \RAM_inst|ALT_INV_memory~494_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2183_combout\);

\RAM_inst|memory~2184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2184_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2183_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2182_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2181_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2180_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2180_combout\,
	datab => \RAM_inst|ALT_INV_memory~2181_combout\,
	datac => \RAM_inst|ALT_INV_memory~2182_combout\,
	datad => \RAM_inst|ALT_INV_memory~2183_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2184_combout\);

\RAM_inst|memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~118_q\);

\RAM_inst|memory~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~246_q\);

\RAM_inst|memory~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~374_q\);

\RAM_inst|memory~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~502_q\);

\RAM_inst|memory~2185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2185_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~502_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~374_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~246_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~118_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~118_q\,
	datab => \RAM_inst|ALT_INV_memory~246_q\,
	datac => \RAM_inst|ALT_INV_memory~374_q\,
	datad => \RAM_inst|ALT_INV_memory~502_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2185_combout\);

\RAM_inst|memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~126_q\);

\RAM_inst|memory~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~254_q\);

\RAM_inst|memory~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~382_q\);

\RAM_inst|memory~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~510_q\);

\RAM_inst|memory~2186\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2186_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~510_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~382_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~254_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~126_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~126_q\,
	datab => \RAM_inst|ALT_INV_memory~254_q\,
	datac => \RAM_inst|ALT_INV_memory~382_q\,
	datad => \RAM_inst|ALT_INV_memory~510_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2186_combout\);

\RAM_inst|memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~134_q\);

\RAM_inst|memory~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~262_q\);

\RAM_inst|memory~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~390_q\);

\RAM_inst|memory~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~518_q\);

\RAM_inst|memory~2187\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2187_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~518_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~390_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~262_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~134_q\,
	datab => \RAM_inst|ALT_INV_memory~262_q\,
	datac => \RAM_inst|ALT_INV_memory~390_q\,
	datad => \RAM_inst|ALT_INV_memory~518_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2187_combout\);

\RAM_inst|memory~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~142_q\);

\RAM_inst|memory~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~270_q\);

\RAM_inst|memory~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~398_q\);

\RAM_inst|memory~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux2~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~526_q\);

\RAM_inst|memory~2188\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2188_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~526_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~398_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~270_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~142_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~142_q\,
	datab => \RAM_inst|ALT_INV_memory~270_q\,
	datac => \RAM_inst|ALT_INV_memory~398_q\,
	datad => \RAM_inst|ALT_INV_memory~526_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2188_combout\);

\RAM_inst|memory~2189\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2189_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2188_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2187_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2186_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2185_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2185_combout\,
	datab => \RAM_inst|ALT_INV_memory~2186_combout\,
	datac => \RAM_inst|ALT_INV_memory~2187_combout\,
	datad => \RAM_inst|ALT_INV_memory~2188_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2189_combout\);

\RAM_inst|memory~2190\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2190_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2189_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2184_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2179_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2174_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2174_combout\,
	datab => \RAM_inst|ALT_INV_memory~2179_combout\,
	datac => \RAM_inst|ALT_INV_memory~2184_combout\,
	datad => \RAM_inst|ALT_INV_memory~2189_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2190_combout\);

\wdata[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[5]~6_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2190_combout\)) # (\ALU_inst|Mux2~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2190_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2190_combout\,
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

\MuxULA_inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux10~0_combout\ = ( \RegBank_inst|regs[3][5]~q\ & ( \RegBank_inst|regs[2][5]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][5]~q\))) # (\raddr2[1]~0_combout\) ) ) ) # ( 
-- !\RegBank_inst|regs[3][5]~q\ & ( \RegBank_inst|regs[2][5]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][5]~q\)))) # (\raddr2[1]~0_combout\ & 
-- (!\raddr2[0]~1_combout\)) ) ) ) # ( \RegBank_inst|regs[3][5]~q\ & ( !\RegBank_inst|regs[2][5]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][5]~q\)))) # 
-- (\raddr2[1]~0_combout\ & (\raddr2[0]~1_combout\)) ) ) ) # ( !\RegBank_inst|regs[3][5]~q\ & ( !\RegBank_inst|regs[2][5]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][5]~q\))) # (\raddr2[0]~1_combout\ & 
-- (\RegBank_inst|regs[1][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][5]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][5]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][5]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[2][5]~q\,
	combout => \MuxULA_inst|Mux10~0_combout\);

\MuxULA_inst|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux10~1_combout\ = (\MuxULA_inst|Mux8~2_combout\ & \MuxULA_inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux10~0_combout\,
	combout => \MuxULA_inst|Mux10~1_combout\);

\RAM_inst|memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
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
	ena => \RAM_inst|memory~2266_combout\,
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
	ena => \RAM_inst|memory~2298_combout\,
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
	ena => \RAM_inst|memory~2330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~43_q\);

\RAM_inst|memory~2107\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2107_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~43_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~35_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~27_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~19_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2107_combout\);

\RAM_inst|memory~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
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
	ena => \RAM_inst|memory~2268_combout\,
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
	ena => \RAM_inst|memory~2300_combout\,
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
	ena => \RAM_inst|memory~2338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~171_q\);

\RAM_inst|memory~2108\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2108_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~171_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~163_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~155_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~147_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2108_combout\);

\RAM_inst|memory~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~275_q\);

\RAM_inst|memory~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~283_q\);

\RAM_inst|memory~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~291_q\);

\RAM_inst|memory~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~299_q\);

\RAM_inst|memory~2109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2109_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~299_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~291_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~283_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~275_q\,
	datab => \RAM_inst|ALT_INV_memory~283_q\,
	datac => \RAM_inst|ALT_INV_memory~291_q\,
	datad => \RAM_inst|ALT_INV_memory~299_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2109_combout\);

\RAM_inst|memory~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~403_q\);

\RAM_inst|memory~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~411_q\);

\RAM_inst|memory~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~419_q\);

\RAM_inst|memory~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~427_q\);

\RAM_inst|memory~2110\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2110_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~427_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~419_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~411_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~403_q\,
	datab => \RAM_inst|ALT_INV_memory~411_q\,
	datac => \RAM_inst|ALT_INV_memory~419_q\,
	datad => \RAM_inst|ALT_INV_memory~427_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2110_combout\);

\RAM_inst|memory~2111\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2111_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2110_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2109_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2108_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2107_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2107_combout\,
	datab => \RAM_inst|ALT_INV_memory~2108_combout\,
	datac => \RAM_inst|ALT_INV_memory~2109_combout\,
	datad => \RAM_inst|ALT_INV_memory~2110_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2111_combout\);

\RAM_inst|memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
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
	ena => \RAM_inst|memory~2274_combout\,
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
	ena => \RAM_inst|memory~2306_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~75_q\);

\RAM_inst|memory~2112\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2112_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~75_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~67_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~59_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~51_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2112_combout\);

\RAM_inst|memory~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
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
	ena => \RAM_inst|memory~2276_combout\,
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
	ena => \RAM_inst|memory~2308_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~203_q\);

\RAM_inst|memory~2113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2113_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~203_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~195_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~187_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~179_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2113_combout\);

\RAM_inst|memory~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~307_q\);

\RAM_inst|memory~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~315_q\);

\RAM_inst|memory~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~323_q\);

\RAM_inst|memory~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~331_q\);

\RAM_inst|memory~2114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2114_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~331_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~323_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~315_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~307_q\,
	datab => \RAM_inst|ALT_INV_memory~315_q\,
	datac => \RAM_inst|ALT_INV_memory~323_q\,
	datad => \RAM_inst|ALT_INV_memory~331_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2114_combout\);

\RAM_inst|memory~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~435_q\);

\RAM_inst|memory~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~443_q\);

\RAM_inst|memory~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~451_q\);

\RAM_inst|memory~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~459_q\);

\RAM_inst|memory~2115\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2115_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~459_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~451_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~443_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~435_q\,
	datab => \RAM_inst|ALT_INV_memory~443_q\,
	datac => \RAM_inst|ALT_INV_memory~451_q\,
	datad => \RAM_inst|ALT_INV_memory~459_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2115_combout\);

\RAM_inst|memory~2116\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2116_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2115_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2114_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2113_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2112_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2112_combout\,
	datab => \RAM_inst|ALT_INV_memory~2113_combout\,
	datac => \RAM_inst|ALT_INV_memory~2114_combout\,
	datad => \RAM_inst|ALT_INV_memory~2115_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2116_combout\);

\RAM_inst|memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
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
	ena => \RAM_inst|memory~2282_combout\,
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
	ena => \RAM_inst|memory~2314_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~107_q\);

\RAM_inst|memory~2117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2117_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~107_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~99_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~91_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~83_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2117_combout\);

\RAM_inst|memory~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
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
	ena => \RAM_inst|memory~2284_combout\,
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
	ena => \RAM_inst|memory~2316_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~235_q\);

\RAM_inst|memory~2118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2118_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~235_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~227_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~219_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~211_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2118_combout\);

\RAM_inst|memory~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~339_q\);

\RAM_inst|memory~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~347_q\);

\RAM_inst|memory~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~355_q\);

\RAM_inst|memory~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~363_q\);

\RAM_inst|memory~2119\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2119_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~363_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~355_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~347_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~339_q\,
	datab => \RAM_inst|ALT_INV_memory~347_q\,
	datac => \RAM_inst|ALT_INV_memory~355_q\,
	datad => \RAM_inst|ALT_INV_memory~363_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2119_combout\);

\RAM_inst|memory~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~467_q\);

\RAM_inst|memory~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~475_q\);

\RAM_inst|memory~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~483_q\);

\RAM_inst|memory~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~491_q\);

\RAM_inst|memory~2120\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2120_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~491_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~483_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~475_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~467_q\,
	datab => \RAM_inst|ALT_INV_memory~475_q\,
	datac => \RAM_inst|ALT_INV_memory~483_q\,
	datad => \RAM_inst|ALT_INV_memory~491_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2120_combout\);

\RAM_inst|memory~2121\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2121_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2120_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2119_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2118_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2117_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2117_combout\,
	datab => \RAM_inst|ALT_INV_memory~2118_combout\,
	datac => \RAM_inst|ALT_INV_memory~2119_combout\,
	datad => \RAM_inst|ALT_INV_memory~2120_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2121_combout\);

\RAM_inst|memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~115_q\);

\RAM_inst|memory~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~243_q\);

\RAM_inst|memory~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~371_q\);

\RAM_inst|memory~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~499_q\);

\RAM_inst|memory~2122\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2122_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~499_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~371_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~243_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~115_q\,
	datab => \RAM_inst|ALT_INV_memory~243_q\,
	datac => \RAM_inst|ALT_INV_memory~371_q\,
	datad => \RAM_inst|ALT_INV_memory~499_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2122_combout\);

\RAM_inst|memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~123_q\);

\RAM_inst|memory~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~251_q\);

\RAM_inst|memory~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~379_q\);

\RAM_inst|memory~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~507_q\);

\RAM_inst|memory~2123\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2123_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~507_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~379_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~251_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~123_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~123_q\,
	datab => \RAM_inst|ALT_INV_memory~251_q\,
	datac => \RAM_inst|ALT_INV_memory~379_q\,
	datad => \RAM_inst|ALT_INV_memory~507_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2123_combout\);

\RAM_inst|memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~131_q\);

\RAM_inst|memory~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~259_q\);

\RAM_inst|memory~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~387_q\);

\RAM_inst|memory~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~515_q\);

\RAM_inst|memory~2124\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2124_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~515_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~387_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~259_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~131_q\,
	datab => \RAM_inst|ALT_INV_memory~259_q\,
	datac => \RAM_inst|ALT_INV_memory~387_q\,
	datad => \RAM_inst|ALT_INV_memory~515_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2124_combout\);

\RAM_inst|memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~139_q\);

\RAM_inst|memory~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~267_q\);

\RAM_inst|memory~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~395_q\);

\RAM_inst|memory~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux5~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~523_q\);

\RAM_inst|memory~2125\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2125_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~523_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~395_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~267_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~139_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~139_q\,
	datab => \RAM_inst|ALT_INV_memory~267_q\,
	datac => \RAM_inst|ALT_INV_memory~395_q\,
	datad => \RAM_inst|ALT_INV_memory~523_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2125_combout\);

\RAM_inst|memory~2126\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2126_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2125_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2124_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2123_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2122_combout\ ) ) )

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
	datad => \RAM_inst|ALT_INV_memory~2125_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2126_combout\);

\RAM_inst|memory~2127\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2127_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2126_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2121_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2116_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2111_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2111_combout\,
	datab => \RAM_inst|ALT_INV_memory~2116_combout\,
	datac => \RAM_inst|ALT_INV_memory~2121_combout\,
	datad => \RAM_inst|ALT_INV_memory~2126_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2127_combout\);

\wdata[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[2]~3_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2127_combout\)) # (\ALU_inst|Mux5~2_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2127_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2127_combout\,
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
-- \RegBank_inst|Mux5~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][2]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][2]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][2]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][2]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux5~0_combout\);

\ALU_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~9_sumout\ = SUM(( \MuxULA_inst|Mux13~1_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~6\ ))
-- \ALU_inst|Add0~10\ = CARRY(( \MuxULA_inst|Mux13~1_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~6\ ))

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
	datad => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add0~6\,
	sumout => \ALU_inst|Add0~9_sumout\,
	cout => \ALU_inst|Add0~10\);

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
-- \ALU_inst|Add0~17_sumout\ = SUM(( \MuxULA_inst|Mux11~2_combout\ ) + ( (\RegBank_inst|Mux3~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~14\ ))
-- \ALU_inst|Add0~18\ = CARRY(( \MuxULA_inst|Mux11~2_combout\ ) + ( (\RegBank_inst|Mux3~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux3~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux11~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	cin => \ALU_inst|Add0~14\,
	sumout => \ALU_inst|Add0~17_sumout\,
	cout => \ALU_inst|Add0~18\);

\ALU_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~21_sumout\ = SUM(( (\RegBank_inst|Mux2~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \MuxULA_inst|Mux10~1_combout\ ) + ( \ALU_inst|Add0~18\ ))
-- \ALU_inst|Add0~22\ = CARRY(( (\RegBank_inst|Mux2~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \MuxULA_inst|Mux10~1_combout\ ) + ( \ALU_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \RegBank_inst|ALT_INV_Mux2~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~1_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux10~1_combout\,
	cin => \ALU_inst|Add0~18\,
	sumout => \ALU_inst|Add0~21_sumout\,
	cout => \ALU_inst|Add0~22\);

\PC_inst|pc_v~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~7_combout\ = ( \ALU_inst|Add0~21_sumout\ & ( !\ALU_inst|Mux6~0_combout\ & ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & ((!\MuxULA_inst|Mux10~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Add1~21_sumout\)))) ) ) 
-- ) # ( !\ALU_inst|Add0~21_sumout\ & ( !\ALU_inst|Mux6~0_combout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((!\MuxULA_inst|Mux10~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011011000011100100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~21_sumout\,
	datad => \MuxULA_inst|ALT_INV_Mux10~1_combout\,
	datae => \ALU_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ALU_inst|ALT_INV_Mux6~0_combout\,
	combout => \PC_inst|pc_v~7_combout\);

\PC_inst|pc_v~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~1_combout\ = ( \ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(4) & (\ROM_inst|rom~12_combout\ & (!\ROM_inst|rom~9_combout\ & \ROM_inst|rom~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \ROM_inst|ALT_INV_rom~11_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \PC_inst|pc_v~1_combout\);

\PC_inst|pc_v~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~2_combout\ = ( \ALU_inst|Mux5~1_combout\ & ( \ALU_inst|Add0~1_sumout\ & ( (\PC_inst|pc_v~1_combout\ & ((!\ALU_inst|Mux5~0_combout\ & (!\MuxULA_inst|Mux15~1_combout\)) # (\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Add1~1_sumout\))))) ) ) ) # ( 
-- !\ALU_inst|Mux5~1_combout\ & ( \ALU_inst|Add0~1_sumout\ & ( (\ALU_inst|Mux5~0_combout\ & (\PC_inst|pc_v~1_combout\ & !\ALU_inst|Add1~1_sumout\)) ) ) ) # ( \ALU_inst|Mux5~1_combout\ & ( !\ALU_inst|Add0~1_sumout\ & ( (\PC_inst|pc_v~1_combout\ & 
-- ((!\ALU_inst|Mux5~0_combout\ & (!\MuxULA_inst|Mux15~1_combout\)) # (\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Add1~1_sumout\))))) ) ) ) # ( !\ALU_inst|Mux5~1_combout\ & ( !\ALU_inst|Add0~1_sumout\ & ( (\PC_inst|pc_v~1_combout\ & 
-- ((!\ALU_inst|Mux5~0_combout\) # (!\ALU_inst|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100010010000000010001000000000011000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \PC_inst|ALT_INV_pc_v~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux15~1_combout\,
	datad => \ALU_inst|ALT_INV_Add1~1_sumout\,
	datae => \ALU_inst|ALT_INV_Mux5~1_combout\,
	dataf => \ALU_inst|ALT_INV_Add0~1_sumout\,
	combout => \PC_inst|pc_v~2_combout\);

\PC_inst|pc_v~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~8_combout\ = (!\ALU_inst|Mux4~0_combout\ & (!\ALU_inst|Mux3~0_combout\ & (!\ALU_inst|Mux5~2_combout\ & \PC_inst|pc_v~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \ALU_inst|ALT_INV_Mux5~2_combout\,
	datad => \PC_inst|ALT_INV_pc_v~2_combout\,
	combout => \PC_inst|pc_v~8_combout\);

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
-- \PC_inst|pc_v~12_combout\ = ( \PC_inst|Add0~25_sumout\ & ( (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # ((!\PC_inst|pc_v~7_combout\) # (!\PC_inst|pc_v~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100000000000000000001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \PC_inst|ALT_INV_pc_v~0_combout\,
	datac => \PC_inst|ALT_INV_pc_v~7_combout\,
	datad => \PC_inst|ALT_INV_pc_v~8_combout\,
	datae => \PC_inst|ALT_INV_Add0~25_sumout\,
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

\MuxULA_inst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux6~2_combout\ = ( \ROM_inst|rom~13_combout\ & ( \MuxULA_inst|Mux6~0_combout\ & ( ((!\ROM_inst|rom~12_combout\ & ((!\ROM_inst|rom~11_combout\))) # (\ROM_inst|rom~12_combout\ & (!\ROM_inst|rom~9_combout\))) # (\PC_inst|pc_reg\(6)) ) ) ) # ( 
-- !\ROM_inst|rom~13_combout\ & ( \MuxULA_inst|Mux6~0_combout\ & ( (!\ROM_inst|rom~11_combout\) # (\PC_inst|pc_reg\(6)) ) ) ) # ( \ROM_inst|rom~13_combout\ & ( !\MuxULA_inst|Mux6~0_combout\ ) ) # ( !\ROM_inst|rom~13_combout\ & ( !\MuxULA_inst|Mux6~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111010101011111110101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(6),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ROM_inst|ALT_INV_rom~9_combout\,
	datad => \ROM_inst|ALT_INV_rom~11_combout\,
	datae => \ROM_inst|ALT_INV_rom~13_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux6~0_combout\,
	combout => \MuxULA_inst|Mux6~2_combout\);

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

\MuxULA_inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux9~0_combout\ = ( \RegBank_inst|regs[3][6]~q\ & ( \RegBank_inst|regs[2][6]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][6]~q\))) # (\raddr2[1]~0_combout\) ) ) ) # ( 
-- !\RegBank_inst|regs[3][6]~q\ & ( \RegBank_inst|regs[2][6]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][6]~q\)))) # (\raddr2[1]~0_combout\ & 
-- (!\raddr2[0]~1_combout\)) ) ) ) # ( \RegBank_inst|regs[3][6]~q\ & ( !\RegBank_inst|regs[2][6]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][6]~q\)))) # 
-- (\raddr2[1]~0_combout\ & (\raddr2[0]~1_combout\)) ) ) ) # ( !\RegBank_inst|regs[3][6]~q\ & ( !\RegBank_inst|regs[2][6]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][6]~q\))) # (\raddr2[0]~1_combout\ & 
-- (\RegBank_inst|regs[1][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][6]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][6]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][6]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[2][6]~q\,
	combout => \MuxULA_inst|Mux9~0_combout\);

\ALU_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~25_sumout\ = SUM(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux8~2_combout\ & \MuxULA_inst|Mux9~0_combout\) ) + ( \ALU_inst|Add0~22\ ))
-- \ALU_inst|Add0~26\ = CARRY(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux8~2_combout\ & \MuxULA_inst|Mux9~0_combout\) ) + ( \ALU_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datac => \RegBank_inst|ALT_INV_Mux1~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
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

\RAM_inst|memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~23_q\);

\RAM_inst|memory~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~151_q\);

\RAM_inst|memory~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~279_q\);

\RAM_inst|memory~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~407_q\);

\RAM_inst|memory~2191\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2191_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~407_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~279_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~151_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~23_q\,
	datab => \RAM_inst|ALT_INV_memory~151_q\,
	datac => \RAM_inst|ALT_INV_memory~279_q\,
	datad => \RAM_inst|ALT_INV_memory~407_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2191_combout\);

\RAM_inst|memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~55_q\);

\RAM_inst|memory~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~183_q\);

\RAM_inst|memory~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~311_q\);

\RAM_inst|memory~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~439_q\);

\RAM_inst|memory~2192\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2192_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~439_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~311_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~183_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~55_q\,
	datab => \RAM_inst|ALT_INV_memory~183_q\,
	datac => \RAM_inst|ALT_INV_memory~311_q\,
	datad => \RAM_inst|ALT_INV_memory~439_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2192_combout\);

\RAM_inst|memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~87_q\);

\RAM_inst|memory~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~215_q\);

\RAM_inst|memory~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~343_q\);

\RAM_inst|memory~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~471_q\);

\RAM_inst|memory~2193\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2193_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~471_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~343_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~215_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~87_q\,
	datab => \RAM_inst|ALT_INV_memory~215_q\,
	datac => \RAM_inst|ALT_INV_memory~343_q\,
	datad => \RAM_inst|ALT_INV_memory~471_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2193_combout\);

\RAM_inst|memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~119_q\);

\RAM_inst|memory~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~247_q\);

\RAM_inst|memory~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~375_q\);

\RAM_inst|memory~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~503_q\);

\RAM_inst|memory~2194\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2194_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~503_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~375_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~247_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~119_q\,
	datab => \RAM_inst|ALT_INV_memory~247_q\,
	datac => \RAM_inst|ALT_INV_memory~375_q\,
	datad => \RAM_inst|ALT_INV_memory~503_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2194_combout\);

\RAM_inst|memory~2195\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2195_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2194_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2193_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2192_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2191_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2191_combout\,
	datab => \RAM_inst|ALT_INV_memory~2192_combout\,
	datac => \RAM_inst|ALT_INV_memory~2193_combout\,
	datad => \RAM_inst|ALT_INV_memory~2194_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2195_combout\);

\RAM_inst|memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~31_q\);

\RAM_inst|memory~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~159_q\);

\RAM_inst|memory~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~287_q\);

\RAM_inst|memory~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~415_q\);

\RAM_inst|memory~2196\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2196_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~415_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~287_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~159_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~31_q\,
	datab => \RAM_inst|ALT_INV_memory~159_q\,
	datac => \RAM_inst|ALT_INV_memory~287_q\,
	datad => \RAM_inst|ALT_INV_memory~415_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2196_combout\);

\RAM_inst|memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~63_q\);

\RAM_inst|memory~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~191_q\);

\RAM_inst|memory~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~319_q\);

\RAM_inst|memory~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~447_q\);

\RAM_inst|memory~2197\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2197_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~447_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~319_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~191_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~63_q\,
	datab => \RAM_inst|ALT_INV_memory~191_q\,
	datac => \RAM_inst|ALT_INV_memory~319_q\,
	datad => \RAM_inst|ALT_INV_memory~447_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2197_combout\);

\RAM_inst|memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~95_q\);

\RAM_inst|memory~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~223_q\);

\RAM_inst|memory~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~351_q\);

\RAM_inst|memory~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~479_q\);

\RAM_inst|memory~2198\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2198_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~479_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~351_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~223_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~95_q\,
	datab => \RAM_inst|ALT_INV_memory~223_q\,
	datac => \RAM_inst|ALT_INV_memory~351_q\,
	datad => \RAM_inst|ALT_INV_memory~479_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2198_combout\);

\RAM_inst|memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~127_q\);

\RAM_inst|memory~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~255_q\);

\RAM_inst|memory~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~383_q\);

\RAM_inst|memory~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~511_q\);

\RAM_inst|memory~2199\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2199_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~511_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~383_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~255_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~127_q\,
	datab => \RAM_inst|ALT_INV_memory~255_q\,
	datac => \RAM_inst|ALT_INV_memory~383_q\,
	datad => \RAM_inst|ALT_INV_memory~511_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2199_combout\);

\RAM_inst|memory~2200\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2200_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2199_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2198_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2197_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2196_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2196_combout\,
	datab => \RAM_inst|ALT_INV_memory~2197_combout\,
	datac => \RAM_inst|ALT_INV_memory~2198_combout\,
	datad => \RAM_inst|ALT_INV_memory~2199_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2200_combout\);

\RAM_inst|memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~39_q\);

\RAM_inst|memory~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~167_q\);

\RAM_inst|memory~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~295_q\);

\RAM_inst|memory~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~423_q\);

\RAM_inst|memory~2201\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2201_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~423_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~295_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~167_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~39_q\,
	datab => \RAM_inst|ALT_INV_memory~167_q\,
	datac => \RAM_inst|ALT_INV_memory~295_q\,
	datad => \RAM_inst|ALT_INV_memory~423_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2201_combout\);

\RAM_inst|memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~71_q\);

\RAM_inst|memory~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~199_q\);

\RAM_inst|memory~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~327_q\);

\RAM_inst|memory~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~455_q\);

\RAM_inst|memory~2202\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2202_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~455_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~327_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~199_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~71_q\,
	datab => \RAM_inst|ALT_INV_memory~199_q\,
	datac => \RAM_inst|ALT_INV_memory~327_q\,
	datad => \RAM_inst|ALT_INV_memory~455_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2202_combout\);

\RAM_inst|memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~103_q\);

\RAM_inst|memory~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~231_q\);

\RAM_inst|memory~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~359_q\);

\RAM_inst|memory~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~487_q\);

\RAM_inst|memory~2203\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2203_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~487_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~359_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~231_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~103_q\,
	datab => \RAM_inst|ALT_INV_memory~231_q\,
	datac => \RAM_inst|ALT_INV_memory~359_q\,
	datad => \RAM_inst|ALT_INV_memory~487_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2203_combout\);

\RAM_inst|memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~135_q\);

\RAM_inst|memory~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~263_q\);

\RAM_inst|memory~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~391_q\);

\RAM_inst|memory~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~519_q\);

\RAM_inst|memory~2204\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2204_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~519_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~391_q\ ) ) ) # ( \ram_addr[4]~1_combout\ & ( 
-- !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~263_q\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~135_q\,
	datab => \RAM_inst|ALT_INV_memory~263_q\,
	datac => \RAM_inst|ALT_INV_memory~391_q\,
	datad => \RAM_inst|ALT_INV_memory~519_q\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2204_combout\);

\RAM_inst|memory~2205\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2205_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2204_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2203_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2202_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2201_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2201_combout\,
	datab => \RAM_inst|ALT_INV_memory~2202_combout\,
	datac => \RAM_inst|ALT_INV_memory~2203_combout\,
	datad => \RAM_inst|ALT_INV_memory~2204_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2205_combout\);

\RAM_inst|memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2330_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
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
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~143_q\);

\RAM_inst|memory~2206\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2206_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~143_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~111_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~79_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~47_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2206_combout\);

\RAM_inst|memory~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2338_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
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
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~271_q\);

\RAM_inst|memory~2207\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2207_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~271_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~239_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~207_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~175_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2207_combout\);

\RAM_inst|memory~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~303_q\);

\RAM_inst|memory~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~335_q\);

\RAM_inst|memory~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~367_q\);

\RAM_inst|memory~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~399_q\);

\RAM_inst|memory~2208\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2208_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~399_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~367_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~335_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~303_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~303_q\,
	datab => \RAM_inst|ALT_INV_memory~335_q\,
	datac => \RAM_inst|ALT_INV_memory~367_q\,
	datad => \RAM_inst|ALT_INV_memory~399_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2208_combout\);

\RAM_inst|memory~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~431_q\);

\RAM_inst|memory~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~463_q\);

\RAM_inst|memory~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~495_q\);

\RAM_inst|memory~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux1~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~527_q\);

\RAM_inst|memory~2209\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2209_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~527_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~495_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~463_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~431_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~431_q\,
	datab => \RAM_inst|ALT_INV_memory~463_q\,
	datac => \RAM_inst|ALT_INV_memory~495_q\,
	datad => \RAM_inst|ALT_INV_memory~527_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2209_combout\);

\RAM_inst|memory~2210\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2210_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2209_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2208_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2207_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2206_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2206_combout\,
	datab => \RAM_inst|ALT_INV_memory~2207_combout\,
	datac => \RAM_inst|ALT_INV_memory~2208_combout\,
	datad => \RAM_inst|ALT_INV_memory~2209_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2210_combout\);

\RAM_inst|memory~2211\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2211_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2210_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2205_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2200_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2195_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2195_combout\,
	datab => \RAM_inst|ALT_INV_memory~2200_combout\,
	datac => \RAM_inst|ALT_INV_memory~2205_combout\,
	datad => \RAM_inst|ALT_INV_memory~2210_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2211_combout\);

\wdata[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[6]~7_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2211_combout\)) # (\ALU_inst|Mux1~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2211_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2211_combout\,
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

\RegBank_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegBank_inst|Mux1~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][6]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][6]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][6]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][6]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux1~0_combout\);

\ALU_inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~9_sumout\ = SUM(( !\MuxULA_inst|Mux13~1_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~6\ ))
-- \ALU_inst|Add1~10\ = CARRY(( !\MuxULA_inst|Mux13~1_combout\ ) + ( (\RegBank_inst|Mux5~0_combout\ & (((\MuxULA_inst|Mux6~1_combout\) # (\PC_inst|pc_reg\(6))) # (\PC_inst|pc_reg\(7)))) ) + ( \ALU_inst|Add1~6\ ))

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
	datad => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
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
-- \ALU_inst|Add1~21_sumout\ = SUM(( (\RegBank_inst|Mux2~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux8~2_combout\) # (!\MuxULA_inst|Mux10~0_combout\) ) + ( \ALU_inst|Add1~18\ ))
-- \ALU_inst|Add1~22\ = CARRY(( (\RegBank_inst|Mux2~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux8~2_combout\) # (!\MuxULA_inst|Mux10~0_combout\) ) + ( \ALU_inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datac => \RegBank_inst|ALT_INV_Mux2~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux10~0_combout\,
	cin => \ALU_inst|Add1~18\,
	sumout => \ALU_inst|Add1~21_sumout\,
	cout => \ALU_inst|Add1~22\);

\ALU_inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~25_sumout\ = SUM(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux8~2_combout\) # (!\MuxULA_inst|Mux9~0_combout\) ) + ( \ALU_inst|Add1~22\ ))
-- \ALU_inst|Add1~26\ = CARRY(( (\RegBank_inst|Mux1~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux8~2_combout\) # (!\MuxULA_inst|Mux9~0_combout\) ) + ( \ALU_inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datac => \RegBank_inst|ALT_INV_Mux1~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux9~0_combout\,
	cin => \ALU_inst|Add1~22\,
	sumout => \ALU_inst|Add1~25_sumout\,
	cout => \ALU_inst|Add1~26\);

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

\MuxULA_inst|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux8~3_combout\ = ( \RegBank_inst|regs[3][7]~q\ & ( \RegBank_inst|regs[2][7]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][7]~q\))) # (\raddr2[1]~0_combout\) ) ) ) # ( 
-- !\RegBank_inst|regs[3][7]~q\ & ( \RegBank_inst|regs[2][7]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][7]~q\)))) # (\raddr2[1]~0_combout\ & 
-- (!\raddr2[0]~1_combout\)) ) ) ) # ( \RegBank_inst|regs[3][7]~q\ & ( !\RegBank_inst|regs[2][7]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][7]~q\)))) # 
-- (\raddr2[1]~0_combout\ & (\raddr2[0]~1_combout\)) ) ) ) # ( !\RegBank_inst|regs[3][7]~q\ & ( !\RegBank_inst|regs[2][7]~q\ & ( (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][7]~q\))) # (\raddr2[0]~1_combout\ & 
-- (\RegBank_inst|regs[1][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][7]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][7]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][7]~q\,
	dataf => \RegBank_inst|ALT_INV_regs[2][7]~q\,
	combout => \MuxULA_inst|Mux8~3_combout\);

\ALU_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~29_sumout\ = SUM(( (\RegBank_inst|Mux0~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (\MuxULA_inst|Mux8~2_combout\ & \MuxULA_inst|Mux8~3_combout\) ) + ( \ALU_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datac => \RegBank_inst|ALT_INV_Mux0~0_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux8~3_combout\,
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

\RAM_inst|memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2234_combout\,
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
	ena => \RAM_inst|memory~2266_combout\,
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
	ena => \RAM_inst|memory~2298_combout\,
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
	ena => \RAM_inst|memory~2330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~48_q\);

\RAM_inst|memory~2212\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2212_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~48_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~40_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~32_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~24_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2212_combout\);

\RAM_inst|memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2242_combout\,
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
	ena => \RAM_inst|memory~2274_combout\,
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
	ena => \RAM_inst|memory~2306_combout\,
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
	ena => \RAM_inst|memory~2332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~80_q\);

\RAM_inst|memory~2213\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2213_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~80_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~72_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~64_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~56_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2213_combout\);

\RAM_inst|memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2250_combout\,
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
	ena => \RAM_inst|memory~2282_combout\,
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
	ena => \RAM_inst|memory~2314_combout\,
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
	ena => \RAM_inst|memory~2334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~112_q\);

\RAM_inst|memory~2214\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2214_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~112_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~104_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~96_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~88_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2214_combout\);

\RAM_inst|memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2258_combout\,
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
	ena => \RAM_inst|memory~2290_combout\,
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
	ena => \RAM_inst|memory~2322_combout\,
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
	ena => \RAM_inst|memory~2336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~144_q\);

\RAM_inst|memory~2215\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2215_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~144_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~136_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~128_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~120_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2215_combout\);

\RAM_inst|memory~2216\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2216_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2215_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2214_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2213_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2212_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2212_combout\,
	datab => \RAM_inst|ALT_INV_memory~2213_combout\,
	datac => \RAM_inst|ALT_INV_memory~2214_combout\,
	datad => \RAM_inst|ALT_INV_memory~2215_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2216_combout\);

\RAM_inst|memory~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2236_combout\,
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
	ena => \RAM_inst|memory~2268_combout\,
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
	ena => \RAM_inst|memory~2300_combout\,
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
	ena => \RAM_inst|memory~2338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~176_q\);

\RAM_inst|memory~2217\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2217_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~176_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~168_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~160_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~152_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2217_combout\);

\RAM_inst|memory~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2244_combout\,
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
	ena => \RAM_inst|memory~2276_combout\,
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
	ena => \RAM_inst|memory~2308_combout\,
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
	ena => \RAM_inst|memory~2340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~208_q\);

\RAM_inst|memory~2218\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2218_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~208_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~200_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~192_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~184_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2218_combout\);

\RAM_inst|memory~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2252_combout\,
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
	ena => \RAM_inst|memory~2284_combout\,
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
	ena => \RAM_inst|memory~2316_combout\,
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
	ena => \RAM_inst|memory~2342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~240_q\);

\RAM_inst|memory~2219\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2219_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~240_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~232_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~224_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~216_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2219_combout\);

\RAM_inst|memory~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2260_combout\,
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
	ena => \RAM_inst|memory~2292_combout\,
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
	ena => \RAM_inst|memory~2324_combout\,
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
	ena => \RAM_inst|memory~2344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~272_q\);

\RAM_inst|memory~2220\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2220_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~272_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~264_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~256_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~248_q\ ) ) )

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
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2220_combout\);

\RAM_inst|memory~2221\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2221_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2220_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2219_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2218_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2217_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2217_combout\,
	datab => \RAM_inst|ALT_INV_memory~2218_combout\,
	datac => \RAM_inst|ALT_INV_memory~2219_combout\,
	datad => \RAM_inst|ALT_INV_memory~2220_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2221_combout\);

\RAM_inst|memory~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~280_q\);

\RAM_inst|memory~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~312_q\);

\RAM_inst|memory~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~344_q\);

\RAM_inst|memory~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~376_q\);

\RAM_inst|memory~2222\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2222_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~376_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~344_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~312_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~280_q\,
	datab => \RAM_inst|ALT_INV_memory~312_q\,
	datac => \RAM_inst|ALT_INV_memory~344_q\,
	datad => \RAM_inst|ALT_INV_memory~376_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2222_combout\);

\RAM_inst|memory~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~288_q\);

\RAM_inst|memory~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~320_q\);

\RAM_inst|memory~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~352_q\);

\RAM_inst|memory~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~384_q\);

\RAM_inst|memory~2223\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2223_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~384_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~352_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~320_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~288_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~288_q\,
	datab => \RAM_inst|ALT_INV_memory~320_q\,
	datac => \RAM_inst|ALT_INV_memory~352_q\,
	datad => \RAM_inst|ALT_INV_memory~384_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2223_combout\);

\RAM_inst|memory~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~296_q\);

\RAM_inst|memory~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~328_q\);

\RAM_inst|memory~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~360_q\);

\RAM_inst|memory~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~392_q\);

\RAM_inst|memory~2224\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2224_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~392_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~360_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~328_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~296_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~296_q\,
	datab => \RAM_inst|ALT_INV_memory~328_q\,
	datac => \RAM_inst|ALT_INV_memory~360_q\,
	datad => \RAM_inst|ALT_INV_memory~392_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2224_combout\);

\RAM_inst|memory~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~304_q\);

\RAM_inst|memory~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~336_q\);

\RAM_inst|memory~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~368_q\);

\RAM_inst|memory~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~400_q\);

\RAM_inst|memory~2225\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2225_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~400_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~368_q\ ) ) ) # ( \ram_addr[2]~3_combout\ & ( 
-- !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~336_q\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~304_q\,
	datab => \RAM_inst|ALT_INV_memory~336_q\,
	datac => \RAM_inst|ALT_INV_memory~368_q\,
	datad => \RAM_inst|ALT_INV_memory~400_q\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2225_combout\);

\RAM_inst|memory~2226\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2226_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2225_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2224_combout\ ) ) ) # ( \ram_addr[0]~5_combout\ & 
-- ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2223_combout\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~2222_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2222_combout\,
	datab => \RAM_inst|ALT_INV_memory~2223_combout\,
	datac => \RAM_inst|ALT_INV_memory~2224_combout\,
	datad => \RAM_inst|ALT_INV_memory~2225_combout\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2226_combout\);

\RAM_inst|memory~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~408_q\);

\RAM_inst|memory~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~416_q\);

\RAM_inst|memory~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~424_q\);

\RAM_inst|memory~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~432_q\);

\RAM_inst|memory~2227\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2227_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~432_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~424_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~416_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~408_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~408_q\,
	datab => \RAM_inst|ALT_INV_memory~416_q\,
	datac => \RAM_inst|ALT_INV_memory~424_q\,
	datad => \RAM_inst|ALT_INV_memory~432_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2227_combout\);

\RAM_inst|memory~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~440_q\);

\RAM_inst|memory~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~448_q\);

\RAM_inst|memory~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~456_q\);

\RAM_inst|memory~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~464_q\);

\RAM_inst|memory~2228\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2228_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~464_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~456_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~448_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~440_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~440_q\,
	datab => \RAM_inst|ALT_INV_memory~448_q\,
	datac => \RAM_inst|ALT_INV_memory~456_q\,
	datad => \RAM_inst|ALT_INV_memory~464_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2228_combout\);

\RAM_inst|memory~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~472_q\);

\RAM_inst|memory~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~480_q\);

\RAM_inst|memory~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~488_q\);

\RAM_inst|memory~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~496_q\);

\RAM_inst|memory~2229\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2229_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~496_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~488_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~480_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~472_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~472_q\,
	datab => \RAM_inst|ALT_INV_memory~480_q\,
	datac => \RAM_inst|ALT_INV_memory~488_q\,
	datad => \RAM_inst|ALT_INV_memory~496_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2229_combout\);

\RAM_inst|memory~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~504_q\);

\RAM_inst|memory~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~512_q\);

\RAM_inst|memory~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~520_q\);

\RAM_inst|memory~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RegBank_inst|Mux0~0_combout\,
	ena => \RAM_inst|memory~2360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|memory~528_q\);

\RAM_inst|memory~2230\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2230_combout\ = ( \ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~528_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( \ram_addr[1]~4_combout\ & ( \RAM_inst|memory~520_q\ ) ) ) # ( \ram_addr[0]~5_combout\ & ( 
-- !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~512_q\ ) ) ) # ( !\ram_addr[0]~5_combout\ & ( !\ram_addr[1]~4_combout\ & ( \RAM_inst|memory~504_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~504_q\,
	datab => \RAM_inst|ALT_INV_memory~512_q\,
	datac => \RAM_inst|ALT_INV_memory~520_q\,
	datad => \RAM_inst|ALT_INV_memory~528_q\,
	datae => \ALT_INV_ram_addr[0]~5_combout\,
	dataf => \ALT_INV_ram_addr[1]~4_combout\,
	combout => \RAM_inst|memory~2230_combout\);

\RAM_inst|memory~2231\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2231_combout\ = ( \ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2230_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( \ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2229_combout\ ) ) ) # ( \ram_addr[2]~3_combout\ & 
-- ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2228_combout\ ) ) ) # ( !\ram_addr[2]~3_combout\ & ( !\ram_addr[3]~2_combout\ & ( \RAM_inst|memory~2227_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2227_combout\,
	datab => \RAM_inst|ALT_INV_memory~2228_combout\,
	datac => \RAM_inst|ALT_INV_memory~2229_combout\,
	datad => \RAM_inst|ALT_INV_memory~2230_combout\,
	datae => \ALT_INV_ram_addr[2]~3_combout\,
	dataf => \ALT_INV_ram_addr[3]~2_combout\,
	combout => \RAM_inst|memory~2231_combout\);

\RAM_inst|memory~2232\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_inst|memory~2232_combout\ = ( \ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2231_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( \ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2226_combout\ ) ) ) # ( \ram_addr[4]~1_combout\ & 
-- ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2221_combout\ ) ) ) # ( !\ram_addr[4]~1_combout\ & ( !\ram_addr[5]~0_combout\ & ( \RAM_inst|memory~2216_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|ALT_INV_memory~2216_combout\,
	datab => \RAM_inst|ALT_INV_memory~2221_combout\,
	datac => \RAM_inst|ALT_INV_memory~2226_combout\,
	datad => \RAM_inst|ALT_INV_memory~2231_combout\,
	datae => \ALT_INV_ram_addr[4]~1_combout\,
	dataf => \ALT_INV_ram_addr[5]~0_combout\,
	combout => \RAM_inst|memory~2232_combout\);

\wdata[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \wdata[7]~8_combout\ = (!\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2232_combout\)) # (\ALU_inst|Mux0~0_combout\))) # (\MuxULA_inst|Mux8~0_combout\ & (((\wdata[0]~0_combout\ & \RAM_inst|memory~2232_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111001000100010111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_wdata[0]~0_combout\,
	datad => \RAM_inst|ALT_INV_memory~2232_combout\,
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
-- \RegBank_inst|Mux0~0_combout\ = ( \ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[2][7]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( \ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[3][7]~q\ ) ) ) # ( \ROM_inst|rom~6_combout\ & ( 
-- !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[0][7]~q\ ) ) ) # ( !\ROM_inst|rom~6_combout\ & ( !\ROM_inst|rom~8_combout\ & ( \RegBank_inst|regs[1][7]~q\ ) ) )

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
	datae => \ROM_inst|ALT_INV_rom~6_combout\,
	dataf => \ROM_inst|ALT_INV_rom~8_combout\,
	combout => \RegBank_inst|Mux0~0_combout\);

\ALU_inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~29_sumout\ = SUM(( (\RegBank_inst|Mux0~0_combout\ & ((\MuxULA_inst|Mux6~2_combout\) # (\PC_inst|pc_reg\(7)))) ) + ( (!\MuxULA_inst|Mux8~2_combout\) # (!\MuxULA_inst|Mux8~3_combout\) ) + ( \ALU_inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(7),
	datab => \RegBank_inst|ALT_INV_Mux0~0_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datad => \MuxULA_inst|ALT_INV_Mux6~2_combout\,
	dataf => \MuxULA_inst|ALT_INV_Mux8~3_combout\,
	cin => \ALU_inst|Add1~26\,
	sumout => \ALU_inst|Add1~29_sumout\);

\PC_inst|pc_v~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~0_combout\ = ( \ALU_inst|Add1~29_sumout\ & ( \ALU_inst|Add0~29_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & \ALU_inst|Mux5~1_combout\) ) ) ) # ( !\ALU_inst|Add1~29_sumout\ & ( \ALU_inst|Add0~29_sumout\ & ( (\ALU_inst|Mux5~1_combout\ & 
-- ((!\ALU_inst|Mux5~0_combout\) # (!\ALU_inst|Add1~25_sumout\))) ) ) ) # ( \ALU_inst|Add1~29_sumout\ & ( !\ALU_inst|Add0~29_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Add0~25_sumout\) # (\ALU_inst|Mux5~1_combout\))) ) ) ) # ( 
-- !\ALU_inst|Add1~29_sumout\ & ( !\ALU_inst|Add0~29_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & (((!\ALU_inst|Add0~25_sumout\)) # (\ALU_inst|Mux5~1_combout\))) # (\ALU_inst|Mux5~0_combout\ & (!\ALU_inst|Add1~25_sumout\ & ((!\ALU_inst|Add0~25_sumout\) # 
-- (\ALU_inst|Mux5~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000110010101010100010001000110010001100100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~25_sumout\,
	datad => \ALU_inst|ALT_INV_Add0~25_sumout\,
	datae => \ALU_inst|ALT_INV_Add1~29_sumout\,
	dataf => \ALU_inst|ALT_INV_Add0~29_sumout\,
	combout => \PC_inst|pc_v~0_combout\);

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
-- \PC_inst|pc_v~13_combout\ = ( \PC_inst|Add0~29_sumout\ & ( (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # ((!\PC_inst|pc_v~7_combout\) # (!\PC_inst|pc_v~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100000000000000000001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \PC_inst|ALT_INV_pc_v~0_combout\,
	datac => \PC_inst|ALT_INV_pc_v~7_combout\,
	datad => \PC_inst|ALT_INV_pc_v~8_combout\,
	datae => \PC_inst|ALT_INV_Add0~29_sumout\,
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

\ALU_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux2~0_combout\ = ( \ALU_inst|Add0~21_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((\MuxULA_inst|Mux10~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~21_sumout\)))) ) ) # ( 
-- !\ALU_inst|Add0~21_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & ((\MuxULA_inst|Mux10~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \ALU_inst|ALT_INV_Add1~21_sumout\,
	datad => \MuxULA_inst|ALT_INV_Mux10~1_combout\,
	datae => \ALU_inst|ALT_INV_Add0~21_sumout\,
	combout => \ALU_inst|Mux2~0_combout\);

\PC_inst|pc_v~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~11_combout\ = ( \PC_inst|pc_v~8_combout\ & ( \PC_inst|Add0~21_sumout\ & ( ((!\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # (\ALU_inst|Mux6~0_combout\)))) # (\ALU_inst|Mux2~0_combout\) ) ) ) # ( !\PC_inst|pc_v~8_combout\ & ( 
-- \PC_inst|Add0~21_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux2~0_combout\) ) ) ) # ( \PC_inst|pc_v~8_combout\ & ( !\PC_inst|Add0~21_sumout\ & ( (\ALU_inst|Mux2~0_combout\ & \Equal0~1_combout\) ) ) ) # ( !\PC_inst|pc_v~8_combout\ & ( 
-- !\PC_inst|Add0~21_sumout\ & ( (\ALU_inst|Mux2~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux2~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \PC_inst|ALT_INV_pc_v~0_combout\,
	datae => \PC_inst|ALT_INV_pc_v~8_combout\,
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

\ROM_inst|rom~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~12_combout\ = (!\PC_inst|pc_reg\(5) & (!\PC_inst|pc_reg\(6) & !\PC_inst|pc_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(5),
	datab => \PC_inst|ALT_INV_pc_reg\(6),
	datac => \PC_inst|ALT_INV_pc_reg\(7),
	combout => \ROM_inst|rom~12_combout\);

\MuxULA_inst|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux8~1_combout\ = ( !\ROM_inst|rom~11_combout\ & ( !\ROM_inst|rom~13_combout\ & ( (!\PC_inst|pc_reg\(4) & (\ROM_inst|rom~12_combout\ & (!\ROM_inst|rom~1_combout\ & \ROM_inst|rom~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(4),
	datab => \ROM_inst|ALT_INV_rom~12_combout\,
	datac => \ROM_inst|ALT_INV_rom~1_combout\,
	datad => \ROM_inst|ALT_INV_rom~3_combout\,
	datae => \ROM_inst|ALT_INV_rom~11_combout\,
	dataf => \ROM_inst|ALT_INV_rom~13_combout\,
	combout => \MuxULA_inst|Mux8~1_combout\);

\MuxULA_inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~0_combout\ = ( \RegBank_inst|regs[3][2]~q\ & ( ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][2]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][2]~q\))) # (\raddr2[1]~0_combout\) ) ) # ( !\RegBank_inst|regs[3][2]~q\ & ( 
-- (!\raddr2[1]~0_combout\ & ((!\raddr2[0]~1_combout\ & ((\RegBank_inst|regs[0][2]~q\))) # (\raddr2[0]~1_combout\ & (\RegBank_inst|regs[1][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raddr2[1]~0_combout\,
	datab => \ALT_INV_raddr2[0]~1_combout\,
	datac => \RegBank_inst|ALT_INV_regs[1][2]~q\,
	datad => \RegBank_inst|ALT_INV_regs[0][2]~q\,
	datae => \RegBank_inst|ALT_INV_regs[3][2]~q\,
	combout => \MuxULA_inst|Mux13~0_combout\);

\MuxULA_inst|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxULA_inst|Mux13~1_combout\ = ( \MuxULA_inst|Mux13~0_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (\ROM_inst|rom~4_combout\)) # (\MuxULA_inst|Mux8~2_combout\ & (((!\MuxULA_inst|Mux8~1_combout\) # (\RegBank_inst|regs[2][2]~q\)))) ) ) # ( 
-- !\MuxULA_inst|Mux13~0_combout\ & ( (!\MuxULA_inst|Mux8~2_combout\ & (\ROM_inst|rom~4_combout\)) # (\MuxULA_inst|Mux8~2_combout\ & (((\MuxULA_inst|Mux8~1_combout\ & \RegBank_inst|regs[2][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~4_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux8~2_combout\,
	datad => \RegBank_inst|ALT_INV_regs[2][2]~q\,
	datae => \MuxULA_inst|ALT_INV_Mux13~0_combout\,
	combout => \MuxULA_inst|Mux13~1_combout\);

\ALU_inst|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux5~2_combout\ = ( \ALU_inst|Add0~9_sumout\ & ( (!\ALU_inst|Mux5~0_combout\ & ((!\ALU_inst|Mux5~1_combout\) # ((\MuxULA_inst|Mux13~1_combout\)))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~9_sumout\)))) ) ) # ( !\ALU_inst|Add0~9_sumout\ & 
-- ( (!\ALU_inst|Mux5~0_combout\ & (\ALU_inst|Mux5~1_combout\ & (\MuxULA_inst|Mux13~1_combout\))) # (\ALU_inst|Mux5~0_combout\ & (((\ALU_inst|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111100010101101111100000010010101111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux5~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~1_combout\,
	datac => \MuxULA_inst|ALT_INV_Mux13~1_combout\,
	datad => \ALU_inst|ALT_INV_Add1~9_sumout\,
	datae => \ALU_inst|ALT_INV_Add0~9_sumout\,
	combout => \ALU_inst|Mux5~2_combout\);

\PC_inst|pc_v~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~3_combout\ = ( !\ALU_inst|Mux5~2_combout\ & ( \PC_inst|pc_v~2_combout\ & ( (!\ALU_inst|Mux4~0_combout\ & (!\ALU_inst|Mux3~0_combout\ & (!\ALU_inst|Mux2~0_combout\ & !\ALU_inst|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datab => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datac => \ALU_inst|ALT_INV_Mux2~0_combout\,
	datad => \ALU_inst|ALT_INV_Mux6~0_combout\,
	datae => \ALU_inst|ALT_INV_Mux5~2_combout\,
	dataf => \PC_inst|ALT_INV_pc_v~2_combout\,
	combout => \PC_inst|pc_v~3_combout\);

\PC_inst|pc_v~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~6_combout\ = ( \PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~9_sumout\ & ( (!\Equal0~1_combout\ & (((!\PC_inst|pc_v~0_combout\)) # (\ROM_inst|rom~4_combout\))) # (\Equal0~1_combout\ & (((\ALU_inst|Mux5~2_combout\)))) ) ) ) # ( 
-- !\PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~9_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux5~2_combout\) ) ) ) # ( \PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~9_sumout\ & ( (!\Equal0~1_combout\ & (\ROM_inst|rom~4_combout\ & 
-- ((\PC_inst|pc_v~0_combout\)))) # (\Equal0~1_combout\ & (((\ALU_inst|Mux5~2_combout\)))) ) ) ) # ( !\PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~9_sumout\ & ( (\ALU_inst|Mux5~2_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110101001111110011111100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~4_combout\,
	datab => \ALU_inst|ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \PC_inst|ALT_INV_pc_v~0_combout\,
	datae => \PC_inst|ALT_INV_pc_v~3_combout\,
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

\ROM_inst|rom~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~1_combout\ = (!\PC_inst|pc_reg\(1) & (!\PC_inst|pc_reg\(2) $ (((!\PC_inst|pc_reg\(0) & !\PC_inst|pc_reg\(3)))))) # (\PC_inst|pc_reg\(1) & (((!\PC_inst|pc_reg\(2) & !\PC_inst|pc_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011000000011110001100000001111000110000000111100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~1_combout\);

\ROM_inst|rom~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~2_combout\ = (\ROM_inst|rom~0_combout\ & \ROM_inst|rom~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~1_combout\,
	combout => \ROM_inst|rom~2_combout\);

\PC_inst|pc_v~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~5_combout\ = ( \PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~5_sumout\ & ( (!\Equal0~1_combout\ & (((!\PC_inst|pc_v~0_combout\)) # (\ROM_inst|rom~2_combout\))) # (\Equal0~1_combout\ & (((\ALU_inst|Mux6~0_combout\)))) ) ) ) # ( 
-- !\PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~5_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux6~0_combout\) ) ) ) # ( \PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~5_sumout\ & ( (!\Equal0~1_combout\ & (\ROM_inst|rom~2_combout\ & 
-- ((\PC_inst|pc_v~0_combout\)))) # (\Equal0~1_combout\ & (((\ALU_inst|Mux6~0_combout\)))) ) ) ) # ( !\PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~5_sumout\ & ( (\ALU_inst|Mux6~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110101001111110011111100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~2_combout\,
	datab => \ALU_inst|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \PC_inst|ALT_INV_pc_v~0_combout\,
	datae => \PC_inst|ALT_INV_pc_v~3_combout\,
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

\ROM_inst|rom~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~9_combout\ = (!\PC_inst|pc_reg\(3) & ((!\PC_inst|pc_reg\(0) & ((!\PC_inst|pc_reg\(2)))) # (\PC_inst|pc_reg\(0) & (!\PC_inst|pc_reg\(1))))) # (\PC_inst|pc_reg\(3) & (((!\PC_inst|pc_reg\(1) & !\PC_inst|pc_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011000000111001001100000011100100110000001110010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(0),
	datab => \PC_inst|ALT_INV_pc_reg\(1),
	datac => \PC_inst|ALT_INV_pc_reg\(2),
	datad => \PC_inst|ALT_INV_pc_reg\(3),
	combout => \ROM_inst|rom~9_combout\);

\ALU_inst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux5~1_combout\ = (\ROM_inst|rom~0_combout\ & ((\ROM_inst|rom~11_combout\) # (\ROM_inst|rom~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	datac => \ROM_inst|ALT_INV_rom~11_combout\,
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

\PC_inst|pc_v~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~10_combout\ = ( \PC_inst|pc_v~8_combout\ & ( \PC_inst|Add0~17_sumout\ & ( (!\ALU_inst|Mux3~0_combout\ & (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # (!\PC_inst|pc_v~7_combout\)))) # (\ALU_inst|Mux3~0_combout\ & 
-- (((!\PC_inst|pc_v~0_combout\) # (!\PC_inst|pc_v~7_combout\)))) ) ) ) # ( !\PC_inst|pc_v~8_combout\ & ( \PC_inst|Add0~17_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux3~0_combout\) ) ) ) # ( \PC_inst|pc_v~8_combout\ & ( !\PC_inst|Add0~17_sumout\ & ( 
-- (\ALU_inst|Mux3~0_combout\ & (\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # (!\PC_inst|pc_v~7_combout\)))) ) ) ) # ( !\PC_inst|pc_v~8_combout\ & ( !\PC_inst|Add0~17_sumout\ & ( (\ALU_inst|Mux3~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000011011101110111011101110111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_pc_v~0_combout\,
	datad => \PC_inst|ALT_INV_pc_v~7_combout\,
	datae => \PC_inst|ALT_INV_pc_v~8_combout\,
	dataf => \PC_inst|ALT_INV_Add0~17_sumout\,
	combout => \PC_inst|pc_v~10_combout\);

\PC_inst|pc_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(4));

\ROM_inst|rom~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~0_combout\ = (!\PC_inst|pc_reg\(4) & (!\PC_inst|pc_reg\(5) & (!\PC_inst|pc_reg\(6) & !\PC_inst|pc_reg\(7))))

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
	combout => \ROM_inst|rom~0_combout\);

\ROM_inst|rom~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~10_combout\ = (!\ROM_inst|rom~0_combout\) # (!\ROM_inst|rom~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~0_combout\,
	datab => \ROM_inst|ALT_INV_rom~9_combout\,
	combout => \ROM_inst|rom~10_combout\);

\ALU_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_inst|Mux5~0_combout\ = (!\ROM_inst|rom~10_combout\ & (!\MuxULA_inst|Mux8~0_combout\ & !\ROM_inst|rom~14_combout\)) # (\ROM_inst|rom~10_combout\ & (\MuxULA_inst|Mux8~0_combout\ & \ROM_inst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000110000001100000011000000110000001100000011000000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~10_combout\,
	datab => \MuxULA_inst|ALT_INV_Mux8~0_combout\,
	datac => \ROM_inst|ALT_INV_rom~14_combout\,
	combout => \ALU_inst|Mux5~0_combout\);

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

\PC_inst|pc_v~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~9_combout\ = ( \PC_inst|pc_v~8_combout\ & ( \PC_inst|Add0~13_sumout\ & ( (!\ALU_inst|Mux4~0_combout\ & (!\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # (!\PC_inst|pc_v~7_combout\)))) # (\ALU_inst|Mux4~0_combout\ & 
-- (((!\PC_inst|pc_v~0_combout\) # (!\PC_inst|pc_v~7_combout\)))) ) ) ) # ( !\PC_inst|pc_v~8_combout\ & ( \PC_inst|Add0~13_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux4~0_combout\) ) ) ) # ( \PC_inst|pc_v~8_combout\ & ( !\PC_inst|Add0~13_sumout\ & ( 
-- (\ALU_inst|Mux4~0_combout\ & (\Equal0~1_combout\ & ((!\PC_inst|pc_v~0_combout\) # (!\PC_inst|pc_v~7_combout\)))) ) ) ) # ( !\PC_inst|pc_v~8_combout\ & ( !\PC_inst|Add0~13_sumout\ & ( (\ALU_inst|Mux4~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000011011101110111011101110111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \PC_inst|ALT_INV_pc_v~0_combout\,
	datad => \PC_inst|ALT_INV_pc_v~7_combout\,
	datae => \PC_inst|ALT_INV_pc_v~8_combout\,
	dataf => \PC_inst|ALT_INV_Add0~13_sumout\,
	combout => \PC_inst|pc_v~9_combout\);

\PC_inst|pc_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_inst|pc_v~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|pc_reg\(3));

\ROM_inst|rom~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_inst|rom~15_combout\ = ( \ROM_inst|rom~0_combout\ & ( (!\PC_inst|pc_reg\(1) & (((!\PC_inst|pc_reg\(3) & \PC_inst|pc_reg\(0))) # (\PC_inst|pc_reg\(2)))) # (\PC_inst|pc_reg\(1) & (((\PC_inst|pc_reg\(2) & \PC_inst|pc_reg\(0))) # (\PC_inst|pc_reg\(3)))) 
-- ) ) # ( !\ROM_inst|rom~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001101011011011111111111111111110011010110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|ALT_INV_pc_reg\(3),
	datab => \PC_inst|ALT_INV_pc_reg\(2),
	datac => \PC_inst|ALT_INV_pc_reg\(1),
	datad => \PC_inst|ALT_INV_pc_reg\(0),
	datae => \ROM_inst|ALT_INV_rom~0_combout\,
	combout => \ROM_inst|rom~15_combout\);

\PC_inst|pc_v~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_inst|pc_v~4_combout\ = ( \PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~1_sumout\ & ( (!\Equal0~1_combout\ & ((!\ROM_inst|rom~15_combout\) # ((!\PC_inst|pc_v~0_combout\)))) # (\Equal0~1_combout\ & (((\ALU_inst|Mux7~0_combout\)))) ) ) ) # ( 
-- !\PC_inst|pc_v~3_combout\ & ( \PC_inst|Add0~1_sumout\ & ( (!\Equal0~1_combout\) # (\ALU_inst|Mux7~0_combout\) ) ) ) # ( \PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~1_sumout\ & ( (!\Equal0~1_combout\ & (!\ROM_inst|rom~15_combout\ & 
-- ((\PC_inst|pc_v~0_combout\)))) # (\Equal0~1_combout\ & (((\ALU_inst|Mux7~0_combout\)))) ) ) ) # ( !\PC_inst|pc_v~3_combout\ & ( !\PC_inst|Add0~1_sumout\ & ( (\ALU_inst|Mux7~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111010001111110011111100111111001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_inst|ALT_INV_rom~15_combout\,
	datab => \ALU_inst|ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \PC_inst|ALT_INV_pc_v~0_combout\,
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


