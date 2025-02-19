library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
    Port (
        clk  : in  STD_LOGIC;
        addr : in  STD_LOGIC_VECTOR(7 downto 0);
        we   : in  STD_LOGIC;
        din  : in  STD_LOGIC_VECTOR(7 downto 0);
        dout : out STD_LOGIC_VECTOR(7 downto 0)
    );
end RAM;

architecture Behavioral of RAM is
    type ram_array is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
    signal memory : ram_array := (others => (others => '0'));
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                memory(conv_integer(addr)) <= din;
            end if;
        end if;
    end process;
    
    dout <= memory(conv_integer(addr));
end Behavioral;
