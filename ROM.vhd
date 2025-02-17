library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM is
    Port (
        addr  : in  STD_LOGIC_VECTOR(7 downto 0);
        instr : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ROM;

architecture Behavioral of ROM is
    type rom_array is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
    signal rom : rom_array := (
        0  => "10101101",  -- li R1 101 (5)
        1  => "10110011",  -- li R2 011 (3)
        2  => "01101011",  -- sw R1 011 (3)
        3  => "01000011",  -- lw R0 011 (3)
        4  => "00001100",  -- add R1 R2
        5  => "00101100",  -- sub R1 R2
        6  => "10001100",  -- addi R1 100 (4)
        7  => "11011010",  -- beq R3 010 (2)
        8  => "00000000",  -- nop
        9  => "00000000",  -- nop
        10 => "11100101",  -- j 00101 (5)

        -- Fibonacci:
        -- 0  => "10100001",  -- li R0, 001 (1)
        -- 1  => "10101001",  -- li R1, 001 (1)
        -- 2  => "10110000",  -- li R2, 000 (0)
        -- 3  => "10111101",  -- li R3, 101 (5)   (contador)
        -- 4  => "01101000",  -- sw R1, 000       (armazena R1 na memória, endereço 0)
        -- 5  => "00001100",  -- add R1, R1, R2    (R1 = R1 + R2)
        -- 6  => "01010000",  -- lw R2, 000       (carrega o antigo R1 para R2)
        -- 7  => "00111000",  -- sub R3, R3, R0    (R3 = R3 - 1)
        -- 8  => "11011001",  -- beq R3, 001      (se R3 == 0, desvia com offset 1)
        -- 9  => "11100100",  -- j 00100          (salta para 4, reinicia o loop)
        -- 10 => "00000000",  -- nop              (fim do loop)
        others => "00000000"
    );
begin
    instr <= rom(conv_integer(addr));
end Behavioral;
