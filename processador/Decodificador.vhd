library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador is
    Port (
        instr   : in  STD_LOGIC_VECTOR(7 downto 0);
        opcode  : out STD_LOGIC_VECTOR(2 downto 0);
        rd      : out STD_LOGIC_VECTOR(1 downto 0);
        rs      : out STD_LOGIC_VECTOR(1 downto 0);
        imm     : out STD_LOGIC_VECTOR(2 downto 0);
        jump5   : out STD_LOGIC_VECTOR(4 downto 0)
    );
end Decodificador;

architecture Behavioral of Decodificador is
begin
    opcode <= instr(7 downto 5);
    rd     <= instr(4 downto 3);
    rs     <= instr(2 downto 1);
    imm    <= instr(2 downto 0);
    jump5  <= instr(4 downto 0);
end Behavioral;
