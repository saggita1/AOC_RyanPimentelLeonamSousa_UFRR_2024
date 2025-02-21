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
        -- 0) LI R0, 001   -> R0 = 1  
        --    Formato I-type: Opcode "101", rd = "00", imm = "001"
        --0  => "10100001",  
        -- 1) LI R1, 001   -> R1 = 1 (primeiro termo de Fibonacci)
        --    (Opcode "101", rd = "01", imm = "001")
        --1  => "10101001",  
        -- 2) LI R2, 000   -> R2 = 0 (termo anterior)
        --    (Opcode "101", rd = "10", imm = "000")
        --2  => "10110000",  
        -- 3) LI R3, 101   -> R3 = 5 (contador)
        --    (Opcode "101", rd = "11", imm = "101")
        --3  => "10111101",  
        -- Loop Início:
        -- 4) SW R1, 010   -> Armazena R1 na memória em endereço 2
        --    (Opcode "011", rd = "01", imm = "010")
        --4  => "01101010",  
        -- 5) ADD R1, R1, R2 -> R1 = R1 + R2 (novo termo de Fibonacci)
        --    (Opcode "000", rd = "01", rs = "10", bit0 = 0)
        --5  => "00001100",  
        -- 6) LW R2, 010   -> R2 = Mem[2] (carrega o antigo R1 para atualizar o termo anterior)
        --    (Opcode "010", rd = "10", imm = "010")
        --6  => "01010010",  
        -- 7) SUB R3, R3, R0 -> R3 = R3 - R0 (decrementa o contador; R0 contém 1)
        --    (Opcode "001", rd = "11", rs = "00", bit0 = 0)
        --7  => "00111000",  
        -- 8) BEQ R3, 000  -> Se R3 == 0, PC = imediato (mas com o contador oscilando, essa condição nunca é satisfeita)
        --    (Opcode "110", rd = "11", imm = "000")
        --8  => "11011000",  
        -- 9) ADDI R3, 1   -> R3 = R3 + 1 (restaura o contador para evitar que se torne 0)
        --    (Opcode "100", rd = "11", imm = "001")
        --9  => "10011001",  
        -- 10) JUMP 00100 -> Salta para a instrução 4 (início do loop)
        --    (Opcode "111", endereço = "00100" em binário = 4 decimal)
        --10 => "11100100",  
        -- 11) NOP         -> Instrução sem operação (pode ser ignorada)
        --11 => "00000000",
        -----------------------------------------------------------

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
