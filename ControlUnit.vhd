library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
    Port (
        opcode_3b : in  STD_LOGIC_VECTOR(2 downto 0);
        we_reg    : out STD_LOGIC;
        we_mem    : out STD_LOGIC;
        branch    : out STD_LOGIC;
        jump      : out STD_LOGIC;
        alu_op    : out STD_LOGIC_VECTOR(2 downto 0)
    );
end ControlUnit;

architecture Behavioral of ControlUnit is
begin
    process(opcode_3b)
    begin
        we_reg <= '0';
        we_mem <= '0';
        branch <= '0';
        jump   <= '0';
        alu_op <= opcode_3b;
        
        case opcode_3b is
            when "000" => -- ADD
                we_reg <= '1';
            when "001" => -- SUB
                we_reg <= '1';
            when "010" => -- LW
                we_reg <= '1';
            when "011" => -- SW
                we_mem <= '1';
            when "100" => -- ADDI
                we_reg <= '1';
            when "101" => -- LI
                we_reg <= '1';
            when "110" => -- BEQ
                branch <= '1';
            when "111" => -- JUMP
                jump <= '1';
            when others =>
                null;
        end case;
    end process;
end Behavioral;
