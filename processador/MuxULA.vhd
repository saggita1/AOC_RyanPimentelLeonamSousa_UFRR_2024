library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MuxULA is
    Port (
        opcode    : in  STD_LOGIC_VECTOR(2 downto 0);
        reg_data1 : in  STD_LOGIC_VECTOR(7 downto 0);
        reg_data2 : in  STD_LOGIC_VECTOR(7 downto 0);
        imm       : in  STD_LOGIC_VECTOR(2 downto 0);
        jump5     : in  STD_LOGIC_VECTOR(4 downto 0);
        alu_a     : out STD_LOGIC_VECTOR(7 downto 0);
        alu_b     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end MuxULA;

architecture Behavioral of MuxULA is
    signal imm_8  : STD_LOGIC_VECTOR(7 downto 0);
    signal jump_8 : STD_LOGIC_VECTOR(7 downto 0);
    constant zero_8 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
    imm_8  <= "00000" & imm;   -- Converte 3 bits em 8 bits
    jump_8 <= "000"   & jump5;  -- Converte 5 bits em 8 bits

    process(opcode, reg_data1, reg_data2, imm_8, jump_8)
    begin
        case opcode is
            when "000" | "001" => -- R-type: ADD ou SUB
                alu_a <= reg_data1;
                alu_b <= reg_data2;
            when "010" | "011" => -- LW ou SW: usa somente o imediato
                alu_a <= zero_8;
                alu_b <= imm_8;
            when "100" => -- ADDI
                alu_a <= reg_data1;
                alu_b <= imm_8;
            when "101" => -- LI
                alu_a <= zero_8;
                alu_b <= imm_8;
            when "110" => -- BEQ
                alu_a <= reg_data1;
                alu_b <= zero_8;
            when "111" => -- JUMP
                alu_a <= zero_8;
                alu_b <= jump_8;
            when others =>
                alu_a <= zero_8;
                alu_b <= zero_8;
        end case;
    end process;
end Behavioral;
