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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/21/2025 12:00:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL instr_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r0_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r1_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r2_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r3_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ram_addr_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT CPU
	PORT (
	alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	instr_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r0_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r1_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r2_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r3_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ram_addr_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	alu_out => alu_out,
	clk => clk,
	instr_out => instr_out,
	pc_out => pc_out,
	r0_out => r0_out,
	r1_out => r1_out,
	r2_out => r2_out,
	r3_out => r3_out,
	ram_addr_out => ram_addr_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		clk <= '0';
		WAIT FOR 45000 ps;
		clk <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END CPU_arch;
