library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegisterBank is
    Port (
        clk      : in  STD_LOGIC;
        we       : in  STD_LOGIC;
        raddr1   : in  STD_LOGIC_VECTOR(1 downto 0);
        raddr2   : in  STD_LOGIC_VECTOR(1 downto 0);
        waddr    : in  STD_LOGIC_VECTOR(1 downto 0);
        wdata    : in  STD_LOGIC_VECTOR(7 downto 0);
        rdata1   : out STD_LOGIC_VECTOR(7 downto 0);
        rdata2   : out STD_LOGIC_VECTOR(7 downto 0);
        r0_out   : out STD_LOGIC_VECTOR(7 downto 0);
        r1_out   : out STD_LOGIC_VECTOR(7 downto 0);
        r2_out   : out STD_LOGIC_VECTOR(7 downto 0);
        r3_out   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end RegisterBank;

architecture Behavioral of RegisterBank is
    type reg_array is array (0 to 3) of STD_LOGIC_VECTOR(7 downto 0);
    signal regs : reg_array := (
        0 => (others => '0'),
        1 => (others => '0'),
        2 => (others => '0'),
        3 => (others => '0')
    );
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                regs(conv_integer(waddr)) <= wdata;
            end if;
        end if;
    end process;
    
    rdata1 <= regs(conv_integer(raddr1));
    rdata2 <= regs(conv_integer(raddr2));
    
    r0_out <= regs(0);
    r1_out <= regs(1);
    r2_out <= regs(2);
    r3_out <= regs(3);
end Behavioral;
