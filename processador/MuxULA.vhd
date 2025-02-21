-- MULTIPLEXADOR
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
    constant zero_8 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
    process(opcode, reg_data1, reg_data2, imm, jump5)
        variable imm_8  : STD_LOGIC_VECTOR(7 downto 0);
        variable jump_8 : STD_LOGIC_VECTOR(7 downto 0);
    begin
        imm_8  := "00000" & imm;   -- Converte o imediato de 3 bits para 8 bits
        jump_8 := "000"   & jump5;  -- Converte o campo de salto de 5 bits para 8 bits
        case opcode is
            when "000" | "001" =>  -- R-type: ADD ou SUB
                alu_a <= reg_data1;
                alu_b <= reg_data2;
            when "010" =>  -- LW: utiliza o imediato para formar o endereço
                alu_a <= zero_8;
                alu_b <= imm_8;
            when "011" =>  -- SW: idem LW
                alu_a <= zero_8;
                alu_b <= imm_8;
            when "100" =>  -- ADDI: soma registrador com imediato
                alu_a <= reg_data1;
                alu_b <= imm_8;
            when "101" =>  -- LI: carrega imediato
                alu_a <= zero_8;
                alu_b <= imm_8;
            when "110" =>  -- BEQ: compara o registrador (Rdest) com R0 (conteúdo de reg_data2)
                alu_a <= reg_data1;
                alu_b <= reg_data2;
            when "111" =>  -- JUMP: utiliza o campo de salto
                alu_a <= zero_8;
                alu_b <= jump_8;
            when others =>
                alu_a <= zero_8;
                alu_b <= zero_8;
        end case;
    end process;
end Behavioral;
