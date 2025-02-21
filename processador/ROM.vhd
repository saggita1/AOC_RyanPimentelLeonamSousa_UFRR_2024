-- MEMÓRIA ROM
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
        -- Programa Principal
        -- 0) LI R1, 5      (R1 = 5)
        -- 1) LI R2, 2      (R2 = 2)
        -- 2) SW R2, 011    (Mem[3] = 2, valor não-zero)
        -- 3) LW R3, 011    (R3 = Mem[3] => 2)
        -- 4) ADD R1, R3    (R1 = 5 + 2 => 7)
        -- 5) SUB R1, R2    (R1 = 7 - 2 => 5, não negativo)
        -- 6) ADDI R2, 1    (R2 = 2 + 1 => 3)
        -- 7) BEQ R2, 000   (Se R2 == R0 => PC=0; caso contrário segue)
        -- 8) LI R0, 3      (R0 = 3)
        -- 9) JUMP 00111    (Salta para a instrução 7)
        -- 10) NOP

        0  => "10101101",  -- LI R1, 5    (opcode=101, rd=01, imm=101)
        1  => "10110010",  -- LI R2, 2    (opcode=101, rd=10, imm=010)
        2  => "01110011",  -- SW R2, 011  (opcode=011, rd=10, imm=011)
        3  => "01011011",  -- LW R3, 011  (opcode=010, rd=11, imm=011)
        4  => "00001110",  -- ADD R1, R3  (opcode=000, rd=01, rs=11)
        5  => "00101100",  -- SUB R1, R2  (opcode=001, rd=01, rs=10)
        6  => "10010001",  -- ADDI R2, 1  (opcode=100, rd=10, imm=001)
        7  => "11010000",  -- BEQ R2, 000 (opcode=110, rd=10, imm=000)
        8  => "10100011",  -- LI R0, 3    (opcode=101, rd=00, imm=011)
        9  => "11100111",  -- JUMP 00111  (opcode=111, jump addr=7)
        10 => "00000000",  -- NOP

        -- Programa Fibonacci (exemplo alternativo):
        -- Para usar o programa Fibonacci, comente as instruções acima e descomente as linhas a seguir:
        --
        -- 0  => "10100001",  -- LI: li R0, 001 (1)
        -- 1  => "10101001",  -- LI: li R1, 001 (1) ; primeiro termo
        -- 2  => "10110000",  -- LI: li R2, 000 (0)
        -- 3  => "10111101",  -- LI: li R3, 101 (5) ; contador
        -- 4  => "01101010",  -- SW: sw R1, 010 (armazena R1 em Mem[2])
        -- 5  => "00001100",  -- ADD: add R1, R1, R2 (R1=R1+R2)
        -- 6  => "01001010",  -- LW: lw R2, 010 (carrega o antigo R1)
        -- 7  => "00111000",  -- SUB: sub R3, R3, R0 (decrementa R3)
        -- 8  => "11011100",  -- BEQ: beq R3, 100 (se R3==R0, PC=4)
        -- 9  => "11100100",  -- JUMP: j 00100 (salta para 4)
        -- 10 => "00000000",  -- NOP
        --
        others => "00000000"
    );
begin
    instr <= rom(conv_integer(addr));
end Behavioral;
