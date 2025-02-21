-- UNIDADE LÓGICA E ARITMÉTICA
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ULA is
    Port (
        op     : in  STD_LOGIC_VECTOR(2 downto 0);
        a, b   : in  STD_LOGIC_VECTOR(7 downto 0);
        result : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ULA;

architecture Behavioral of ULA is
begin
    process(op, a, b)
    begin
        case op is
            when "000" =>  -- ADD
                result <= a + b;
            when "001" =>  -- SUB
                result <= a - b;
            when "010" =>  -- LW: passa somente o imediato (destinado a formar o endereço)
                result <= b;
            when "011" =>  -- SW: idem LW
                result <= b;
            when "100" =>  -- ADDI
                result <= a + b;
            when "101" =>  -- LI
                result <= b;
            when "110" =>  -- BEQ: realiza subtração (Rdest - R0)
                result <= a - b;
            when "111" =>  -- JUMP
                result <= b;
            when others =>
                result <= (others => '0');
        end case;
    end process;
end Behavioral;
