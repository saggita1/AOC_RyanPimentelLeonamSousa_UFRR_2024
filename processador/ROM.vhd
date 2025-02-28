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
        -- Programa Fibonacci:
        -- 0  => "10101001",  -- LI: li R1, 001   ; R1 = 1 (primeiro termo)
        -- 1  => "10110000",  -- LI: li R2, 000   ; R2 = 0 (termo anterior)
        -- 2  => "01101010",  -- SW: sw R1, 010   ; Armazena R1 em memória, endereço = 2
        -- 3  => "00001100",  -- ADD: add R1, R1, R2; R1 = R1 + R2 (novo termo)
        -- 4  => "01010010",  -- LW: lw R2, 010   ; R2 = antigo R1 (recupera valor de Mem[2])
        -- 5  => "11100010",  -- JUMP: j 00010    ; Salta para a instrução 2 (loop)
        -- 6  => "00000000",  -- NOP            ; (opcional, fim do loop)

        -- Programa Principal Original (para testes gerais) permanece como comentário abaixo:
        0  => "10101101",  -- LI R1, 5    (opcode=101, rd=01, imm=101)
        1  => "10110010",  -- LI R2, 2    (opcode=101, rd=10, imm=010)
        2  => "01110011",  -- SW R2, 011  (opcode=011, rd=10, imm=011)
        3  => "01011011",  -- LW R3, 011  (opcode=010, rd=11, imm=011)
        4  => "00001110",  -- ADD R1, R3  (opcode=000, rd=01, rs=11)
        5  => "00101100",  -- SUB R1, R2  (opcode=001, rd=01, rs=10)
        6  => "10010001",  -- ADDI R2, 1  (opcode=100, rd=10, imm=001)
        -- instrução BEQ compara R2 com R0, na primeira vez vai ser falso, na segunda verdadeiro(3 == 3)
        7  => "11010000",  -- BEQ R2, 000 (opcode=110, rd=10, imm=000)
        8  => "10100011",  -- LI R0, 3    (opcode=101, rd=00, imm=011)
        9  => "11100111",  -- JUMP 00111  (opcode=111, jump addr=7)
        10 => "00000000",  -- NOP
        others => "00000000"
    );
begin
    instr <= rom(conv_integer(addr));
end Behavioral;
